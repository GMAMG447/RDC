%        CLÁUSULA DE HORN
%
%          a /\ b -> c
%
%  -CLÁUSULA DE HORN?
%

%      a \/ b -> c ==> a -> c    NO
%                      b -> c
%
%      a -> b /\ c ==> a -> b    NO
%                      a -> c
%
%       a -> b \/ c              NO
