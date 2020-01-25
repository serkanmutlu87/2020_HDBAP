import representation.feasibility as feasibility
import representation.cost_calculating as cost_calculating

def Represantation(nV, nB, encode, pro_tim, l, t1, t2, s, e, p, tyype, NAB):

    while True:

        SOL = [[] for _ in range(nV)]
        nofeasible = []

        for i in encode:
            for t in range(t1[i], t2[i] - pro_tim[i] + 1):
                for b in range(0, nB - l[i] + 1):

                    assignability = 1
                    if tyype == "q":
                        for j in NAB:
                            if b <= (j-1) and (b - (j-1) - 1) > -l[i]:
                                assignability = 0

                    if assignability == 1:

                        ## berth assignability
                        assign = 1
                        for b2 in range(b, b + l[i]):
                            if s[b2] > t or e[b2] <= t + pro_tim[i]:
                                assign = 0
                                assign2 = 0

                        ## vessel assignability
                        if assign == 1:
                            assign2 = 1
                            for i2 in range(encode.index(i)):
                                if encode.index(i) == 0:
                                    conflict = 0
                                    break
                                if encode[i2] not in nofeasible:
                                    conflict = 0
                                    for b2 in range(b, b + l[i]):
                                        for b3 in range(SOL[encode[i2]][1], SOL[encode[i2]][1] + l[encode[i2]]):
                                            if b2 == b3:
                                                conflict = 1
                                                break
                                        if conflict == 1:
                                            break
                                    if (conflict == 1 and t >= SOL[encode[i2]][0] and t < SOL[encode[i2]][0] + pro_tim[encode[i2]]):
                                        assign2 = 0
                                        break
                                    elif (conflict == 1 and t <= SOL[encode[i2]][0] and t + pro_tim[i] > SOL[encode[i2]][0]):
                                        assign2 = 0
                                        break
                        if assign2 == 1:
                            SOL[i] = [t, b]
                            break
                if assign2 == 1:
                    break
            if assign2 == 0:
                nofeasible.append(i)

        if len(nofeasible) == 0:
            cost = cost_calculating.Cost_Calculation(nV,SOL,p,pro_tim,t1)
            break
        elif len(nofeasible) == 1:
            encode = feasibility.Feasibility(encode, nofeasible)
        else:
            cost = 99999
            break

    return SOL, cost