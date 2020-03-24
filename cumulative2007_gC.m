function[v] = cumulative2007_gC(yeardata)

h = size(yeardata,1);
v = zeros(h/48,4);
NEE = 0;
ER = 0;
GEP = 0;
count = 0;
for i = 1:size(v,1)
  for j = 1:48
    location = (i - 1) * 48 + 1;
    NEE = NEE - yeardata(location + j - 1, 14) * 1800;
    ER = ER + yeardata(location + j - 1, 15) * 1800;
    GEP = GEP + yeardata(location + j - 1, 16) * 1800;
  endfor
  count += 1;
  v(i,1) = count;
  v(i,2) = NEE;
  v(i,3) = ER;
  v(i,4) = GEP;
endfor
v = v ./ 1000000 .* 12;
v(:,1) = v(:,1) .* 1000000 ./12 .+ 86;
