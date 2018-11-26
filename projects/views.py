from django.shortcuts import render
from django.views.generic import ListView
from .models import Projects, Testimonial


# class ProjectsListView(ListView):
#     model = Projects

#     def get_queryset(self):
#         return Projects.objects.all()

def projects_and_testimonials(request):
    projects = Projects.objects.all()
    testimonials = Testimonial.objects.all()
    return render(request, 'projects/projects_list.html', {'projects': projects, 'testimonials': testimonials, 'current_page':'projects'})
