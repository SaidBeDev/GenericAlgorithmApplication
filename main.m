clear;
clc;
global gNumber;
numberOfCities = 10;
popSize = 50;

optimalPathCost = Inf; 

MA = [];

% Generate distances randomly
for i=1:numberOfCities
    j = 1;
   while j <= i
       MA(i,j) = round(1+99*rand(1));
       MA(j,i) = MA(i,j);
       j = j + 1;
   end
   
end

% Generate population.
pop = populationGenerate(numberOfCities, popSize);
newGen = zeros(popSize,numberOfCities);


% Setting number of new generation members.
genNumber = 5;

minPathes = zeros(genNumber,1);

% Fintess funtioc values
[totalDistances, minPath, maxPath] = fitnessCalculate(MA, pop);

for  gN=1:genNumber;
    for k=1:popSize;
        % Choosing parents for crossover operation randomly
        x = round(1+(popSize - 1)*rand(1));
        y = round(1+(popSize - 1)*rand(1));
        while x == y
            y = round(1+(popSize - 1)*rand(1));
        end

        parent1 = pop(x,:);
        parent2 = pop(y,:);


        childPath = crossover(parent1, parent2);
        
        if numel(childPath) < numberOfCities
            indRest = numberOfCities - numel(childPath);
            childPath = [childPath zeros(1,indRest)];
        end
        newGen(k,:) = childPath(1,:);

        minPathes(gN,1) = minPath; 
    end
    
    gNumber = gN;
    
    % Assigning the created generation the current population.
    pop = newGen;
    
    % actualizing the best path value
    if minPath < optimalPathCost
        optimalPathCost = minPath;        
    end

end
fprintf('Minimum path cost is: %f \n',minPath);













