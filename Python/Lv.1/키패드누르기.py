def solution(numbers, hand):
    answer = ''
    dic = {
        1 : [0,3], 2 : [1,3], 3 : [2,3],
        4 : [0,2], 5 : [1,2], 6 : [2,2],
        7 : [0,1], 8 : [1,1], 9 : [2,1],
        "*" : [0,0], 0 : [1,0], "#" : [2,0],
    }
    left = dic["*"]
    right = dic["#"]

    for i in numbers :
        now = dic[i]
        if i in [1,4,7] :
            answer += "L"
            left = now 
        elif i in [3,6,9] :
            answer += "R"
            right = now 
        elif i in [2,5,8,0] :
            L_dis = abs(left[0]-dic[i][0]) + abs(left[1]-dic[i][1])
            R_dis = abs(right[0]-dic[i][0]) + abs(right[1]-dic[i][1])
            if L_dis < R_dis :
                answer += "L"
                left = now 
            elif L_dis > R_dis :
                answer += "R"
                right = now 
            else :
                if hand == "right" :
                    answer += "R"
                    right = now
                else : 
                    answer += "L"
                    left = now
    return answer
