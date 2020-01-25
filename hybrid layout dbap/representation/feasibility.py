def Feasibility(encode, nofeasible):
    encode.pop(encode.index(nofeasible[0]))
    return [nofeasible[0]] + encode