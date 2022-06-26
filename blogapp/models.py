from django.db import models

# Create your models here.
class Blog(models.Model):
    title = models.CharField(max_length = 200, default='영빈')
    pub_date = models.DateTimeField('data published')
    body = models.TextField()
    writer = models.CharField(max_length= 32, default='', verbose_name= '작성자' )
    today_mood = models.CharField(max_length= 32, default= '', verbose_name= '오늘의 기분' )

    def __str__(self):
        return self.title
