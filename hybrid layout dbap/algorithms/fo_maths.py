import numpy as np
import random as rnd

import functions.check_boundary as check_boundary

def FO(nVessel,eG,Solution,Velocity,beta0,alfa,gamma,minCoordination,maxCoordination,minVel,maxVel):
    Auxi = Solution
    aux = 0
    for vu in range(nVessel):
        aux += np.square(Solution[vu] - eG[vu])
    rij = np.sqrt(aux)
    for v in range(nVessel):
        Solution[v] = Solution[v] + beta0 * np.exp(-gamma * np.square(rij)) * (
                    Solution[v] - eG[v]) + alfa * rnd.uniform(minCoordination, maxCoordination)
    Solution = check_boundary.Check_coordination(nVessel, minCoordination, maxCoordination, Solution)
    for v in range(nVessel):
        Velocity[v] = Solution[v] - Auxi[v]
    Velocity = check_boundary.Check_velocity(nVessel, minVel, maxVel, Velocity)
    return Solution, Velocity