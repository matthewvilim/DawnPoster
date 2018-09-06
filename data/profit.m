A_rpl = 44,058
A_cla = 47,097
A_gda = 46,641
A_ksa32 = 48,801
A_ksa16 = 47,829

A_norm_rpl = A_rpl ./ A_ksa32
A_norm_cla = A_cla ./ A_ksa32
A_norm_gda = A_gda ./ A_ksa32
A_norm_ksa32 = A_ksa32 ./ A_ksa32
A_norm_ksa16 = A_ksa16 ./ A_ksa32

Y = 2.246e-17
Ce = 8.14e-2 / 3600
H0 = 38.8e9
P0 = 10.2e-3

%freq('rpl', H0, P0, Y, Ce, A_norm_rpl)
%freq('cla', H0, P0, Y, Ce, A_norm_cla)
%freq('gda', H0, P0, Y, Ce, A_norm_gda)
%freq('ksa32', H0, P0, Y, Ce, A_norm_ksa32)
freq('ksa16', H0, P0, Y, Ce, A_norm_ksa16)