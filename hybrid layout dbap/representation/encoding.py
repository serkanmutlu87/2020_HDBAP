def Ordering(nVessel, Solution):
    Ordered_Solution = sorted(Solution, reverse=True)
    Index_Ordered = [Ordered_Solution.index(i) for i in Solution]
    Encode_Solution = [0 for _ in range(nVessel)]
    for i in range(nVessel):
        for j in Index_Ordered:
            if Index_Ordered[j] == i:
                Encode_Solution[i] = j
    return Encode_Solution