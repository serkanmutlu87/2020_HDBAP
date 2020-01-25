def berth_schedule(nVessel, nBerth, s, e, length, pro_tim, NAB, structure, GloSOL):
    auxx1 = "\t"
    for t in range(max(e) + 1):
        auxx1 = auxx1 + "t" + str(t) + "\t"
    print(auxx1)
    berth_schedule = [[0 for _ in range(max(e) + 1)] for _ in range(nBerth)]
    for b in range(nBerth):
        for t in range(s[b]):
            berth_schedule[b][t] = "n/a"
        for t in range(e[b],max(e)+1):
            berth_schedule[b][t] = "n/a"
    for v in range(nVessel):
        for b in range(GloSOL[v][1], GloSOL[v][1] + length[v]):
            for t in range(GloSOL[v][0], GloSOL[v][0] + pro_tim[v]):
                berth_schedule[b][t] = v + 1
    for b in range(nBerth):
        auxx2 = "b" + str(b + 1) + "\t"
        for t in range(max(e) + 1):
            auxx2 = auxx2 + str(berth_schedule[b][t]) + "\t"
        print(auxx2)
        if structure == "q" and b + 1 in NAB:
            auxx3 = "cb\t"
            for t in range(max(e) + 1):
                auxx3 = auxx3 + "***\t"
            print(auxx3)