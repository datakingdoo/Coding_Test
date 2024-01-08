def solution(s):
    arr = ['zero','one','two','three','four','five','six','seven','eight','nine']
    tmp = ""
    result = ""
    for i in range(len(s)) :
        if s[i].isnumeric() :
            result += s[i]
        else :
            tmp += s[i]
            if tmp in arr:
                result+=str(arr.index(tmp))
                tmp=""
    return int(result)
