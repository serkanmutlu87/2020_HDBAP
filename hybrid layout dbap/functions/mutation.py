import numpy as np

def Mutation(nParticle,nVessel,Solution,Velocity,minVel,maxVel,minCoordination,maxCoordination):
    Perm = np.random.permutation(nParticle)
    Select = [Perm[i] for i in range(int(round(nParticle*0.10)))]
    for i in Select:
        for v in range(nVessel):
            Solution[i][v] = np.random.uniform(minCoordination,maxCoordination)
            Velocity[i][v] = np.random.uniform(minVel,maxVel)
    return Solution, Velocity