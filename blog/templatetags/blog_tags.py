from django import template
from ..models import Post
from django.utils.safestring import mark_safe
import markdown

register = template.Library()

#quite simple isnt it
@register.simple_tag
def total_posts():
    return Post.published.count()

#inclusion tag returns a context variable
@register.inclusion_tag('blog/post/latest_posts.html')
def show_latest_posts(count=5):
    latest_posts = Post.published.order_by('-publish')[:count]
    return({'latest_posts': latest_posts})

@register.filter(name='markdown') #filter name
def markdown_format(text):
    return mark_safe(markdown.markdown(text))



#popular Posts
# @register.assignment_tag #deprecated
# def get_popular_posts(count=5):
#     popular_posts = Post.published.annotate(total_comments=Count('comments').order_by('-total_comments')[:count])
#     return popular_posts
