SETS
V        vessels                                 /v1*v10/
B        berths                                  /b1*b5/
T        times                                   /t1*t50/
CB(B)    corner berths                           /b1,b4/
CB2(B)   not assigned corner berths              /b2,b5/;
Alias(T,TO,TT1,TT2);
Alias(B,B1,B2);

PARAMETERS
P(V)     priority value of vessel v              /v1 7, v2 3, v3 2, v4 5, v5 7, v6 10, v7 3, v8 3, v9 7, v10 4/
PO(V)    processing time of vessel v             /v1 6, v2 4, v3 6, v4 5, v5 2, v6 2, v7 7, v8 6, v9 9, v10 6/
LEN(V)   length of vessel v                      /v1 3, v2 1, v3 1, v4 2, v5 1, v6 3, v7 2, v8 2, v9 1, v10 2/
T1(V)    expected time to arrival of vessel v    /v1 9, v2 8, v3 12, v4 14, v5 30, v6 24, v7 27, v8 20, v9 18, v10 2/
T2(V)    expected time to departure of vessel v  /v1 21, v2 16, v3 24, v4 24, v5 34, v6 28, v7 41, v8 32, v9 36, v10 14/
S(B)     available start time of berth b         /b1 7, b2 1, b3 2, b4 1, b5 3/
E(B)     available end time of berth b           /b1 44, b2 45, b3 50, b4 48, b5 37/;

TABLE
U(V,B)   latest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         21        21        21        21        21
v2         16        16        16        16        16
v3         24        24        24        24        24
v4         24        24        24        24        24
v5         34        34        34        34        34
v6         28        28        28        28        28
v7         37        35        36        38        37
v8         32        32        32        32        32
v9         36        35        36        36        36
v10        14        14        14        14        14;
TABLE
L(V,B)   earliest time the vessel v can be assigned to berth b
           b1        b2        b3        b4        b5
v1         9         9         9         9         9
v2         8         8         8         8         8
v3         12        12        12        12        12
v4         14        14        14        14        14
v5         30        30        30        30        30
v6         24        24        24        24        24
v7         27        27        27        27        27
v8         20        20        20        20        20
v9         18        18        18        18        18
v10        7         2         2         2         3;

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
