SETS
V        vessels                                 /v1*v20/
B        berths                                  /b1*b10/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b3,b7/
CB2(B)   not assigned corner berths              /b4,b8/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 2, v2 4, v3 7, v4 8, v5 8, v6 7, v7 5, v8 8, v9 10, v10 2, v11 3, v12 10, v13 8, v14 4, v15 8, v16 5, v17 6, v18 5, v19 6, v20 4/
PO(V)    processing time of vessel v             /v1 3, v2 4, v3 3, v4 8, v5 3, v6 9, v7 10, v8 3, v9 2, v10 3, v11 6, v12 4, v13 3, v14 5, v15 7, v16 3, v17 3, v18 4, v19 4, v20 3/
LEN(V)   length of vessel v                      /v1 1, v2 2, v3 1, v4 1, v5 3, v6 1, v7 2, v8 2, v9 3, v10 1, v11 1, v12 2, v13 3, v14 1, v15 2, v16 1, v17 3, v18 2, v19 2, v20 2/
T1(V)    expected time to arrival of vessel v    /v1 12, v2 14, v3 22, v4 18, v5 17, v6 6, v7 12, v8 9, v9 7, v10 28, v11 29, v12 2, v13 9, v14 4, v15 7, v16 1, v17 18, v18 26, v19 17, v20 21/
T2(V)    expected time to departure of vessel v  /v1 18, v2 22, v3 28, v4 34, v5 23, v6 24, v7 32, v8 15, v9 11, v10 34, v11 41, v12 10, v13 15, v14 14, v15 21, v16 7, v17 24, v18 34, v19 25, v20 27/
S(B)     available start time of berth b         /b1 2, b2 5, b3 9, b4 4, b5 6, b6 8, b7 1, b8 2, b9 5, b10 1/
E(B)     available end time of berth b           /b1 38, b2 43, b3 50, b4 47, b5 44, b6 39, b7 44, b8 49, b9 36, b10 38/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10
v1         18        18        18        18        18        18        18        18        18        18
v2         22        22        22        22        22        22        22        22        22        22
v3         28        28        28        28        28        28        28        28        28        28
v4         34        34        34        34        34        34        34        34        34        34
v5         23        23        23        23        23        23        23        23        23        23
v6         24        24        24        24        24        24        24        24        24        24
v7         32        32        32        32        32        32        32        32        32        32
v8         15        15        15        15        15        15        15        15        15        15
v9         11        11        11        11        11        11        11        11        11        11
v10        34        34        34        34        34        34        34        34        34        34
v11        38        41        41        41        41        39        41        41        36        38
v12        10        10        10        10        10        10        10        10        10        10
v13        15        15        15        15        15        15        15        15        15        15
v14        14        14        14        14        14        14        14        14        14        14
v15        21        21        21        21        21        21        21        21        21        21
v16        7         7         7         7         7         7         7         7         7         7
v17        24        24        24        24        24        24        24        24        24        24
v18        34        34        34        34        34        34        34        34        34        34
v19        25        25        25        25        25        25        25        25        25        25
v20        27        27        27        27        27        27        27        27        27        27
;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5        b6        b7        b8        b9        b10
v1         12        12        12        12        12        12        12        12        12        12
v2         14        14        14        14        14        14        14        14        14        14
v3         22        22        22        22        22        22        22        22        22        22
v4         18        18        18        18        18        18        18        18        18        18
v5         17        17        17        17        17        17        17        17        17        17
v6         6         6         9         6         6         8         6         6         6         6
v7         12        12        12        12        12        12        12        12        12        12
v8         9         9         9         9         9         9         9         9         9         9
v9         7         7         9         7         7         8         7         7         7         7
v10        28        28        28        28        28        28        28        28        28        28
v11        29        29        29        29        29        29        29        29        29        29
v12        2         5         9         4         6         8         2         2         5         2
v13        9         9         9         9         9         9         9         9         9         9
v14        4         5         9         4         6         8         4         4         5         4
v15        7         7         9         7         7         8         7         7         7         7
v16        2         5         9         4         6         8         1         2         5         1
v17        18        18        18        18        18        18        18        18        18        18
v18        26        26        26        26        26        26        26        26        26        26
v19        17        17        17        17        17        17        17        17        17        17
v20        21        21        21        21        21        21        21        21        21        21
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
