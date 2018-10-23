def maxPoints(elements):
    res = 0
    elements.sort(reverse=True)
    #s = [[x,elements.count(x)] for x in set(elements)]
    while(len(elements)>0):
        count0 = elements.count(elements[0])
        count1 = elements.count(elements[0]-1)
        print(count0, count1)
        if(elements[0]*count0 >= (elements[0]-1)*count1):
            for i in range(count0):
                res += elements.pop(0)
                print(res)
            for i in range(count1):
                elements.pop(0)
        elif(elements[0]*count0 < (elements[0]-1)*count1):
            for i in range(count0):
                elements.pop(0)
    return res
