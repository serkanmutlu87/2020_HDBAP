SETS
V        vessels                                 /v1*v10/
B        berths                                  /b1*b5/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b1,b4/
CB2(B)   not assigned corner berths              /b2,b5/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 5, v2 9, v3 4, v4 6, v5 5, v6 8, v7 5, v8 10, v9 4, v10 2/
PO(V)    processing time of vessel v             /v1 5, v2 8, v3 4, v4 5, v5 8, v6 8, v7 2, v8 7, v9 8, v10 10/
LEN(V)   length of vessel v                      /v1 1, v2 2, v3 2, v4 3, v5 1, v6 1, v7 2, v8 1, v9 2, v10 3/
T1(V)    expected time to arrival of vessel v    /v1 13, v2 3, v3 11, v4 29, v5 23, v6 30, v7 14, v8 14, v9 30, v10 21/
T2(V)    expected time to departure of vessel v  /v1 23, v2 19, v3 19, v4 39, v5 39, v6 46, v7 18, v8 28, v9 46, v10 41/
S(B)     available start time of berth b         /b1 4, b2 9, b3 1, b4 3, b5 5/
E(B)     available end time of berth b           /b1 43, b2 50, b3 48, b4 38, b5 37/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         23        23        23        23        23
v2         19        19        19        19        19
v3         19        19        19        19        19
v4         39        39        39        38        37
v5         39        39        39        38        37
v6         43        46        46        38        37
v7         18        18        18        18        18
v8         28        28        28        28        28
v9         43        46        46        38        37
v10        41        41        41        38        37;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         13        13        13        13        13
v2         4         9         3         3         5
v3         11        11        11        11        11
v4         29        29        29        29        29
v5         23        23        23        23        23
v6         30        30        30        30        30
v7         14        14        14        14        14
v8         14        14        14        14        14
v9         30        30        30        30        30
v10        21        21        21        21        21
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
CONST5(V,CB,CB2,T) $ (LEN(V)>=2 AND ORD(T)>=L(V,CB) AND ORD(T)<=(U(V,CB)-PO(V)) AND ORD(CB)=ORD(CB2))..                                        (X(V,CB,T)+X(V,CB2,T)) =l= 1;
OBJECTIVE..                                                                                                                                      SUM( V, SUM( B, SUM( T $ (ORD(T)>=L(V,B) AND ORD(T)<=(U(V,B)-PO(V))), P(V)*(X(V,B,T)/LEN(V))*(ORD(T) + PO(V) - T1(V))))) =e= Z;

option optCR = 0;
MODEL                    case1  /all/;
SOLVE                    case1 using MIP minimizing Z;
DISPLAY                  X.l;

