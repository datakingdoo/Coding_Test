def solution(s):
    answer = 0
    stack = []
    for i in s :
        # stack이 비어있지 않거나 현재 문자와 스택의 마지막 문자가 같으면 제거
        if stack and stack[-1] == i : 
            stack.pop()
        else :
            stack.append(i)
    if not stack :
        answer += 1
    return answer
