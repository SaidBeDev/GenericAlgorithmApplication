function [ child1, child2 ] = crossover( parent1, parent2 )

% Calculate length of the parents vector
n=numel(parent1);

% Generate crossover point randomly
s=randi([1,n-1]);

% doing single point crossover 
child1 = [parent1(1:s),setdiff(parent2(1:n),parent1(1:s))];
child2 = [parent2(1:s),setdiff(parent1(1:n),parent2(1:s))];

end

