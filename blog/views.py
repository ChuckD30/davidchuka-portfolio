from django.shortcuts import render, get_object_or_404
from .models import Post, Comment
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.http import HttpResponse
from django.views.generic import ListView
from .forms import EmailPostForm, CommentForm
from django.core.mail import send_mail 

# def home(request):

# def post_list(request):
#     # posts = Post.objects.all().order_by('created')
#     object_list = Post.published.all()
#     paginator = Paginator(object_list, 3)  # 3 posts in each page
#     page = request.GET.get('page')
#     try:
#         posts = paginator.page(page)
#     except PageNotAnInteger:
#         # If page is not an integer deliver the first page
#         posts = paginator.page(1)
#     except EmptyPage:
#         # If page is out of range deliver last page of results
#         posts = paginator.page(paginator.num_pages)
#     return render(request, 'blog/post/post_list.html', {'page': page, 'posts': posts})

class PostListView(ListView):
    queryset = Post.published.all()
    context_object_name = 'posts'
    paginate_by = 3
    template_name = 'blog/post/post_list.html'

def post_detail(request, slug):
    this_post = get_object_or_404(Post, slug=slug) #get post, pass in slug from the url
    comments = this_post.comments.filter(active=True) #comments from that post, useful for display on templates

    # import pdb; pdb.set_trace()
    if request.POST:
        com_form = CommentForm(request.POST) #instantiate com_form
        if com_form.is_valid(): #if valid
            new_comment = com_form.save(commit=False) #don't save just yet
            #assign the comment to the current post
            new_comment.post = this_post #make sure to assign the comment to the particular post
            new_comment.save() #save
            # cd = com_form.cleaned_data
    else:
        com_form = CommentForm()
    return render(request, 'blog/post/post_detail.html', {'this_post': this_post, 'comments':comments, 'comment_form':com_form})

def share_post(request, post_id):
    post = get_object_or_404(Post, id=post_id, status='published')
    sent = False
    if request.method == 'POST':
        form = EmailPostForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            post_url = request.build_absolute_url(post.get_absolute_url())
            subject = '{} ({}) recommends you reading "{}"'.format(cd['name'], cd['email'], post.title)
            message = 'Read "{}" at {}\n\n{}\'s comments: {}'.format(post.title, post_url, cd['name'], cd['comments'])
            send_mail(subject, message, 'davidnwadiogbu.com', [cd['to']])
            sent = True
    else:
        form = EmailPostForm()
    return render(request, 'blog/post/share_post.html', {'post':post, 'form':form, 'sent':sent})
