def solution(phone_number):
    head = len(phone_number)-4
    back = phone_number[-4:]
    return '*'*head + back
