def solution(s):
    answer = ''
    new_list = s.split(' ')
    for i in new_list :
        for v in range(len(i)):
            if v % 2 == 0 : 
                answer += i[v].upper()
            else :
                answer += i[v].lower()
        answer += ' '
    return answer[0:-1]
