function [ sol ] = generateSolution( m )


sol = zeros(1,m);
cs = zeros(1,m);
% dcs = 0;

x = round(1+(m-1)*rand(1));
sol(1) = x;
cs(1) = x;
y = false;


 for i=2:m
    x = round(1+(m-1)*rand(1));
    j = 1;    
    
    while ismember(x, sol) ~= 0
         %x = round(1+(m-1)*rand(1));  
        x = randi([1,m]);
    end
    
     if x == 0
        x = x + 1;
     end
    
    while(j<=i) && y == false
        if x == cs(j)
            y = true;           
        end
        j = j + 1;
    end
        sol(i) = x;
        cs(i) = x;
        %ltp = ltp + MA(dcs, x);
        % dcs = x;    
      %  
 end

end

