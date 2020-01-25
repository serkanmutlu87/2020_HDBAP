def Cost_Calculation(nVessel, SOL, p, pro_tim, t1):
    cost = 0
    for v in range(nVessel):
        cost += (SOL[v][0] + pro_tim[v] - t1[v])*p[v]
    return cost