from django.shortcuts import render, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib.auth import get_user_model
from django.http import JsonResponse
from .models import ChatMessage

User = get_user_model()

@login_required
def chat_with_user(request, user_id):
    other_user = get_object_or_404(User, id=user_id)
    messages = ChatMessage.objects.filter(
        (models.Q(sender=request.user, receiver=other_user) |
         models.Q(sender=other_user, receiver=request.user))
    ).order_by('timestamp')

    # Mark messages as read
    messages.filter(receiver=request.user, is_read=False).update(is_read=True)

    return render(request, 'chat/chat_detail.html', {
        'other_user': other_user,
        'messages': messages,
    })


@login_required
def send_message(request):
    if request.method == 'POST':
        receiver_id = request.POST.get('receiver_id')
        message = request.POST.get('message')

        if receiver_id and message:
            receiver = get_object_or_404(User, id=receiver_id)
            ChatMessage.objects.create(
                sender=request.user,
                receiver=receiver,
                message=message
            )
            return JsonResponse({'status': 'success'})

    return JsonResponse({'status': 'fail'}, status=400)
