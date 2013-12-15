% The function used to train the network
% x: The input
% y: The desired output
% wi: A weight matrix, wi(i, j) is the weight of the edge between the 
%     ith hidden node and the jth input node, not containing the node
%     threshold in the arguments but contained in the returned value
%     If this value is empty in the arguments, a random one will be used
% wo: A weight matrix, wo(i, j) is the weight of the edge between the
%     ith hidden node and the jth output node
% epsilon: A parameter in the delta function used on hidden nodes,
%          which is f1 in the essay
% alpha: A parameter used to adjust wi
% c: A parameter used in the sigmoid function on output nodes, 
%    which is f2 in the eassay
%
%   Copyright 2013-2013 Number 16 Studio
%   http://num16.com
function [wi, wo] = neural_train(x, y, wi, epsilon, alpha, c)
	sz = size(x);

	% Generate argumented x, to represent threshold as a input and edge
	X = [x, -1 * ones(sz(1), 1)];
	% Generate random weight 
	if isempty(wi)
		wi = rand(sz);
	end
	% adjust the wi to make sure there is a one and only solution of wo
	wi = neural_adjust(wi, x, alpha);
	% Generate argumented wi, puting the threshold value at the end
	WI = [wi, -1 * sum((x .* wi)')'];
	% calculate the values of y mapped by the inverted sigmoid f2
	y_inv = -log( 1 ./ y - 1) ./ c;
	% calculate the values of the inputs into output layer
	h = 1 ./ pi .* epsilon ./ (X * WI' .^ 2 + epsilon ^ 2);
	% Equation h * wo = y_inv should stand, so the only wo will be calculated
	wo = h \ y_inv;
	% set the returned wi to the argumented one
	wi = WI;
end

% Function used to adjust Weight of Edges between input layer & hidden layer
% This is a part of the training section, the wi is adjusted using parameters
% so that there will be a one and only solution of wo
function wi = neural_adjust(wi, x, alpha)
	sz = size(wi);
	% iterate over all the training data, for each iteration, the weights inputed
	%	into the pth hidden node is adjusted
	for p = 1 : sz(1)
		% Vector used to store how many rows there are in a indicated group
		v = zeros(sz(1));
		% Vector used to store the row numbers in a group
		vn = zeros(sz(1), 1);
		% Generate the input delta matrix, as X(j) = x(j) - x(p), j not equals p
		X = zeros(sz(1) - 1, sz(2));
		for j = 1 : sz(1)
			if p ~= j
				if j > p
					ji = j -1;
				else
					ji = j;
				end
				X(ji, :) = x(j, :) - x(p, :);

				% Count zeros at the front of the vector, and put it into
				% the group it belongs
				n = 0;
				for k = X(ji, :)
					n = n + 1;
					if k ~= 0
						break
					end
				end
				vn(n) = vn(n) + 1;
				v(n, vn(n)) = ji;
			end
		end
		% Iterate the X matrix backwards, each time adjust one value 
		% in the pth row of wi, making sure that X(i) * w(p) >= alpha
		for i = sz(1) : -1 : 1
			if vn(i) ~= 0
				group = X(v(i,[1 : vn(i)]),:);
				if i < sz(1)
					m = group([i + 1 : sz(2)]);
				else
					m = 0;
				end
				m = max((alpha - m) ./ group(i));
				wi(p, i) = m;
			end
		end
	end
end

