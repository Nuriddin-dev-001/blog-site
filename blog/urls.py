from django.urls import path
from . import views

app_name = 'blog'

urlpatterns = [
    # Post views
    path('', views.PostListView.as_view(), name='post_list'),
    path('<int:year>/<int:month>/<int:day>/<slug:post>/', 
         views.PostDetailView.as_view(), 
         name='post_detail'),
    path('post/new/', views.PostCreateView.as_view(), name='post_create'),
    path('post/<int:pk>/update/', views.PostUpdateView.as_view(), name='post_update'),
    path('post/<int:pk>/delete/', views.PostDeleteView.as_view(), name='post_delete'),
    path('<int:year>/<int:month>/<int:day>/<slug:post>/share/', 
         views.post_share, 
         name='post_share'),
]
