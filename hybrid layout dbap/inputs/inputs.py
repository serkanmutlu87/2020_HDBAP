import pandas as pd
import numpy as np
import random as rnd

def Case():
    file = pd.ExcelFile("inputs\data.xlsx")
    while True:
        case = input("Which case would you like to run? (if you don't know the case names, write c) = ")
        if case == "c":
            print(file.sheet_names)
        else:
            if case not in file.sheet_names:
                print("You have entered incorrectly. Please try again.")
            else:
                break
    while True:
        structure = input("Which port structure would you like to run? (f - flat structure, q - quadratic) = ")
        if structure == "f" or structure == "q":
            break
        else:
            print("You have entered incorrectly. Please try again.")
    nor = int(input("How many times do you want to run the algorithm? = "))
    return case, structure, nor

def Vessel_inputs(case):
    data = pd.read_excel("inputs\data.xlsx", sheet_name=case)
    pl = data.values.tolist()
    nVessel = int(pl[0][1])
    nBerth = int(pl[6][1])
    return nVessel, [int(pl[1][i+1]) for i in range(nVessel)], [int(pl[2][i+1]) for i in range(nVessel)], [int(pl[3][i+1]) for i in range(nVessel)], [int(pl[4][i+1]) for i in range(nVessel)], [int(pl[5][i+1]) for i in range(nVessel)], nBerth, [int(pl[7][i+1]) for i in range(nBerth)], [int(pl[8][i+1]) for i in range(nBerth)], [int(pl[10][i+1]) for i in range(2)]

def Algorithm_inputs(nVessel):
    nIteration = 50
    nParticle = 20
    c1 = 2.041
    c2 = 0.948
    wmin = 0.40
    wmax = 0.90
    minCoordination = -nVessel * 0.50
    maxCoordination = nVessel * 0.50
    minVel = minCoordination * 0.10
    maxVel = maxCoordination * 0.10
    beta0 = 1
    alfa = 0.50
    gamma = 0.10
    TIMES = []
    SOLVS = []
    ggbest = 0
    gG = []
    return nIteration, nParticle, c1, c2, wmin, wmax, minCoordination, maxCoordination, minVel, maxVel, beta0, alfa, gamma, TIMES, SOLVS, ggbest, gG

def Initial_solution(nParticle,nVessel,minVel,maxVel,minCoordination,maxCoordination):

    SOLS = [[] for _ in range(nParticle)]
    nf = [[] for _ in range(nParticle)]
    Cost = [np.inf for _ in range(nParticle)]
    GloSOL = []
    P = [[] for _ in range(nParticle)]
    pbest = [np.inf for _ in range(nParticle)]
    G = []
    gbest = np.inf

    Solution = [[rnd.uniform(minCoordination,maxCoordination) for _ in range(nVessel)] for _ in range(nParticle)]
    Velocity = [[rnd.uniform(minVel,maxVel) for _ in range(nVessel)] for _ in range(nParticle)]
    aux3 = 0
    aux4 = 0

    return SOLS, nf, Cost, GloSOL, P, pbest, G, gbest, Solution, Velocity, aux3, aux4