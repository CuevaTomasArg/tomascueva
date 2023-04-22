from django import forms

class ContactsForm(forms.Form):
    email = forms.EmailField( max_length=254)
    name = forms.CharField(max_length=75)
    message = forms.Textarea()