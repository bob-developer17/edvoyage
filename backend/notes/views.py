from django.http import JsonResponse
from .models import VideoTopic

from django.views.decorators.csrf import csrf_exempt
import json

@csrf_exempt
def get_all_video_topics(request):
    topics = VideoTopic.objects.all().values()
    print(topics)
    return JsonResponse({'topics': list(topics)}, status=200)

@csrf_exempt
def get_video_contents_by_topic_post(request):
    if request.method == 'POST':
        try:
            body = json.loads(request.body)
            topic_id = body.get('topic_id')
            if topic_id is None:
                return JsonResponse({'error': 'topic_id not provided'}, status=400)
            topic = VideoTopic.objects.prefetch_related('videos').get(id=topic_id)
            contents = topic.videos.all().values(
                'id', 'title', 'sub', 'timer', 'status', 'video_url','videocontentpic'
            )
            print(contents)
            return JsonResponse({
                'contents': list(contents)
            }, status=200)
        except VideoTopic.DoesNotExist:
            return JsonResponse({'error': 'Topic not found'}, status=404)
        except json.JSONDecodeError:
            return JsonResponse({'error': 'Invalid JSON'}, status=400)
    return JsonResponse({'error': 'Only POST method allowed'}, status=405)
