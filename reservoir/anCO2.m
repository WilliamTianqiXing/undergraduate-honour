function[v] = anCO2(yeardata)
d = size(yeardata,1) / 48;
v = zeros(size(d,1),1);
for i = 1:d
  FC = 0;
  for j = 1:48
    location = (i - 1) * 48 + 1;
    FC = FC + yeardata(location + j - 1, 6)*1800;
  endfor
  FC = FC /1000000 * 44;
  v(i,1) = FC;
endfor