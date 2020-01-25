SETS
V        vessels                                 /v1*v50/
B        berths                                  /b1*b25/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b8,b17/
CB2(B)   not assigned corner berths              /b9,b18/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 9, v2 5, v3 6, v4 2, v5 5, v6 7, v7 2, v8 6, v9 10, v10 5, v11 4, v12 7, v13 7, v14 3, v15 2, v16 2, v17 8, v18 8, v19 10, v20 7, v21 2, v22 9, v23 6, v24 3, v25 8, v26 10, v27 8, v28 8, v29 8, v30 5, v31 4, v32 3, v33 9, v34 4, v35 5, v36 8, v37 8, v38 2, v39 8, v40 6, v41 7, v42 2, v43 4, v44 4, v45 3, v46 3, v47 5, v48 5, v49 10, v50 6/
PO(V)    processing time of vessel v             /v1 8, v2 4, v3 4, v4 6, v5 6, v6 4, v7 9, v8 3, v9 3, v10 5, v11 4, v12 6, v13 9, v14 5, v15 7, v16 6, v17 9, v18 5, v19 7, v20 8, v21 6, v22 10, v23 10, v24 9, v25 4, v26 3, v27 5, v28 2, v29 9, v30 3, v31 4, v32 4, v33 2, v34 3, v35 8, v36 4, v37 6, v38 3, v39 4, v40 8, v41 5, v42 6, v43 4, v44 4, v45 10, v46 9, v47 2, v48 9, v49 6, v50 10/
LEN(V)   length of vessel v                      /v1 1, v2 2, v3 2, v4 1, v5 3, v6 1, v7 1, v8 2, v9 2, v10 3, v11 1, v12 2, v13 1, v14 1, v15 1, v16 1, v17 3, v18 1, v19 2, v20 3, v21 2, v22 3, v23 2, v24 2, v25 3, v26 2, v27 2, v28 1, v29 1, v30 3, v31 1, v32 2, v33 3, v34 2, v35 2, v36 1, v37 1, v38 2, v39 3, v40 2, v41 2, v42 1, v43 1, v44 1, v45 2, v46 1, v47 3, v48 1, v49 2, v50 2/
T1(V)    expected time to arrival of vessel v    /v1 16, v2 6, v3 12, v4 25, v5 12, v6 27, v7 18, v8 27, v9 18, v10 12, v11 14, v12 8, v13 1, v14 17, v15 13, v16 11, v17 29, v18 1, v19 8, v20 26, v21 4, v22 16, v23 13, v24 18, v25 6, v26 22, v27 30, v28 6, v29 2, v30 6, v31 15, v32 27, v33 13, v34 1, v35 25, v36 7, v37 14, v38 2, v39 23, v40 21, v41 24, v42 3, v43 18, v44 12, v45 16, v46 29, v47 30, v48 12, v49 24, v50 15/
T2(V)    expected time to departure of vessel v  /v1 32, v2 14, v3 20, v4 37, v5 24, v6 35, v7 36, v8 33, v9 24, v10 22, v11 22, v12 20, v13 19, v14 27, v15 27, v16 23, v17 47, v18 11, v19 22, v20 42, v21 16, v22 36, v23 33, v24 36, v25 14, v26 28, v27 40, v28 10, v29 20, v30 12, v31 23, v32 35, v33 17, v34 7, v35 41, v36 15, v37 26, v38 8, v39 31, v40 37, v41 34, v42 15, v43 26, v44 20, v45 36, v46 47, v47 34, v48 30, v49 36, v50 35/
S(B)     available start time of berth b         /b1 7, b2 9, b3 4, b4 3, b5 10, b6 1, b7 2, b8 15, b9 13, b10 9, b11 1, b12 6, b13 9, b14 8, b15 4, b16 8, b17 6, b18 3, b19 9, b20 6, b21 3, b22 1, b23 6, b24 1, b25 2/
E(B)     available end time of berth b           /b1 43, b2 49, b3 44, b4 47, b5 45, b6 41, b7 45, b8 45, b9 45, b10 44, b11 42, b12 50, b13 38, b14 35, b15 35, b16 48, b17 41, b18 48, b19 40, b20 42, b21 43, b22 45, b23 47, b24 44, b25 44/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v2         14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v3         20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v4         37        37        37        37        37        37        37        37        37        37        37        37        37        35        35        37        37        37        37        37        37        37        37        37        37
v5         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v6         35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v7         36        36        36        36        36        36        36        36        36        36        36        36        36        35        35        36        36        36        36        36        36        36        36        36        36
v8         33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v9         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v10        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v11        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v12        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v13        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v14        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v15        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v16        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v17        43        47        44        47        45        41        45        45        45        44        42        47        38        35        35        47        41        47        40        42        43        45        47        44        44
v18        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11
v19        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v20        42        42        42        42        42        41        42        42        42        42        42        42        38        35        35        42        41        42        40        42        42        42        42        42        42
v21        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v22        36        36        36        36        36        36        36        36        36        36        36        36        36        35        35        36        36        36        36        36        36        36        36        36        36
v23        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33        33
v24        36        36        36        36        36        36        36        36        36        36        36        36        36        35        35        36        36        36        36        36        36        36        36        36        36
v25        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v26        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v27        40        40        40        40        40        40        40        40        40        40        40        40        38        35        35        40        40        40        40        40        40        40        40        40        40
v28        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10
v29        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v30        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v31        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v32        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v33        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v34        7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7         7
v35        41        41        41        41        41        41        41        41        41        41        41        41        38        35        35        41        41        41        40        41        41        41        41        41        41
v36        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v37        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v38        8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8         8
v39        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v40        37        37        37        37        37        37        37        37        37        37        37        37        37        35        35        37        37        37        37        37        37        37        37        37        37
v41        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v42        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v43        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v44        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v45        36        36        36        36        36        36        36        36        36        36        36        36        36        35        35        36        36        36        36        36        36        36        36        36        36
v46        43        47        44        47        45        41        45        45        45        44        42        47        38        35        35        47        41        47        40        42        43        45        47        44        44
v47        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v48        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v49        36        36        36        36        36        36        36        36        36        36        36        36        36        35        35        36        36        36        36        36        36        36        36        36        36
v50        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35;

TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20       b21       b22       b23       b24       b25
v1         16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v2         7         9         6         6         10        6         6         15        13        9         6         6         9         8         6         8         6         6         9         6         6         6         6         6         6
v3         12        12        12        12        12        12        12        15        13        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v4         25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v5         12        12        12        12        12        12        12        15        13        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v6         27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v7         18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v8         27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v9         18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v10        12        12        12        12        12        12        12        15        13        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v11        14        14        14        14        14        14        14        15        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v12        8         9         8         8         10        8         8         15        13        9         8         8         9         8         8         8         8         8         9         8         8         8         8         8         8
v13        7         9         4         3         10        1         2         15        13        9         1         6         9         8         4         8         6         3         9         6         3         1         6         1         2
v14        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17        17
v15        13        13        13        13        13        13        13        15        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v16        11        11        11        11        11        11        11        15        13        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11        11
v17        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v18        7         9         4         3         10        1         2         15        13        9         1         6         9         8         4         8         6         3         9         6         3         1         6         1         2
v19        8         9         8         8         10        8         8         15        13        9         8         8         9         8         8         8         8         8         9         8         8         8         8         8         8
v20        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v21        7         9         4         4         10        4         4         15        13        9         4         6         9         8         4         8         6         4         9         6         4         4         6         4         4
v22        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v23        13        13        13        13        13        13        13        15        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v24        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v25        7         9         6         6         10        6         6         15        13        9         6         6         9         8         6         8         6         6         9         6         6         6         6         6         6
v26        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v27        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v28        7         9         6         6         10        6         6         15        13        9         6         6         9         8         6         8         6         6         9         6         6         6         6         6         6
v29        7         9         4         3         10        2         2         15        13        9         2         6         9         8         4         8         6         3         9         6         3         2         6         2         2
v30        7         9         6         6         10        6         6         15        13        9         6         6         9         8         6         8         6         6         9         6         6         6         6         6         6
v31        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v32        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v33        13        13        13        13        13        13        13        15        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v34        7         9         4         3         10        1         2         15        13        9         1         6         9         8         4         8         6         3         9         6         3         1         6         1         2
v35        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v36        7         9         7         7         10        7         7         15        13        9         7         7         9         8         7         8         7         7         9         7         7         7         7         7         7
v37        14        14        14        14        14        14        14        15        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v38        7         9         4         3         10        2         2         15        13        9         2         6         9         8         4         8         6         3         9         6         3         2         6         2         2
v39        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v40        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v41        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v42        7         9         4         3         10        3         3         15        13        9         3         6         9         8         4         8         6         3         9         6         3         3         6         3         3
v43        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v44        12        12        12        12        12        12        12        15        13        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v45        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v46        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v47        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v48        12        12        12        12        12        12        12        15        13        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12        12
v49        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v50        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15;

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

