0;

function out = get_sample(x, y, n)
	out = zeros(x, y, 0);
	for i = 1 : n
		out = cat(3, out, rand(x, y));
	end
end

function out = get_exp(in)
	out = mean(in, 3);
end

function out = get_var(in)
	out = var(in, 1, 3);
end

function out = get_var_m(in1, in2)
	sum = zeros(size(in1)(1), size(in2)(2), 0);
	for i = 1 : size(in1)(3)
		for j = 1 : size(in2)(3)
			sum = cat(3, sum, in1(:, :, i) * in2(:, :, j));
		end
	end
	out = get_var(sum);
end

a = get_sample(1, 1, 10);
ea = get_exp(a);
va = get_var(a);
b = get_sample(1, 1, 10);
eb = get_exp(b);
vb = get_var(b);

left = get_var_m(a, b);
disp(left);
right = va * (eb .* eb) + (ea .* ea) * vb + va * vb;
disp(right);
