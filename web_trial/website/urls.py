from django.urls import path
from . import views
urlpatterns = [
    path('', views.home, name='home'),
    path('programs',views.programs, name = 'programs'), 
    path('news',views.news, name = 'news'),
    path('gallery',views.gallery, name = 'gallery'),
    path('about',views.about, name = 'about'),
    path('contact',views.contact, name = 'contact'),  
    path('single-news',views.single_news, name = 'single_news'),
    path('robofly',views.robofly, name = 'robofly'),
]