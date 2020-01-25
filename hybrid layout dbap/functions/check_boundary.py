import random as rnd

def Check_velocity(nVessel,minVel,maxVel,Velocity):
    for v in range(nVessel):
        if Velocity[v] <= minVel:
            Velocity[v] = rnd.uniform(minVel, minVel + 0.001)
        elif Velocity[v] >= maxVel:
            Velocity[v] = rnd.uniform(maxVel - 0.001, maxVel)
    return Velocity

def Check_coordination(nVessel,minCoordination,maxCoordination,Solution):
    for v in range(nVessel):
        if Solution[v] <= minCoordination:
            Solution[v] = rnd.uniform(minCoordination, minCoordination + 0.001)
        if Solution[v] >= maxCoordination:
            Solution[v] = rnd.uniform(maxCoordination - 0.001, maxCoordination)
    return Solution