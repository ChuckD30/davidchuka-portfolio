from django.shortcuts import render, get_object_or_404
from .models import Post
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from django.http import HttpResponse

# def home(request):

def post_list(request):
    posts = Post.objects.all().order_by('created')
    return render(request, 'blog/post/post_list.html', {'posts': posts})


    # object_list = Post.published.all()
    # paginator = Paginator(object_list, 3)  # 3 posts in each page
    # page = request.GET.get('page')
    # try:
    #     posts = paginator.page(page)

    # except PageNotAnInteger:
    #     # If page is not an integer deliver the first page
    #     posts = paginator.page(1)
    # except EmptyPage:
    #     # If page is out of range deliver last page of results
    #     posts = paginator.page(paginator.num_pages)
    # return render(request, 'blog/post/list.html', {'page': page, 'posts': posts})


def post_detail(request, slug):
    # post_detail = get_object_or_404(Post, slug=slug,
    #                                 status='published',
    #                                 publish__year=year,
    #                                 publish__month=month,
    #                                 publish__day=day)
    # try:
    #     question = Question.objects.get(pk=question_id)
    # except Question.DoesNotExist:
    #     raise Http404("Question does not exist")
    # this_post = Post.objects.get(slug=slug)
    this_post = get_object_or_404(Post, slug=slug)
    return render(request, 'blog/post/post_detail.html', {'this_post': this_post})
