from django.shortcuts import render

def about_me(request):
    return render(request, 'info/info.html')

# def share_post(request, post_id):
#     post = get_object_or_404(Post, id=post_id, status='published')
#     sent = False
#     if request.method == 'POST':
#         form = EmailPostForm(request.POST)
#         if form.is_valid():
#             cd = form.cleaned_data
#             post_url = request.build_absolute_url(post.get_absolute_url())
#             subject = '{} ({}) recommends you reading "{}"'.format(cd['name'], cd['email'], post.title)
#             message = 'Read "{}" at {}\n\n{}\'s comments: {}'.format(post.title, post_url, cd['name'], cd['comments'])
#             send_mail(subject, message, 'davidnwadiogbu.com', [cd['to']])
#             sent = True
#     else:
#         form = EmailPostForm()
#     return render(request, 'blog/post/share_post.html', {'post':post, 'form':form, 'sent':sent})
