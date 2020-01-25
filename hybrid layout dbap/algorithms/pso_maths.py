import random as rnd

import functions.check_boundary as check_boundary

def PSO(nVessel,nIteration,Solution,P,G,Velocity,c1,c2,wmin,wmax,iteration,minVel,maxVel,minCoordination,maxCoordination):
    w = wmin + ((wmax - wmin) / nIteration) * iteration
    for v in range(nVessel):
        Velocity[v] = w * Velocity[v] + c1 * rnd.uniform(0, 1) * (P[v] - Solution[v]) + c2 * rnd.uniform(0, 1) * (G[v] - Solution[v])
    Velocity = check_boundary.Check_velocity(nVessel, minVel, maxVel, Velocity)
    for v in range(nVessel):
        Solution[v] += Velocity[v]
    Solution = check_boundary.Check_coordination(nVessel, minCoordination, maxCoordination, Solution)
    return Solution, Velocity