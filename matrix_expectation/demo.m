0;

function out = get_sample(x, y, n)
	out = cat(3, rand(x, y));
	for i = 1 : (n - 1)
		out = cat(3, out, rand(x, y));
	end
end

function out = get_exp(in)
	out = mean(in, 3);
end

function out = get_var(in)
	out = var(in, 1, 3);
end

a = get_sample(3, 4, 1);
ea = get_exp(a);
va = get_var(a);
b = get_sample(4, 3, 1);
eb = get_exp(b);
vb = get_var(b);

disp(size(a(3)));
% c = a * b;
% disp(c);

% b = get_var(a)
% disp(size(b));
% disp(get_var(a));
