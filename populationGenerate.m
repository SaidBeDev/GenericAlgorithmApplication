function [ esr ] = populationGenerate(  numberOfCities, n )

esr = zeros(n, numberOfCities);

for i=1:n;
   esr(i,:) = generateSolution(numberOfCities); 
end

end

