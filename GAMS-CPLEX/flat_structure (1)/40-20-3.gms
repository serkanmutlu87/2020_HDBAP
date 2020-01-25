SETS
V        vessels                                 /v1*v40/
B        berths                                  /b1*b20/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b6,b14/
CB2(B)   not assigned corner berths              /b7,b15/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 7, v2 6, v3 5, v4 9, v5 2, v6 6, v7 4, v8 10, v9 6, v10 7, v11 10, v12 8, v13 9, v14 5, v15 2, v16 6, v17 7, v18 4, v19 3, v20 3, v21 5, v22 2, v23 5, v24 9, v25 9, v26 6, v27 10, v28 9, v29 5, v30 10, v31 4, v32 6, v33 6, v34 6, v35 10, v36 10, v37 2, v38 10, v39 2, v40 7/
PO(V)    processing time of vessel v             /v1 3, v2 3, v3 3, v4 6, v5 8, v6 6, v7 2, v8 7, v9 2, v10 3, v11 6, v12 10, v13 7, v14 4, v15 7, v16 6, v17 2, v18 4, v19 10, v20 2, v21 5, v22 3, v23 4, v24 10, v25 6, v26 5, v27 7, v28 6, v29 2, v30 4, v31 6, v32 2, v33 10, v34 9, v35 2, v36 5, v37 6, v38 4, v39 3, v40 8/
LEN(V)   length of vessel v                      /v1 1, v2 2, v3 3, v4 2, v5 3, v6 1, v7 2, v8 1, v9 1, v10 2, v11 2, v12 3, v13 1, v14 1, v15 2, v16 1, v17 2, v18 3, v19 1, v20 2, v21 1, v22 1, v23 2, v24 2, v25 2, v26 1, v27 3, v28 2, v29 1, v30 3, v31 3, v32 2, v33 3, v34 1, v35 2, v36 3, v37 3, v38 2, v39 3, v40 3/
T1(V)    expected time to arrival of vessel v    /v1 28, v2 12, v3 30, v4 3, v5 23, v6 7, v7 28, v8 30, v9 12, v10 15, v11 8, v12 25, v13 27, v14 1, v15 17, v16 20, v17 4, v18 16, v19 25, v20 16, v21 13, v22 27, v23 25, v24 24, v25 11, v26 11, v27 7, v28 12, v29 13, v30 22, v31 22, v32 27, v33 15, v34 22, v35 3, v36 30, v37 12, v38 20, v39 20, v40 30/
T2(V)    expected time to departure of vessel v  /v1 34, v2 18, v3 36, v4 15, v5 39, v6 19, v7 32, v8 44, v9 16, v10 21, v11 20, v12 45, v13 41, v14 9, v15 31, v16 32, v17 8, v18 24, v19 45, v20 20, v21 23, v22 33, v23 33, v24 44, v25 23, v26 21, v27 21, v28 24, v29 17, v30 30, v31 34, v32 31, v33 35, v34 40, v35 7, v36 40, v37 24, v38 28, v39 26, v40 46/
S(B)     available start time of berth b         /b1 6, b2 1, b3 7, b4 14, b5 3, b6 5, b7 9, b8 7, b9 2, b10 4, b11 14, b12 8, b13 10, b14 14, b15 1, b16 1, b17 3, b18 6, b19 7, b20 8/
E(B)     available end time of berth b           /b1 42, b2 42, b3 50, b4 35, b5 46, b6 38, b7 39, b8 46, b9 36, b10 37, b11 49, b12 47, b13 38, b14 49, b15 49, b16 47, b17 43, b18 39, b19 39, b20 45/;


TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20
v1         34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v2         18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v3         36        36        36        35        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v4         15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v5         39        39        39        35        39        38        39        39        36        37        39        39        38        39        39        39        39        39        39        39
v6         19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v7         32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v8         42        42        44        35        44        38        39        44        36        37        44        44        38        44        44        44        43        39        39        44
v9         16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v10        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v11        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v12        42        42        45        35        45        38        39        45        36        37        45        45        38        45        45        45        43        39        39        45
v13        41        41        41        35        41        38        39        41        36        37        41        41        38        41        41        41        41        39        39        41
v14        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v15        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v16        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v17        8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8
v18        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v19        42        42        45        35        45        38        39        45        36        37        45        45        38        45        45        45        43        39        39        45
v20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v21        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v22        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v23        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v24        42        42        44        35        44        38        39        44        36        37        44        44        38        44        44        44        43        39        39        44
v25        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v26        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v27        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v28        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v29        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v31        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v32        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v33        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v34        40        40        40        35        40        38        39        40        36        37        40        40        38        40        40        40        40        39        39        40
v35        7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7
v36        40        40        40        35        40        38        39        40        36        37        40        40        38        40        40        40        40        39        39        40
v37        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v38        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v39        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v40        42        42        46        35        46        38        39        46        36        37        46        46        38        46        46        46        43        39        39        45;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20
v1         28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v2         12        12        12        14        12        12        12        12        12        12        14        12        12        14        12        12        12        12        12        12
v3         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v4         6         3         7         14        3         5         9         7         3         4         14        8         10        14        3         3         3         6         7         8
v5         23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v6         7         7         7         14        7         7         9         7         7         7         14        8         10        14        7         7         7         7         7         8
v7         28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v8         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v9         12        12        12        14        12        12        12        12        12        12        14        12        12        14        12        12        12        12        12        12
v10        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v11        8         8         8         14        8         8         9         8         8         8         14        8         10        14        8         8         8         8         8         8
v12        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v13        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v14        6         1         7         14        3         5         9         7         2         4         14        8         10        14        1         1         3         6         7         8
v15        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v16        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v17        6         4         7         14        4         5         9         7         4         4         14        8         10        14        4         4         4         6         7         8
v18        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v19        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v20        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v21        13        13        13        14        13        13        13        13        13        13        14        13        13        14        13        13        13        13        13        13
v22        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v23        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v25        11        11        11        14        11        11        11        11        11        11        14        11        11        14        11        11        11        11        11        11
v26        11        11        11        14        11        11        11        11        11        11        14        11        11        14        11        11        11        11        11        11
v27        7         7         7         14        7         7         9         7         7         7         14        8         10        14        7         7         7         7         7         8
v28        12        12        12        14        12        12        12        12        12        12        14        12        12        14        12        12        12        12        12        12
v29        13        13        13        14        13        13        13        13        13        13        14        13        13        14        13        13        13        13        13        13
v30        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v31        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v32        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v33        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v34        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v35        6         3         7         14        3         5         9         7         3         4         14        8         10        14        3         3         3         6         7         8
v36        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v37        12        12        12        14        12        12        12        12        12        12        14        12        12        14        12        12        12        12        12        12
v38        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v39        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v40        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30;
BINARY VARIABLES
X(V,B,T);
VARIABLES
Z        objective function value;
EQUATIONS
CONST1
CONST2
CONST3
CONST4
OBJECTIVE;

CONST1(V)..                                                                                                                                      SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), X(V,B,T))) =e= LEN(V);
CONST2(B,T) $ (ORD(T)>=S(B) AND ORD(T)<=(E(B)-1))..                                                                                              SUM( V, SUM( TO $ (ORD(TO)>=T1(V) AND ORD(TO)>=S(B) AND ORD(TO)>=(ORD(T)+1-PO(V)) AND ORD(TO)<=ORD(T) AND ORD(TO)<=(T2(V)-PO(V)) AND ORD(TO)<=(E(B)-PO(V))), X(V,B,TO))) =l= 1;
CONST3(V,T,B1,B2) $ (LEN(V)>=2 AND ORD(T)>=L(V,B1) AND ORD(T)<=(U(V,B1)-PO(V)) AND ORD(T)>=L(V,B2) AND ORD(T)<=(U(V,B2)-PO(V)))..                (X(V,B1,T) + X(V,B2,T) - 2)*999 + (ORD(B1) - ORD(B2)) =l= LEN(V) - 1;
CONST4(V,B1,B2,TT1,TT2) $ (LEN(V)>=2 AND ORD(TT1)>=L(V,B1) AND ORD(TT1)<=(U(V,B1)-PO(V)) AND ORD(TT2)>=L(V,B2) AND ORD(TT2)<=(U(V,B2)-PO(V)))..  (X(V,B1,TT1) + X(V,B2,TT2) - 2)*999 + (ORD(TT1) - ORD(TT2)) =l= 0;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;

