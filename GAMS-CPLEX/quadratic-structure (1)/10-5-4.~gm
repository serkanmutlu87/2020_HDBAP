SETS
V        vessels                                 /v1*v10/
B        berths                                  /b1*b5/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b1,b4/
CB2(B)   not assigned corner berths              /b2,b5/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 5, v2 10, v3 5, v4 8, v5 7, v6 5, v7 5, v8 2, v9 7, v10 10/
PO(V)    processing time of vessel v             /v1 9, v2 4, v3 7, v4 5, v5 2, v6 10, v7 9, v8 7, v9 2, v10 5/
LEN(V)   length of vessel v                      /v1 3, v2 1, v3 1, v4 2, v5 1, v6 3, v7 2, v8 1, v9 2, v10 2/
T1(V)    expected time to arrival of vessel v    /v1 18, v2 8, v3 20, v4 27, v5 14, v6 4, v7 30, v8 28, v9 30, v10 14/
T2(V)    expected time to departure of vessel v  /v1 36, v2 16, v3 34, v4 37, v5 18, v6 24, v7 48, v8 42, v9 34, v10 24/
S(B)     available start time of berth b         /b1 8, b2 3, b3 3, b4 4, b5 8/
E(B)     available end time of berth b           /b1 38, b2 42, b3 50, b4 49, b5 42/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         36        36        36        36        36
v2         16        16        16        16        16
v3         34        34        34        34        34
v4         37        37        37        37        37
v5         18        18        18        18        18
v6         24        24        24        24        24
v7         38        42        48        48        42
v8         38        42        42        42        42
v9         34        34        34        34        34
v10        24        24        24        24        24;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         18        18        18        18        18
v2         8         8         8         8         8
v3         20        20        20        20        20
v4         27        27        27        27        27
v5         14        14        14        14        14
v6         8         4         4         4         8
v7         30        30        30        30        30
v8         28        28        28        28        28
v9         30        30        30        30        30
v10        14        14        14        14        14;

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
