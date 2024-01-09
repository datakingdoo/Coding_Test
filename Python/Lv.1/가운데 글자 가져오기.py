def solution(s):
    answer = ''
    n = 0
    if len(s) % 2 != 0 :
        n = len(s)//2+1
        answer += s[n-1]
    else : 
        n = len(s)//2
        answer += s[n-1]+s[n]
    return answer
