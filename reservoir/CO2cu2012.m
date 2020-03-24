function[v] = CO2cu2012(yeardata)

v = zeros(12672/48 + 1,2);
NEE = 0;

count = 0;
for i = 1:264
  for j = 1:48
    location = (i - 1) * 48 + 1;
    if isnan(yeardata(location + j - 1, 6)) != 1
    NEE = NEE + yeardata(location + j - 1, 6) * 1800;
    endif
  endfor
  count += 1;
  v(i,1) = count;
  v(i,2) = NEE;
endfor

  for j = 1:48
    location = (i - 1) * 48 + 1;
    if isnan(yeardata(location + j - 1, 6)) != 1
    NEE = NEE + yeardata(location + j - 1, 6) * 1800;
    endif
  endfor
  count += 1;
  v(265,1) = count;
  v(265,2) = NEE;
v = v ./ 1000000 .* 12;
v(:,1) = v(:,1) .* 1000000 ./12;
