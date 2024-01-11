def solution(id_list, report, k):
    answer = [0] * len(id_list)
    report_all = {i : 0 for i in id_list}
    
    for i in set(report) :
        report_all[i.split()[1]] += 1
    
    for i in set(report) :
        if report_all[i.split()[1]] >= k :
            answer[id_list.index(i.split()[0])] += 1
    return answer 
