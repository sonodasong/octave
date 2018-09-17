function x = get_x(a, b, n)
	x = rand(a, b)
	% x = cat(3, temp)
	% for i = 1 : (n - 1)
		% x = cat(3, x, rand(a, b))
	% end
end

a = get_x(2, 2, 10)
size(a)
