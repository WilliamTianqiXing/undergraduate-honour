function[v] = CO2cu(yeardata)

h = size(yeardata,1);
v = zeros(h/48,2);
NEE = 0;

count = 0;
for i = 1:size(v,1)
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
v = v ./ 1000000 .* 12;
v(:,1) = v(:,1) .* 1000000 ./12;

%return column: vector of 365 (366) days, each day is calculated by sum of 
%48 interval data .* 1800