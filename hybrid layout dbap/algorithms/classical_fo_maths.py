import numpy as np
import random as rnd

import functions.check_boundary as check_boundary

def FO(i, nParticle, nVessel, Solution, beta0, alfa, gamma, minCoordination, maxCoordination):
    for j in range(nParticle):
        if i != j:
            aux = 0
            for vu in range(nVessel):
                aux += np.square(Solution[i][vu] - Solution[j][vu])
            rij = np.sqrt(aux)
            for v in range(nVessel):
                Solution[i][v] = Solution[i][v] + beta0 * np.exp(-gamma * np.square(rij)) * (
                            Solution[j][v] - Solution[i][v]) + alfa * rnd.uniform(minCoordination, maxCoordination)
    Solution[i] = check_boundary.Check_coordination(nVessel, minCoordination, maxCoordination, Solution[i])
    return Solution[i]

def FO2(nVessel, Solution, alfa, minCoordination, maxCoordination):
    for v in range(nVessel):
        Solution[v] = Solution[v] + alfa * rnd.uniform(minCoordination, maxCoordination)
    Solution = check_boundary.Check_coordination(nVessel, minCoordination, maxCoordination, Solution)
    return Solution