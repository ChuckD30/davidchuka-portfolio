class HireMeForm(forms.ModelForm):
    client_name = models.CharField(max_length=200) #client's name
    client_email = models.EmailField(max_length=200) #client's email
    client_description = models.TextField() #explain whatchu need in detail
