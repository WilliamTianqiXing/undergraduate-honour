function[v] = cumulative_gC(yeardata)

%initialize variables
h = size(yeardata,1);
v = zeros(h/48,4);
NEE = 0;
ER = 0;
GEP = 0;
count = 0;

%loop to sum up data and get daily flux quantity
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

%convert unit from umol to g C
v = v ./ 1000000 .* 12;
v(:,1) = v(:,1) .* 1000000 ./12;

%return column: vector v of 365 (366) days, each day is calculated by sum of 
%48 half-hourly flux data .* 1800 seconds, vector entry is convert from umol
%m-2 s-1 to g CO2 m-2 d-1

