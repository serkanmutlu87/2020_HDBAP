SETS
V        vessels                                 /v1*v10/
B        berths                                  /b1*b5/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b1,b4/
CB2(B)   not assigned corner berths              /b2,b5/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 6, v2 7, v3 10, v4 10, v5 8, v6 6, v7 5, v8 5, v9 8, v10 8/
PO(V)    processing time of vessel v             /v1 7, v2 2, v3 3, v4 3, v5 6, v6 3, v7 4, v8 10, v9 3, v10 7/
LEN(V)   length of vessel v                      /v1 1, v2 1, v3 2, v4 1, v5 2, v6 2, v7 3, v8 3, v9 1, v10 2/
T1(V)    expected time to arrival of vessel v    /v1 22, v2 4, v3 24, v4 25, v5 3, v6 27, v7 7, v8 13, v9 9, v10 30/
T2(V)    expected time to departure of vessel v  /v1 36, v2 8, v3 30, v4 31, v5 15, v6 33, v7 15, v8 33, v9 15, v10 44/
S(B)     available start time of berth b         /b1 4, b2 3, b3 3, b4 8, b5 5/
E(B)     available end time of berth b           /b1 36, b2 50, b3 39, b4 50, b5 41/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         36        36        36        36        36
v2         8         8         8         8         8
v3         30        30        30        30        30
v4         31        31        31        31        31
v5         15        15        15        15        15
v6         33        33        33        33        33
v7         15        15        15        15        15
v8         33        33        33        33        33
v9         15        15        15        15        15
v10        36        44        39        44        41;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         22        22        22        22        22
v2         4         4         4         8         5
v3         24        24        24        24        24
v4         25        25        25        25        25
v5         4         3         3         8         5
v6         27        27        27        27        27
v7         7         7         7         8         7
v8         13        13        13        13        13
v9         9         9         9         9         9
v10        30        30        30        30        30
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
