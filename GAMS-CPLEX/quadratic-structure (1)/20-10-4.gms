SETS
V        vessels                                 /v1*v20/
B        berths                                  /b1*b10/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b3,b7/
CB2(B)   not assigned corner berths              /b4,b8/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 5, v2 7, v3 4, v4 7, v5 7, v6 4, v7 6, v8 8, v9 6, v10 8, v11 9, v12 10, v13 6, v14 7, v15 5, v16 5, v17 9, v18 3, v19 7, v20 7/
PO(V)    processing time of vessel v             /v1 2, v2 7, v3 3, v4 7, v5 8, v6 5, v7 2, v8 5, v9 2, v10 4, v11 7, v12 5, v13 3, v14 6, v15 4, v16 6, v17 9, v18 2, v19 8, v20 10/
LEN(V)   length of vessel v                      /v1 1, v2 2, v3 2, v4 3, v5 1, v6 2, v7 1, v8 3, v9 3, v10 2, v11 1, v12 2, v13 1, v14 1, v15 2, v16 3, v17 1, v18 1, v19 2, v20 2/
T1(V)    expected time to arrival of vessel v    /v1 7, v2 8, v3 4, v4 15, v5 17, v6 29, v7 21, v8 7, v9 4, v10 15, v11 25, v12 12, v13 28, v14 29, v15 27, v16 23, v17 14, v18 16, v19 10, v20 29/
T2(V)    expected time to departure of vessel v  /v1 11, v2 22, v3 10, v4 29, v5 33, v6 39, v7 25, v8 17, v9 8, v10 23, v11 39, v12 22, v13 34, v14 41, v15 35, v16 35, v17 32, v18 20, v19 26, v20 49/
S(B)     available start time of berth b         /b1 1, b2 3, b3 5, b4 3, b5 3, b6 12, b7 15, b8 8, b9 6, b10 4/
E(B)     available end time of berth b           /b1 37, b2 50, b3 50, b4 43, b5 38, b6 35, b7 49, b8 43, b9 47, b10 38/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10
v1         11        11        11        11        11        11        11        11        11        11
v2         22        22        22        22        22        22        22        22        22        22
v3         10        10        10        10        10        10        10        10        10        10
v4         29        29        29        29        29        29        29        29        29        29
v5         33        33        33        33        33        33        33        33        33        33
v6         37        39        39        39        38        35        39        39        39        38
v7         25        25        25        25        25        25        25        25        25        25
v8         17        17        17        17        17        17        17        17        17        17
v9         8         8         8         8         8         8         8         8         8         8
v10        23        23        23        23        23        23        23        23        23        23
v11        37        39        39        39        38        35        39        39        39        38
v12        22        22        22        22        22        22        22        22        22        22
v13        34        34        34        34        34        34        34        34        34        34
v14        37        41        41        41        38        35        41        41        41        38
v15        35        35        35        35        35        35        35        35        35        35
v16        35        35        35        35        35        35        35        35        35        35
v17        32        32        32        32        32        32        32        32        32        32
v18        20        20        20        20        20        20        20        20        20        20
v19        26        26        26        26        26        26        26        26        26        26
v20        37        49        49        43        38        35        49        43        47        38
;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10
v1         7         7         7         7         7         12        15        8         7         7
v2         8         8         8         8         8         12        15        8         8         8
v3         4         4         5         4         4         12        15        8         6         4
v4         15        15        15        15        15        15        15        15        15        15
v5         17        17        17        17        17        17        17        17        17        17
v6         29        29        29        29        29        29        29        29        29        29
v7         21        21        21        21        21        21        21        21        21        21
v8         7         7         7         7         7         12        15        8         7         7
v9         4         4         5         4         4         12        15        8         6         4
v10        15        15        15        15        15        15        15        15        15        15
v11        25        25        25        25        25        25        25        25        25        25
v12        12        12        12        12        12        12        15        12        12        12
v13        28        28        28        28        28        28        28        28        28        28
v14        29        29        29        29        29        29        29        29        29        29
v15        27        27        27        27        27        27        27        27        27        27
v16        23        23        23        23        23        23        23        23        23        23
v17        14        14        14        14        14        14        15        14        14        14
v18        16        16        16        16        16        16        16        16        16        16
v19        10        10        10        10        10        12        15        10        10        10
v20        29        29        29        29        29        29        29        29        29        29
;

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
CONST5(V,CB,CB2,T) $ (LEN(V)>=2 AND ORD(T)>=L(V,CB) AND ORD(T)<=(U(V,CB)-PO(V)) AND ORD(CB)=ORD(CB2))..                                                               (X(V,CB,T)+X(V,CB2,T)) =l= 1;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;
