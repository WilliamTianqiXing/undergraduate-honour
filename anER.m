function[v] = anER(yeardata)
d = size(yeardata,1) / 48;
v = zeros(size(d,1),1);
for i = 1:d
  ER = 0;
  for j = 1:48
    location = (i - 1) * 48 + 1;
    ER = ER + yeardata(location + j - 1, 15)
  endfor
  ER = ER / 48;
  v(i,1) = ER;
endfor
