goOn = false;
while true
    try
    for i = 1:5
        for j = 1:10
            for k = 10:100
                if i+k+j > 30 && ~goOn
                    throw(MException('MyError:TooDeep','I am at i = %d, j= %d, k = %d',i,j,k));
                end
                
                if i+k+j >60
                    throw(MException('MyError:Die','I died at i = %d, j= %d, k = %d',i,j,k));
                end
                
            end
        end
    end
    catch E
        if strcmp(E.identifier,'MyError:TooDeep')
            disp 'Too Young Too Simple, Go on!';
            goOn = true;
        end
        if strcmp(E.identifier,'MyError:Die')
            disp 'Oh! I am Sorry';
            return;
        end
    end
end