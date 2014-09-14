function COND = Cus_Generate_condition_index(conds)
% Input a array like [2,3]
% Output a condition matrix like 
%[ 2 , 3;
%  1 , 3;
%  2 , 2;
%  1 , 2;
%  2 , 1;
%  1 , 1] 
% WY 2014-04
possibilities = prod(conds);
nConds= length(conds);
COND=zeros(possibilities,nConds);% init
for i=1:nConds
    if i==1
        repeat = 1;
    else
        repeat = repeat*conds(i-1);
    end
    k=conds(i);
    for j=1:repeat:possibilities
        COND(j:j+repeat-1,i)=k;
        k=k-1;
        if ~k
             k=conds(i);
        end
    end
    
end
end

