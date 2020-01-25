SETS
V        vessels                                 /v1*v40/
B        berths                                  /b1*b20/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b6,b14/
CB2(B)   not assigned corner berths              /b7,b15/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 6, v2 5, v3 8, v4 7, v5 3, v6 6, v7 4, v8 5, v9 7, v10 9, v11 6, v12 2, v13 3, v14 2, v15 9, v16 5, v17 4, v18 10, v19 9, v20 2, v21 5, v22 6, v23 3, v24 5, v25 6, v26 10, v27 3, v28 4, v29 5, v30 4, v31 5, v32 8, v33 9, v34 3, v35 9, v36 8, v37 8, v38 10, v39 10, v40 3/
PO(V)    processing time of vessel v             /v1 7, v2 7, v3 4, v4 8, v5 3, v6 6, v7 9, v8 7, v9 4, v10 4, v11 8, v12 3, v13 4, v14 5, v15 8, v16 9, v17 3, v18 2, v19 9, v20 4, v21 7, v22 2, v23 5, v24 7, v25 2, v26 4, v27 4, v28 4, v29 10, v30 8, v31 2, v32 5, v33 3, v34 10, v35 4, v36 6, v37 4, v38 5, v39 8, v40 9/
LEN(V)   length of vessel v                      /v1 3, v2 3, v3 2, v4 2, v5 2, v6 2, v7 2, v8 1, v9 1, v10 1, v11 2, v12 1, v13 1, v14 1, v15 3, v16 3, v17 2, v18 1, v19 1, v20 1, v21 3, v22 3, v23 3, v24 1, v25 2, v26 1, v27 2, v28 1, v29 2, v30 2, v31 2, v32 1, v33 2, v34 1, v35 3, v36 2, v37 1, v38 2, v39 2, v40 3/
T1(V)    expected time to arrival of vessel v    /v1 15, v2 11, v3 23, v4 21, v5 30, v6 16, v7 12, v8 24, v9 15, v10 6, v11 4, v12 14, v13 30, v14 24, v15 25, v16 5, v17 15, v18 30, v19 6, v20 26, v21 22, v22 18, v23 11, v24 6, v25 27, v26 5, v27 16, v28 8, v29 19, v30 13, v31 6, v32 8, v33 26, v34 25, v35 7, v36 23, v37 18, v38 10, v39 25, v40 30/
T2(V)    expected time to departure of vessel v  /v1 29, v2 25, v3 31, v4 37, v5 36, v6 28, v7 30, v8 38, v9 23, v10 14, v11 20, v12 20, v13 38, v14 34, v15 41, v16 23, v17 21, v18 34, v19 24, v20 34, v21 36, v22 22, v23 21, v24 20, v25 31, v26 13, v27 24, v28 16, v29 39, v30 29, v31 10, v32 18, v33 32, v34 45, v35 15, v36 35, v37 26, v38 20, v39 41, v40 48/
S(B)     available start time of berth b         /b1 3, b2 5, b3 5, b4 1, b5 12, b6 8, b7 8, b8 5, b9 1, b10 1, b11 1, b12 1, b13 4, b14 8, b15 13, b16 15, b17 11, b18 4, b19 4, b20 4/
E(B)     available end time of berth b           /b1 39, b2 38, b3 40, b4 40, b5 48, b6 50, b7 50, b8 40, b9 40, b10 46, b11 43, b12 38, b13 36, b14 50, b15 50, b16 50, b17 36, b18 40, b19 40, b20 40/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20
v1         29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v2         25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v3         31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v4         37        37        37        37        37        37        37        37        37        37        37        37        36        37        37        37        36        37        37        37
v5         36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v6         28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28        28
v7         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v8         38        38        38        38        38        38        38        38        38        38        38        38        36        38        38        38        36        38        38        38
v9         23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v10        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14
v11        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v12        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v13        38        38        38        38        38        38        38        38        38        38        38        38        36        38        38        38        36        38        38        38
v14        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v15        39        38        40        40        41        41        41        40        40        41        41        38        36        41        41        41        36        40        40        40
v16        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v17        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v18        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v19        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v20        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34        34
v21        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36        36
v22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v23        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v24        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v25        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31        31
v26        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13
v27        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v28        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v29        39        38        39        39        39        39        39        39        39        39        39        38        36        39        39        39        36        39        39        39
v30        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29        29
v31        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10        10
v32        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v33        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32        32
v34        39        38        40        40        45        45        45        40        40        45        43        38        36        45        45        45        36        40        40        40
v35        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v36        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35        35
v37        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v38        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20        20
v39        39        38        40        40        41        41        41        40        40        41        41        38        36        41        41        41        36        40        40        40
v40        39        38        40        40        48        48        48        40        40        46        43        38        36        48        48        48        36        40        40        40;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10       b11       b12       b13       b14       b15       b16       b17       b18       b19       b20
v1         15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v2         11        11        11        11        12        11        11        11        11        11        11        11        11        11        13        15        11        11        11        11
v3         23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v4         21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21        21
v5         30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v6         16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v7         12        12        12        12        12        12        12        12        12        12        12        12        12        12        13        15        12        12        12        12
v8         24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v9         15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v10        6         6         6         6         12        8         8         6         6         6         6         6         6         8         13        15        11        6         6         6
v11        4         5         5         4         12        8         8         5         4         4         4         4         4         8         13        15        11        4         4         4
v12        14        14        14        14        14        14        14        14        14        14        14        14        14        14        14        15        14        14        14        14
v13        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v14        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24        24
v15        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v16        5         5         5         5         12        8         8         5         5         5         5         5         5         8         13        15        11        5         5         5
v17        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15        15
v18        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30        30
v19        6         6         6         6         12        8         8         6         6         6         6         6         6         8         13        15        11        6         6         6
v20        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v21        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22        22
v22        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v23        11        11        11        11        12        11        11        11        11        11        11        11        11        11        13        15        11        11        11        11
v24        6         6         6         6         12        8         8         6         6         6         6         6         6         8         13        15        11        6         6         6
v25        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27        27
v26        5         5         5         5         12        8         8         5         5         5         5         5         5         8         13        15        11        5         5         5
v27        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16        16
v28        8         8         8         8         12        8         8         8         8         8         8         8         8         8         13        15        11        8         8         8
v29        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19        19
v30        13        13        13        13        13        13        13        13        13        13        13        13        13        13        13        15        13        13        13        13
v31        6         6         6         6         12        8         8         6         6         6         6         6         6         8         13        15        11        6         6         6
v32        8         8         8         8         12        8         8         8         8         8         8         8         8         8         13        15        11        8         8         8
v33        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26        26
v34        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
v35        7         7         7         7         12        8         8         7         7         7         7         7         7         8         13        15        11        7         7         7
v36        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23        23
v37        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18        18
v38        10        10        10        10        12        10        10        10        10        10        10        10        10        10        13        15        11        10        10        10
v39        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25        25
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

