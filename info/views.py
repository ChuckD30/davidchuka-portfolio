from django.shortcuts import render, HttpResponseRedirect
from django.core.mail import send_mail
from django.contrib import messages
# from django.http import 
from .forms import ContactMeForm

def about_me(request):
    sent = False
    if request.POST:
        form = ContactMeForm(request.POST)
        if form.is_valid():
            cd = form.cleaned_data
            subject = "Inquiry from {}".format(cd['name'])
            message = "Hi david chuka {}".format(cd['message'])
            sender = cd['email']
            send_mail(subject, message, sender, ('davidnwadiogbu@gmail.com',))
            sent = True
            messages.success(request, "Message Successfully sent!")
            return HttpResponseRedirect('/meetme/')
        else:
            messages.error(request, "Error sending message, please try again")
    else:
        form = ContactMeForm()
    return render(request, 'info/info.html', {'form':form, 'sent':sent})


# {% block content %}
# {% if sent %}
# <h1>E-mail successfully sent</h1>
# <p>
# "{{ post.title }}" was successfully sent to {{ form.cleaned_data.to }}.
# </p>
# {% else %}
# <h1>Share "{{ post.title }}" by e-mail</h1>