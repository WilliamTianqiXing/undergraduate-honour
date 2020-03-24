function[v] = anPPFD(yeardata)
d = size(yeardata,1) / 48;
v = zeros(size(d,1),1);
for i = 1:d
  PPFD = 0;
  for j = 1:48
    location = (i - 1) * 48 + 1;
    PPFD = PPFD + yeardata(location + j - 1, 11);
  endfor
  v(i,1) = PPFD;
endfor