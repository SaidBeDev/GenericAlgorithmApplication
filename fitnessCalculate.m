
function [ pathTotalDistances,minPath, maxPath ] = fitnessCalculate( distances, pop )
%fitness Calculates: totalDistances, minPath and maxPath.

    [popSize, col] = size(pop);
    pathTotalDistances = zeros(popSize,1);    
    
    for i=1:popSize
       for j=1:col-1
           if pop(i,j+1) ~= 0 && pop(i,j) ~= 0
                pathTotalDistances(i) = pathTotalDistances(i) + distances(pop(i,j),pop(i,j+1));                
           end
       end 
    end
    minPath = min(pathTotalDistances);
    maxPath = max(pathTotalDistances);
end
