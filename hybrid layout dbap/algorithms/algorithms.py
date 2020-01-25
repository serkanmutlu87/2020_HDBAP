import random as rnd
import time

import inputs.inputs as inputs
import representation.encoding as encoding
import representation.decoding as decoding
import functions.best_solution_update as best_solution_update
import algorithms.classical_fo_maths as classical_fo_maths
import algorithms.fo_maths as fo_maths
import algorithms.pso_maths as pso_maths
import functions.mutation as mutation

def FO(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, alfa, gamma, beta0, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG):

    ## get the initial solution
    SOLS, nf, Cost, GloSOL, P, pbest, G, gbest, Solution, Velocity, aux_mutation, aux_break = inputs.Initial_solution(nParticle, nVessel, minVel, maxVel, minCoordination, maxCoordination)
    ## encoding the initial solution
    encode = [encoding.Ordering(nVessel, Solution[i]) for i in range(nParticle)]
    ## decoding the initial solution
    for i in range(nParticle):
        SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)
    ## update the global best solution
    G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)
    change = 0

    ## start the algorithm
    start_time = time.time()

    for iteration in range(nIteration):

        for i in range(nParticle):

            ## choose type of solution update and update the solutions
            if gbest == 99999:
                Solution[i] = [rnd.uniform(minCoordination, maxCoordination) for _ in range(nVessel)]
                Velocity[i] = [rnd.uniform(minVel, maxVel) for _ in range(nVessel)]
            elif Cost[i] < gbest:
                Solution[i] = classical_fo_maths.FO2(nVessel, Solution[i], alfa, minCoordination, maxCoordination)
            elif Cost[i] == gbest:
                aux_mutation += 1
                aux_break += 1
                Solution[i] = classical_fo_maths.FO2(nVessel, Solution[i], alfa, minCoordination, maxCoordination)
            else:
                aux_mutation += 1
                aux_break += 1
                Solution[i] = classical_fo_maths.FO(i, nParticle, nVessel, Solution, beta0, alfa, gamma,
                                                    minCoordination, maxCoordination)

            ## encode solution
            encode[i] = encoding.Ordering(nVessel, Solution[i])

            ## decode solution
            SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p,
                                                       structure, NAB)

            ## control of best solution changing
            if Cost[i] < gbest:
                change = 1
            else:
                change = 0
            if change == 1:
                aux_break = 0

        ## updateglobal best solution
        G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)

        ## decision of mutation
        if aux_mutation / nParticle >= round(nIteration * 0.10):
            aux_mutation = 0
            Solution, Velocity = mutation.Mutation(nParticle, nVessel, Solution, Velocity, minVel, maxVel,
                                                   minCoordination, maxCoordination)

        ## stopping criteria 2
        if aux_break / nParticle >= round(nIteration * 0.33):
            break

    end_time = time.time()

    TIMES.append(end_time - start_time)
    if len(SOLVS) == 0 or gbest < min(SOLVS):
        ggbest = gbest
        gG = GloSOL
    SOLVS.append(gbest)
    print("Solution : ", gbest)
    print("Time     : ", (end_time - start_time), " sec.")


    return G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG






#### PARTICLE SWARM OPTIMIZATION ###
#### --------------------------- ###
def PSO(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG):

    ## get the initial solution
    SOLS, nf, Cost, GloSOL, P, pbest, G, gbest, Solution, Velocity, aux_mutation, aux_break = inputs.Initial_solution(nParticle, nVessel, minVel, maxVel, minCoordination, maxCoordination)
    ## encoding the initial solution
    encode = [encoding.Ordering(nVessel, Solution[i]) for i in range(nParticle)]
    ## decoding the initial solution
    for i in range(nParticle):
        SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)
    ## update personal best solution
    P, pbest = best_solution_update.Update_pbest(nParticle, Solution, pbest, Cost, P)
    ## update the global best solution
    G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)
    change = 0

    ## start the algorithm
    start_time = time.time()

    for iteration in range(nIteration):

        for i in range(nParticle):

            ## choose type of solution update and update the solutions
            if gbest == 99999:
                Solution[i] = [rnd.uniform(minCoordination, maxCoordination) for _ in range(nVessel)]
                Velocity[i] = [rnd.uniform(minVel, maxVel) for _ in range(nVessel)]
            else:
                aux_mutation += 1
                aux_break += 1
                Solution[i], Velocity[i] = pso_maths.PSO(nVessel, nIteration, Solution[i], P[i], G, Velocity[i], c1, c2, wmin, wmax, iteration, minVel, maxVel, minCoordination, maxCoordination)

            ## encode solution
            encode[i] = encoding.Ordering(nVessel, Solution[i])

            ## decode solution
            SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)

            ## control of best solution changing
            if Cost[i] < gbest:
                change = 1
            else:
                change = 0
            if change == 1:
                aux_break = 0

        ## update personal best solution
        P, pbest = best_solution_update.Update_pbest(nParticle, Solution, pbest, Cost, P)

        ## update global best solution
        G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)

        ## decision of mutation
        if aux_mutation / nParticle >= round(nIteration * 0.10):
            aux_mutation = 0
            Solution, Velocity = mutation.Mutation(nParticle, nVessel, Solution, Velocity, minVel, maxVel, minCoordination, maxCoordination)

        ## stopping criteria 2
        if aux_break / nParticle >= round(nIteration * 0.33):
            break

    end_time = time.time()

    TIMES.append(end_time - start_time)
    if len(SOLVS) == 0 or gbest < min(SOLVS):
        ggbest = gbest
        gG = GloSOL
    SOLVS.append(gbest)
    print("Solution : ", gbest)
    print("Time     : ", (end_time - start_time), " sec.")


    return G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG






#### PARTICLE SWARM OPTIMIZATION ###
#### --------------------------- ###
def HFPSO(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, alfa, gamma, beta0, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG):

    ## get the initial solution
    SOLS, nf, Cost, GloSOL, P, pbest, G, gbest, Solution, Velocity, aux_mutation, aux_break = inputs.Initial_solution(nParticle, nVessel, minVel, maxVel, minCoordination, maxCoordination)
    ## encoding the initial solution
    encode = [encoding.Ordering(nVessel, Solution[i]) for i in range(nParticle)]
    ## decoding the initial solution
    for i in range(nParticle):
        SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)
    ## update personal best solution
    P, pbest = best_solution_update.Update_pbest(nParticle, Solution, pbest, Cost, P)
    ## update the global best solution
    G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)
    change = 0
    change2 = 0
    change3 = 0

    ## start the algorithm
    start_time = time.time()

    for iteration in range(nIteration):

        if change2 == 1:
            change = 1
            change2 = 0
            change3 = 0
        else:
            change = 0

        for i in range(nParticle):

            ## choose type of solution update and update the solutions
            if gbest == 99999:
                Solution[i] = [rnd.uniform(minCoordination, maxCoordination) for _ in range(nVessel)]
                Velocity[i] = [rnd.uniform(minVel, maxVel) for _ in range(nVessel)]
            else:
                if change == 0:
                    aux_mutation += 1
                    aux_break += 1
                    Solution[i], Velocity[i] = pso_maths.PSO(nVessel, nIteration, Solution[i], P[i], G, Velocity[i], c1, c2, wmin, wmax, iteration, minVel, maxVel, minCoordination, maxCoordination)
                else:
                    aux_break = 0
                    Solution[i], Velocity[i] = fo_maths.FO(nVessel,G,Solution[i],Velocity[i],beta0,alfa,gamma,minCoordination,maxCoordination,minVel,maxVel)


            ## encode solution
            encode[i] = encoding.Ordering(nVessel, Solution[i])

            ## decode solution
            SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)

            ## control of best solution changing
            if Cost[i] < gbest:
                change2 = 1
                change3 = 1
            else:
                change3 = 0
            if change3 == 1:
                aux_break = 0

        ## update personal best solution
        P, pbest = best_solution_update.Update_pbest(nParticle, Solution, pbest, Cost, P)

        ## update global best solution
        G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)

        ## decision of mutation
        if aux_mutation / nParticle >= round(nIteration * 0.10):
            aux_mutation = 0
            Solution, Velocity = mutation.Mutation(nParticle, nVessel, Solution, Velocity, minVel, maxVel, minCoordination, maxCoordination)

        ## stopping criteria 2
        if aux_break / nParticle >= round(nIteration * 0.33):
            break

    end_time = time.time()

    TIMES.append(end_time - start_time)
    if len(SOLVS) == 0 or gbest < min(SOLVS):
        ggbest = gbest
        gG = GloSOL
    SOLVS.append(gbest)
    print("Solution : ", gbest)
    print("Time     : ", (end_time - start_time), " sec.")


    return G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG






#### PARTICLE SWARM OPTIMIZATION ###
#### --------------------------- ###
def HFPSO2(structure, nIteration, nParticle, nVessel, nBerth, p, pro_tim, length, t1, t2, s, e, NAB, alfa, gamma, beta0, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, TIMES, SOLVS, ggbest, gG):

    ## get the initial solution
    SOLS, nf, Cost, GloSOL, P, pbest, G, gbest, Solution, Velocity, aux_mutation, aux_break = inputs.Initial_solution(nParticle, nVessel, minVel, maxVel, minCoordination, maxCoordination)
    ## encoding the initial solution
    encode = [encoding.Ordering(nVessel, Solution[i]) for i in range(nParticle)]
    ## decoding the initial solution
    for i in range(nParticle):
        SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)
    ## update personal best solution
    P, pbest = best_solution_update.Update_pbest(nParticle, Solution, pbest, Cost, P)
    ## update the global best solution
    G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)
    change = 0
    change2 = 0
    change3 = 0

    ## start the algorithm
    start_time = time.time()

    for iteration in range(nIteration):

        if change2 == 1:
            change = 1
            change2 = 0
            change3 = 0
        else:
            change = 0

        for i in range(nParticle):

            ## choose type of solution update and update the solutions
            if gbest == 99999:
                Solution[i] = [rnd.uniform(minCoordination, maxCoordination) for _ in range(nVessel)]
                Velocity[i] = [rnd.uniform(minVel, maxVel) for _ in range(nVessel)]
            else:
                if change == 1:
                    aux_break = 0
                    Solution[i], Velocity[i] = pso_maths.PSO(nVessel, nIteration, Solution[i], P[i], G, Velocity[i], c1, c2, wmin, wmax, iteration, minVel, maxVel, minCoordination, maxCoordination)
                else:
                    aux_mutation += 1
                    aux_break += 1
                    Solution[i], Velocity[i] = fo_maths.FO(nVessel,G,Solution[i],Velocity[i],beta0,alfa,gamma,minCoordination,maxCoordination,minVel,maxVel)


            ## encode solution
            encode[i] = encoding.Ordering(nVessel, Solution[i])

            ## decode solution
            SOLS[i], Cost[i] = decoding.Represantation(nVessel, nBerth, encode[i], pro_tim, length, t1, t2, s, e, p, structure, NAB)

            ## control of best solution changing
            if Cost[i] < gbest:
                change2 = 1
                change3 = 1
            else:
                change3 = 0
            if change3 == 1:
                aux_break = 0

        ## update personal best solution
        P, pbest = best_solution_update.Update_pbest(nParticle, Solution, pbest, Cost, P)

        ## update global best solution
        G, gbest, GloSOL = best_solution_update.Update_gbest(nParticle, Solution, gbest, Cost, G, SOLS, GloSOL)

        ## decision of mutation
        if aux_mutation / nParticle >= round(nIteration * 0.10):
            aux_mutation = 0
            Solution, Velocity = mutation.Mutation(nParticle, nVessel, Solution, Velocity, minVel, maxVel, minCoordination, maxCoordination)

        ## stopping criteria 2
        if aux_break / nParticle >= round(nIteration * 0.33):
            break

    end_time = time.time()

    TIMES.append(end_time - start_time)
    if len(SOLVS) == 0 or gbest < min(SOLVS):
        ggbest = gbest
        gG = GloSOL
    SOLVS.append(gbest)
    print("Solution : ", gbest)
    print("Time     : ", (end_time - start_time), " sec.")


    return G, gbest, GloSOL, TIMES, SOLVS, ggbest, gG