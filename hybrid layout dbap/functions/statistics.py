import numpy as np

def stat(TIMES,SOLVS):
    print("minimum time  : ", min(TIMES))
    print("average time  : ", np.average(TIMES))
    print("maximum time  : ", max(TIMES))
    print("minimum cost  : ", min(SOLVS))
    print("average cost  : ", np.average(SOLVS))
    print("maximum cost  : ", max(SOLVS))