SETS
V        vessels                                 /v1*v20/
B        berths                                  /b1*b10/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b3,b7/
CB2(B)   not assigned corner berths              /b4,b8/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 4, v2 2, v3 9, v4 7, v5 2, v6 3, v7 10, v8 2, v9 3, v10 7, v11 6, v12 5, v13 2, v14 5, v15 8, v16 2, v17 9, v18 8, v19 3, v20 6/
PO(V)    processing time of vessel v             /v1 4, v2 7, v3 8, v4 3, v5 5, v6 2, v7 9, v8 3, v9 6, v10 5, v11 8, v12 9, v13 9, v14 8, v15 5, v16 9, v17 2, v18 6, v19 9, v20 4/
LEN(V)   length of vessel v                      /v1 1, v2 1, v3 2, v4 1, v5 2, v6 3, v7 2, v8 2, v9 3, v10 3, v11 1, v12 2, v13 3, v14 2, v15 1, v16 1, v17 2, v18 2, v19 1, v20 1/
T1(V)    expected time to arrival of vessel v    /v1 9, v2 22, v3 22, v4 12, v5 11, v6 20, v7 29, v8 26, v9 16, v10 28, v11 26, v12 11, v13 30, v14 18, v15 29, v16 11, v17 15, v18 20, v19 2, v20 12/
T2(V)    expected time to departure of vessel v  /v1 17, v2 36, v3 38, v4 18, v5 21, v6 24, v7 47, v8 32, v9 28, v10 38, v11 42, v12 29, v13 48, v14 34, v15 39, v16 29, v17 19, v18 32, v19 20, v20 20/
S(B)     available start time of berth b         /b1 2, b2 2, b3 8, b4 12, b5 6, b6 3, b7 13, b8 15, b9 6, b10 4/
E(B)     available end time of berth b           /b1 42, b2 50, b3 50, b4 48, b5 39, b6 43, b7 47, b8 49, b9 38, b10 38/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
          b1        b2        b3        b4        b5        b6        b7        b8        b9        b10
v1        17        17        17        17        17        17        17        17        17        17
v2        36        36        36        36        36        36        36        36        36        36
v3        38        38        38        38        38        38        38        38        38        38
v4        18        18        18        18        18        18        18        18        18        18
v5        21        21        21        21        21        21        21        21        21        21
v6        24        24        24        24        24        24        24        24        24        24
v7        42        47        47        47        39        43        47        47        38        38
v8        32        32        32        32        32        32        32        32        32        32
v9        28        28        28        28        28        28        28        28        28        28
v10       38        38        38        38        38        38        38        38        38        38
v11       42        42        42        42        39        42        42        42        38        38
v12       29        29        29        29        29        29        29        29        29        29
v13       42        48        48        48        39        43        47        48        38        38
v14       34        34        34        34        34        34        34        34        34        34
v15       39        39        39        39        39        39        39        39        38        38
v16       29        29        29        29        29        29        29        29        29        29
v17       19        19        19        19        19        19        19        19        19        19
v18       32        32        32        32        32        32        32        32        32        32
v19       20        20        20        20        20        20        20        20        20        20
v20       20        20        20        20        20        20        20        20        20        20;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
          b1        b2        b3        b4        b5        b6        b7        b8        b9        b10
v1        9         9         9         12        9         9         13        15        9         9
v2        22        22        22        22        22        22        22        22        22        22
v3        22        22        22        22        22        22        22        22        22        22
v4        12        12        12        12        12        12        13        15        12        12
v5        11        11        11        12        11        11        13        15        11        11
v6        20        20        20        20        20        20        20        20        20        20
v7        29        29        29        29        29        29        29        29        29        29
v8        26        26        26        26        26        26        26        26        26        26
v9        16        16        16        16        16        16        16        16        16        16
v10       28        28        28        28        28        28        28        28        28        28
v11       26        26        26        26        26        26        26        26        26        26
v12       11        11        11        12        11        11        13        15        11        11
v13       30        30        30        30        30        30        30        30        30        30
v14       18        18        18        18        18        18        18        18        18        18
v15       29        29        29        29        29        29        29        29        29        29
v16       11        11        11        12        11        11        13        15        11        11
v17       15        15        15        15        15        15        15        15        15        15
v18       20        20        20        20        20        20        20        20        20        20
v19       2         2         8         12        6         3         13        15        6         4
v20       12        12        12        12        12        12        13        15        12        12;

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
