def Update_pbest(nParticle, Solution, pbest, cost, P):
    for i in range(nParticle):
        if cost[i] < pbest[i]:
            pbest[i] = cost[i]
            P[i] = Solution[i]
    return P, pbest

def Update_gbest(nParticle, Solution, gbest, cost, G, SOL, GloSOL):
    for i in range(nParticle):
        if cost[i] < gbest:
            gbest = cost[i]
            G = Solution[i]
            GloSOL = SOL[i]
    return G, gbest, GloSOL