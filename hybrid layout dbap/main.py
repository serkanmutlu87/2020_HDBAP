## import functions
import inputs.inputs as inputs
import algorithms.algorithms as algorithms
import functions.statistics as statistics
import functions.berth_schedule as berth_schedule

## data inputs
case, structure, nor = inputs.Case()
## vessel inputs
nVessel, p, pro_tim, length, t1, t2, nBerth, s, e, NAB = inputs.Vessel_inputs(case)
## algorithm inputs
nIteration, nParticle, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, beta0, alfa, gamma, TIMES, SOLVS, ggbest, gG = inputs.Algorithm_inputs(nVessel)
## select algorithm
algorithm = input("Which algorithm would you like to run? (F - Firefly Optimization, P - Particle Swarm Optimization, H - Hybrid Firefly and Particle Swarm Optimization, H2 - Hybrid Firefly and Particle Swarm Optimization - 2) = ")

for it in range(nor):

    print("------------------------\n##############\nRun ",it + 1,"\n##############")

    if algorithm == "F":
        G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG = algorithms.FO(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, alfa, gamma, beta0, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG)
    elif algorithm == "P":
        G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG = algorithms.PSO(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG)
    elif algorithm == "H":
        G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG = algorithms.HFPSO(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, alfa, gamma, beta0, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG)
    elif algorithm == "H2":
        G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG = algorithms.HFPSO2(structure, nIteration, nParticle, nVessel, nBerth,p, pro_tim, length, t1, t2, s, e, NAB, alfa,gamma, beta0, c1, c2, wmin, wmax, minCoordination,maxCoordination, minVel, maxVel, TIMES, SOLVS,ggbest, gG)

print("\nStatistics\n------------------------------")
statistics.stat(TIMES,SOLVS)
print("\nBest Solution\n------------------------------")
print("cost : ", ggbest)
print("\nBest Berth Schedule\n------------------------------")
berth_schedule.berth_schedule(nVessel, nBerth, s, e, length, pro_tim, NAB, structure, GloSOL)