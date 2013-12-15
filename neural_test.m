% A function just to test if everything works
%
%   Copyright 2013-2013 Number 16 Studio
%   http://num16.com
function neural_test
    % Input data for training.
	x = [1 2; 3 4; 2 3; 6 4; 9 11; 8 17]
	y = [3; 7; 5; 10; 20; 25]
    % The training
	[wi, wo] = neural_train(x, y, [], 0.1, 0.3, 1);
    % The simluatings
	y = neural_sim(x, wi, wo, 0.1, 1)
	x = [6 4; 8 17]
	y = neural_sim(x, wi, wo, 0.1, 1)
end
