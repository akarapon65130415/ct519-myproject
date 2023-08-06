from django.urls import path
from myapp import views

urlpatterns = [
    path('', views.index),
    path('about/', views.about),
    path('form/', views.form),
    path('mybooks/', views.mybooks),  
    path('research/', views.research),
    path('edit/<int:person_id>/', views.edit),  
    path('delete/<int:person_id>/', views.delete),  
]
