def solution(lottos, win_nums):
    answer = []
    result = 0
    for i in lottos :
        for v in win_nums :
            if i == v :
                answer.append(i)
    if len(answer) == 0:
        result = 6
    elif len(answer) == 1:
        result = 6
    elif len(answer) == 2:
        result = 5
    elif len(answer) == 3:
        result = 4
    elif len(answer) == 4:
        result = 3
    elif len(answer) == 5:
        result = 2
    else :
        result = 1
    
    plus = lottos.count(0)
    if len(set(lottos)) == 1 :
        return [1,6]
    else :
        if plus == 0 :
            return [result,result]
        else :
            return [result-plus,result]
