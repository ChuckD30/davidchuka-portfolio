from django import forms
# from .models import Contact

class ContactMeForm(forms.Form):
    name = forms.CharField(max_length=100,widget=forms.TextInput(attrs={'class':'nameclass', 'placeholder':'Your Name Here'}),label='')
    email = forms.EmailField(widget=forms.EmailInput(attrs={'class':'email', 'placeholder':'Your Email Address Here'}), label='')
    message = forms.CharField(widget=forms.Textarea(attrs={'class' : 'message', 'rows':10, 'placeholder':'Your Message'}), label='')
    
    
    # 
    # 
    # 
# class ContactMeForm(forms.ModelForm):
#     class Meta:
#         model = Contact
#         fields = ('name','email', 'message')
#         widgets = {
#         'name':forms.TextInput(attrs={'class':'name'}),
#         'email':forms.EmailInput(attrs={'class':'email'}),
#         'message':forms.Textarea(attrs={'class':'message'}),
#         }

