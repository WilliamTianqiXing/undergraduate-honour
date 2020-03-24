function[v] = cal_sum(month_data)
v = zeros(48,1);

for i = 1:size(month_data,1)
 if(mod(i,48)!=0)
  m = mod(i,48);
   v(m,1) = v(m,1) + month_data(i,14) * (-1);
   else v(48,1) = v(48,1) + month_data(i,14) * (-1);
  endif

endfor
