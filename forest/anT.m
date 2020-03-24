function[v] = anT(yeardata)
d = size(yeardata,1) / 48;
v = zeros(size(d,1),2);
for i = 1:d
  T = 0;
  T2 = 0;
  for j = 1:48
    location = (i - 1) * 48 + 1;
    T = T + yeardata(location + j - 1, 9);
    T2 = T2 + yeardata(location + j - 1, 10);
  endfor
  T = T / 48;
  v(i,1) = T;
  T2 = T2 / 48;
  v(i,2) = T2;
endfor