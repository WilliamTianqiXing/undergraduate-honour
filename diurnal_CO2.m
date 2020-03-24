function[v] = diurnal_CO2(month_data, year_num, month_num)
v = zeros(48,1);

for i = 1:size(month_data,1)
 if(mod(i,48)!=0)
  m = mod(i,48);
   v(m,1) = v(m,1) + month_data(i,6);
   else v(48,1) = v(48,1) + month_data(i,6);
  endif

endfor

if(month_num == 1 || month_num == 3 ||month_num == 5 ||month_num == 7 ||month_num == 8 ||month_num == 10 ||month_num == 12 )
v = v ./ 31;
elseif((month_num == 2 && year_num == 8) || (month_num == 2 && year_num == 12) ) v = v ./ 29;
elseif((month_num == 2 && year_num != 8) && (month_num == 2 && year_num != 12) ) v = v ./ 28;
else v = v ./ 30;
endif
