function[v] = anNEE(yeardata)
d = size(yeardata,1) / 48;
v = zeros(size(d,1),1);
for i = 1:d
  NEE = 0;
  for j = 1:48
    location = (i - 1) * 48 + 1;
    NEE = NEE - yeardata(location + j - 1, 14) * 1800;
  endfor
  NEE = NEE / 1000000 * 12;
  v(i,1) = NEE;
endfor
