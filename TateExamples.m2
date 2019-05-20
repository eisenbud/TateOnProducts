
restart
uninstallPackage "TateOnProducts"
installPackage "TateOnProducts"

--Section 2
(S,E)=productOfProjectiveSpaces {1,2};
M = S^1
T = tateResolution(M,{-3,-3},{0,0})
betti T


--Section 3
(S,E) = productOfProjectiveSpaces{1,2};
low  = {-3,-3};high = {3,3};
eT = eulerPolynomialTable(S^1, low,high);
eT#{2,-3}
cohomologyMatrix(S^1, low,high)

--Section 4
M =  S^{{1,1}} ** ker vars S;
T=tateResolution(M,low,high);
W = beilinsonWindow T	 
B = beilinsonMonad M
isIsomorphic(HH^0 B ,M)
isIsomorphic (truncate({0,0},HH^0 B),truncate({0,0},M))


--Section 5
cohomologyMatrix(S^1, {-3,-3},{3,3})
T = tateResolution(S^1,{-3,-3},{3,3});
s = strand(T,{-3,0},{0});
betti s
--total grading, e.g. rows of Betti tables, is correct
--but off vs pushforward-grading.
s = strand(T,{-3,0},{0})[3];
betti s
    

s = strand(T,{-3,0},{1})[3];
betti s

viewHelp strand

--Section 6
r = cornerComplex(S^1,{0,0},{-4,-4},{3,3});
betti r
          

(S,E)=productOfProjectiveSpaces {1,2};
M = S^1; c = {0,0}; low = {-4,-4}; high = {3,3};
T = tateResolution(M,low,high)
betti T
T' = trivialHomologicalTruncation(T,-sum high, -sum low);
betti cornerComplex(T',{1,2})

r = cornerComplex(S^1,{0,0},{-4,-4},{3,3});
betti r
r' = cornerComplex(S^1,{2,2},{-4,-4},{3,3});
betti r'


hilbertFunction({2,2},S)