from django.shortcuts import render
from django.core.mail import send_mail


def home(request):
    return render(request, 'home.html', {})


def programs(request):
    return render(request, 'programs.html', {})


def news(request):
    return render(request, 'news.html', {})


def gallery(request):
    return render(request, 'gallery.html', {})


def about(request):
    return render(request, 'about.html', {})


def contact(request):
    if request.method == "POST":
        name = request.POST.get("name")
        email = request.POST.get("email")
        subject = request.POST.get("subject")
        message = request.POST.get("message")

        # send an email
        send_mail(
            subject,  # subject
            message,  # message
            email,  # sender email
            ['info@server914690.nazwa.pl'],
            fail_silently=False  # receiver
        )

        return render(request, 'contact.html', {'name': name, 'email': email, 'subject': subject, 'message': message})
    else:
        return render(request, "contact.html", {})


def single_news(request):
    return render(request, 'single-news.html', {})


def robofly(request):
    return render(request, 'robofly.html', {})
