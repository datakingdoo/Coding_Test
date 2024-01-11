def solution(cards1, cards2, goal):
    for i in goal :
        if len(cards1) > 0 and i == cards1[0] :
            cards1.pop(0)
        elif len(cards2) > 0 and i == cards2[0] :
            cards2.pop(0)
        else :
            return 'No'
    return 'Yes'


# from collections import deque

# def solution(cards1, cards2, goal):
    
#     cards1 = deque(cards1)
#     cards2 = deque(cards2)
#     goal = deque(goal)
    
#     while goal :
#         if cards1 and cards1[0] == goal[0] :
#             cards1.popleft()
#             goal.popleft()
#         elif cards2 and cards2[0] == goal[0] :
#                 cards2.popleft()
#                 goal.popleft()
#         else :
#             break
    
#     return 'Yes' if not goal else 'No'



# def solution(cards1, cards2, goal):
#     num1 = []
#     num2 = []
#     n = 0
#     # cards에서 goal과 일치하면 cards의 인덱스를 각각 새로운 배열에 저장
#     for i in goal:
#         for j in range(0, len(cards1)):
#             if i == cards1[j]:
#                 num1.append(j)
#         for k in range(0, len(cards2)):
#             if i == cards2[k]:
#                 num2.append(k)
#     # 인덱스가 순서대로 들어있는지 확인 -> 순서대로 들어있지않으면 1점
#     for i in range(0, len(num1) - 1):
#         if num1[i + 1] - num1[i] != 1:
#             n += 1
#     for i in range(0, len(num2) - 1):
#         if num2[i + 1] - num2[i] != 1:
#             n += 1
#     # 뽑힌 것들의 개수와 goal 안에 들어있는 개수가 일치하는지 확인
#     # -> 일치하지 않으면 1점(cards에 적힌 단어들로 만들 수 없다는 것)
#     if len(num1) + len(num2) != len(goal):
#         n += 1
#     # 0점이면 조건에 부합한다는 것 -> Yes
#     if n == 0:
#         return "Yes"
#     else:
#         return "No"
