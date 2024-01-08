def solution(s):
    s = s.upper()
    p,y = 0,0
    for i in range(len(s)) :
        if s[i] == 'P' :
            p += 1
        elif s[i] == 'Y' :
            y += 1
        else :
            continue
    if p == y :
        return True
    else :
        return False
