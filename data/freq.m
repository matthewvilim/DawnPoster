function profit = freq(adder, H0, P0, Y, Ce, A_norm)

data = csvread('ksa32_freq_error.txt')
f0 = min(data(:,1))

data = csvread(sprintf('%s_freq_error.txt', adder))
f = data(:,1)
E_i = data(:,2)

f_norm = f ./ f0

E = 1 - (1 - E_i).^2

H_approx = (1 - E) .* (H0 .* f_norm) ./ A_norm
P_approx = P0 .* f_norm

profit = H_approx .* Y - P_approx .* Ce

filename = sprintf('%s_freq_profit.txt', adder)
file=fopen(filename,'wt');
fprintf(file,'freq, profit');
csvwrite(filename, [f, profit])

end