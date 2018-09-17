disp('optimize');

function [jVal, gradient] = costFunction (theta)
	jVal = theta * theta + 1;
	gradient = 2 * theta;
endfunction

options = optimset('GradObj', 'on', 'MaxIter', 100);
initialTheta = -100;
[optTheta, functionVal, exitFlag] = fminunc(@costFunction, initialTheta, options);

optTheta
functionVal
exitFlag
