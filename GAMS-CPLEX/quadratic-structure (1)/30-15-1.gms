SETS
V        vessels                                 /v1*v30/
B        berths                                  /b1*b15/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b4,b11/
CB2(B)   not assigned corner berths              /b5,b12/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 2, v2 2, v3 5, v4 8, v5 4, v6 3, v7 7, v8 4, v9 8, v10 4, v11 5, v12 4, v13 8, v14 9, v15 5, v16 6, v17 9, v18 2, v19 7, v20 8, v21 6, v22 6, v23 6, v24 4, v25 3, v26 9, v27 9, v28 9, v29 9, v30 6/
PO(V)    processing time of vessel v             /v1 6, v2 4, v3 6, v4 8, v5 5, v6 3, v7 7, v8 2, v9 8, v10 8, v11 7, v12 7, v13 6, v14 7, v15 3, v16 8, v17 6, v18 3, v19 5, v20 5, v21 4, v22 10, v23 3, v24 3, v25 3, v26 7, v27 6, v28 4, v29 6, v30 6/
LEN(V)   length of vessel v                      /v1 2, v2 1, v3 1, v4 2, v5 1, v6 2, v7 1, v8 1, v9 2, v10 2, v11 2, v12 1, v13 2, v14 2, v15 1, v16 1, v17 3, v18 1, v19 3, v20 2, v21 2, v22 3, v23 3, v24 1, v25 3, v26 3, v27 1, v28 2, v29 2, v30 1/
T1(V)    expected time to arrival of vessel v    /v1 29, v2 1, v3 14, v4 15, v5 17, v6 12, v7 7, v8 23, v9 26, v10 18, v11 6, v12 20, v13 28, v14 30, v15 26, v16 5, v17 23, v18 27, v19 15, v20 3, v21 9, v22 14, v23 26, v24 3, v25 26, v26 25, v27 12, v28 14, v29 26, v30 18/
T2(V)    expected time to departure of vessel v  /v1 41, v2 9, v3 26, v4 31, v5 27, v6 18, v7 21, v8 27, v9 42, v10 34, v11 20, v12 34, v13 40, v14 44, v15 32, v16 21, v17 35, v18 33, v19 25, v20 13, v21 17, v22 34, v23 32, v24 9, v25 32, v26 39, v27 24, v28 22, v29 38, v30 30/
S(B)     available start time of berth b         /b1 9, b2 7, b3 14, b4 6, b5 15, b6 8, b7 10, b8 1, b9 11, b10 8, b11 2, b12 2, b13 2, b14 14, b15 3/
E(B)     available end time of berth b           /b1 50, b2 48, b3 42, b4 49, b5 48, b6 35, b7 46, b8 38, b9 36, b10 36, b11 46, b12 45, b13 49, b14 35, b15 46/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15
v1         41        41        41        41        41        35        41        38        36        36        41        41        41        35        41
v2         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v3         26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v4         31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v5         27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v6         18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v7         21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v8         27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v9         42        42        42        42        42        35        42        38        36        36        42        42        42        35        42
v10        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v11        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v12        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v13        40        40        40        40        40        35        40        38        36        36        40        40        40        35        40
v14        44        44        42        44        44        35        44        38        36        36        44        44        44        35        44
v15        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v16        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v17        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v18        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v19        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v20        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v21        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v22        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v23        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v24        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v25        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v26        39        39        39        39        39        35        39        38        36        36        39        39        39        35        39
v27        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v28        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v29        38        38        38        38        38        35        38        38        36        36        38        38        38        35        38
v30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15
v1         29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v2         9         7         14        6         15        8         10        1         11        8         2         2         2         14        3
v3         14        14        14        14        15        14        14        14        14        14        14        14        14        14        14
v4         15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v5         17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v6         12        12        14        12        15        12        12        12        12        12        12        12        12        14        12
v7         9         7         14        7         15        8         10        7         11        8         7         7         7         14        7
v8         23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v9         26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v10        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v11        9         7         14        6         15        8         10        6         11        8         6         6         6         14        6
v12        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v13        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v14        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v15        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v16        9         7         14        6         15        8         10        5         11        8         5         5         5         14        5
v17        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v18        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v19        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v20        9         7         14        6         15        8         10        3         11        8         3         3         3         14        3
v21        9         9         14        9         15        9         10        9         11        9         9         9         9         14        9
v22        14        14        14        14        15        14        14        14        14        14        14        14        14        14        14
v23        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v24        9         7         14        6         15        8         10        3         11        8         3         3         3         14        3
v25        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v26        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v27        12        12        14        12        15        12        12        12        12        12        12        12        12        14        12
v28        14        14        14        14        15        14        14        14        14        14        14        14        14        14        14
v29        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v30        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18;
BINARY VARIABLES
X(V,B,T);
VARIABLES
Z        objective function value;
EQUATIONS
CONST1
CONST2
CONST3
CONST4
CONST5
OBJECTIVE;

CONST1(V)..                                                                                                                                      SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), X(V,B,T))) =e= LEN(V);
CONST2(B,T) $ (ORD(T)>=S(B) AND ORD(T)<=(E(B)-1))..                                                                                              SUM( V, SUM( TO $ (ORD(TO)>=T1(V) AND ORD(TO)>=S(B) AND ORD(TO)>=(ORD(T)+1-PO(V)) AND ORD(TO)<=ORD(T) AND ORD(TO)<=(T2(V)-PO(V)) AND ORD(TO)<=(E(B)-PO(V))), X(V,B,TO))) =l= 1;
CONST3(V,T,B1,B2) $ (LEN(V)>=2 AND ORD(T)>=L(V,B1) AND ORD(T)<=(U(V,B1)-PO(V)) AND ORD(T)>=L(V,B2) AND ORD(T)<=(U(V,B2)-PO(V)))..                (X(V,B1,T) + X(V,B2,T) - 2)*999 + (ORD(B1) - ORD(B2)) =l= LEN(V) - 1;
CONST4(V,B1,B2,TT1,TT2) $ (LEN(V)>=2 AND ORD(TT1)>=L(V,B1) AND ORD(TT1)<=(U(V,B1)-PO(V)) AND ORD(TT2)>=L(V,B2) AND ORD(TT2)<=(U(V,B2)-PO(V)))..  (X(V,B1,TT1) + X(V,B2,TT2) - 2)*999 + (ORD(TT1) - ORD(TT2)) =l= 0;
CONST5(V,CB,CB2,T) $ (LEN(V)>=2 AND ORD(T)>=L(V,CB) AND ORD(T)<=(U(V,CB)-PO(V)) AND ORD(CB)=ORD(CB2))..                                        (X(V,CB,T)+X(V,CB2,T)) =l= 1;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;

