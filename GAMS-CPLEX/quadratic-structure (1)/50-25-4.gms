SETS
V        vessels                                 /v1*v50/
B        berths                                  /b1*b25/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b8,b17/
CB2(B)   not assigned corner berths              /b9,b18/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 6, v2 3, v3 9, v4 8, v5 7, v6 8, v7 6, v8 8, v9 7, v10 3, v11 3, v12 4, v13 5, v14 7, v15 8, v16 3, v17 3, v18 8, v19 9, v20 3, v21 3, v22 4, v23 8, v24 4, v25 8, v26 9, v27 7, v28 3, v29 3, v30 6, v31 4, v32 9, v33 8, v34 8, v35 5, v36 5, v37 6, v38 6, v39 2, v40 3, v41 8, v42 10, v43 7, v44 5, v45 10, v46 4, v47 8, v48 7, v49 3, v50 5/
PO(V)    processing time of vessel v             /v1 6, v2 8, v3 5, v4 8, v5 2, v6 10, v7 8, v8 6, v9 3, v10 9, v11 5, v12 10, v13 8, v14 6, v15 10, v16 3, v17 9, v18 7, v19 8, v20 6, v21 2, v22 5, v23 2, v24 6, v25 2, v26 4, v27 9, v28 2, v29 8, v30 5, v31 5, v32 3, v33 6, v34 9, v35 8, v36 7, v37 3, v38 5, v39 5, v40 4, v41 5, v42 5, v43 10, v44 10, v45 8, v46 3, v47 7, v48 3, v49 2, v50 2/
LEN(V)   length of vessel v                      /v1 2, v2 2, v3 1, v4 1, v5 1, v6 2, v7 3, v8 2, v9 2, v10 1, v11 2, v12 1, v13 1, v14 1, v15 2, v16 1, v17 3, v18 2, v19 3, v20 1, v21 2, v22 1, v23 2, v24 1, v25 2, v26 2, v27 1, v28 2, v29 2, v30 1, v31 3, v32 3, v33 3, v34 1, v35 1, v36 2, v37 1, v38 1, v39 3, v40 2, v41 2, v42 2, v43 1, v44 2, v45 3, v46 3, v47 1, v48 3, v49 2, v50 1/
T1(V)    expected time to arrival of vessel v    /v1 22, v2 5, v3 20, v4 24, v5 22, v6 4, v7 17, v8 9, v9 26, v10 24, v11 19, v12 14, v13 12, v14 6, v15 11, v16 8, v17 29, v18 17, v19 23, v20 6, v21 25, v22 17, v23 17, v24 6, v25 9, v26 3, v27 18, v28 12, v29 30, v30 8, v31 4, v32 29, v33 22, v34 13, v35 6, v36 30, v37 9, v38 15, v39 2, v40 24, v41 15, v42 18, v43 7, v44 23, v45 12, v46 2, v47 25, v48 3, v49 13, v50 14/
T2(V)    expected time to departure of vessel v  /v1 34, v2 21, v3 30, v4 40, v5 26, v6 24, v7 33, v8 21, v9 32, v10 42, v11 29, v12 34, v13 28, v14 18, v15 31, v16 14, v17 47, v18 31, v19 39, v20 18, v21 29, v22 27, v23 21, v24 18, v25 13, v26 11, v27 36, v28 16, v29 46, v30 18, v31 14, v32 35, v33 34, v34 31, v35 22, v36 44, v37 15, v38 25, v39 12, v40 32, v41 25, v42 28, v43 27, v44 43, v45 28, v46 8, v47 39, v48 9, v49 17, v50 18/
S(B)     available start time of berth b         /b1 8, b2 1, b3 5, b4 5, b5 10, b6 7, b7 1, b8 2, b9 1, b10 3, b11 13, b12 15, b13 9, b14 1, b15 9, b16 3, b17 1, b18 2, b19 6, b20 5, b21 5, b22 10, b23 3, b24 8, b25 3/
E(B)     available end time of berth b           /b1 45, b2 40, b3 45, b4 50, b5 43, b6 49, b7 35, b8 38, b9 36, b10 35, b11 46, b12 39, b13 44, b14 47, b15 50, b16 42, b17 47, b18 47, b19 47, b20 43, b21 41, b22 40, b23 40, b24 50, b25 43/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v2         21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v3         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v4         40        40        40        40        40        40        35        38        36        35        40        39        40        40        40        40        40        40        40        40        40        40        40        40        40
v5         26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v6         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v7         33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v8         21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v9         32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v10        42        40        42        42        42        42        35        38        36        35        42        39        42        42        42        42        42        42        42        42        41        40        40        42        42
v11        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v12        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v13        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v14        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v15        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v16        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v17        45        40        45        47        43        47        35        38        36        35        46        39        44        47        47        42        47        47        47        43        41        40        40        47        43
v18        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v19        39        39        39        39        39        39        35        38        36        35        39        39        39        39        39        39        39        39        39        39        39        39        39        39        39
v20        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v21        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v22        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v23        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v24        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v25        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v26        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11
v27        36        36        36        36        36        36        35        36        36        35        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v28        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v29        45        40        45        46        43        46        35        38        36        35        46        39        44        46        46        42        46        46        46        43        41        40        40        46        43
v30        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v31        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v32        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v33        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v34        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v35        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v36        44        40        44        44        43        44        35        38        36        35        44        39        44        44        44        42        44        44        44        43        41        40        40        44        43
v37        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v38        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v39        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v40        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v41        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v42        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v43        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v44        43        40        43        43        43        43        35        38        36        35        43        39        43        43        43        42        43        43        43        43        41        40        40        43        43
v45        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v46        8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8
v47        39        39        39        39        39        39        35        38        36        35        39        39        39        39        39        39        39        39        39        39        39        39        39        39        39
v48        9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9         9
v49        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v50        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18;

TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v2         8         5         5         5         10        7         5         5         5         5         13        15        9         5         9         5         5         5         6         5         5         10        5         8         5
v3         20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v4         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v5         22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v6         8         4         5         5         10        7         4         4         4         4         13        15        9         4         9         4         4         4         6         5         5         10        4         8         4
v7         17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v8         9         9         9         9         10        9         9         9         9         9         13        15        9         9         9         9         9         9         9         9         9         10        9         9         9
v9         26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v10        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v11        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v12        14        14        14        14        14        14        14        14        14        14        14        15        14        14        14        14        14        14        14        14        14        14        14        14        14
v13        12        12        12        12        12        12        12        12        12        12        13        15        12        12        12        12        12        12        12        12        12        12        12        12        12
v14        8         6         6         6         10        7         6         6         6         6         13        15        9         6         9         6         6         6         6         6         6         10        6         8         6
v15        11        11        11        11        11        11        11        11        11        11        13        15        11        11        11        11        11        11        11        11        11        11        11        11        11
v16        8         8         8         8         10        8         8         8         8         8         13        15        9         8         9         8         8         8         8         8         8         10        8         8         8
v17        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v18        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v19        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v20        8         6         6         6         10        7         6         6         6         6         13        15        9         6         9         6         6         6         6         6         6         10        6         8         6
v21        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v22        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v23        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v24        8         6         6         6         10        7         6         6         6         6         13        15        9         6         9         6         6         6         6         6         6         10        6         8         6
v25        9         9         9         9         10        9         9         9         9         9         13        15        9         9         9         9         9         9         9         9         9         10        9         9         9
v26        8         3         5         5         10        7         3         3         3         3         13        15        9         3         9         3         3         3         6         5         5         10        3         8         3
v27        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v28        12        12        12        12        12        12        12        12        12        12        13        15        12        12        12        12        12        12        12        12        12        12        12        12        12
v29        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v30        8         8         8         8         10        8         8         8         8         8         13        15        9         8         9         8         8         8         8         8         8         10        8         8         8
v31        8         4         5         5         10        7         4         4         4         4         13        15        9         4         9         4         4         4         6         5         5         10        4         8         4
v32        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v33        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v34        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13        13        13        13        13        13        13        13        13        13
v35        8         6         6         6         10        7         6         6         6         6         13        15        9         6         9         6         6         6         6         6         6         10        6         8         6
v36        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v37        9         9         9         9         10        9         9         9         9         9         13        15        9         9         9         9         9         9         9         9         9         10        9         9         9
v38        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v39        8         2         5         5         10        7         2         2         2         3         13        15        9         2         9         3         2         2         6         5         5         10        3         8         3
v40        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v41        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v42        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v43        8         7         7         7         10        7         7         7         7         7         13        15        9         7         9         7         7         7         7         7         7         10        7         8         7
v44        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v45        12        12        12        12        12        12        12        12        12        12        13        15        12        12        12        12        12        12        12        12        12        12        12        12        12
v46        8         2         5         5         10        7         2         2         2         3         13        15        9         2         9         3         2         2         6         5         5         10        3         8         3
v47        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v48        8         3         5         5         10        7         3         3         3         3         13        15        9         3         9         3         3         3         6         5         5         10        3         8         3
v49        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13        13        13        13        13        13        13        13        13        13
v50        14        14        14        14        14        14        14        14        14        14        14        15        14        14        14        14        14        14        14        14        14        14        14        14        14;

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
CONST5(V,CB,CB2,T) $ (LEN(V)>=2 AND ORD(T)>=L(V,CB) AND ORD(T)<=(U(V,CB)-PO(V)) AND ORD(CB)=ORD(CB2))..                                          (X(V,CB,T)+X(V,CB2,T)) =l= 1;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;

