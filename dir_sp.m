function [d] = dir_sp(data)
  %15 direction 9 speed
  %isnan returns 1 if value is NaN
  d = zeros(20000,2); %initializing a large matrix to fill data in
  count = 0; %row counting number in returened matrix
  count_nan = 0;
  for i = 1:size(data,1)
    if (isnan(data(i,9)) == 1) || (isnan(data(i,15)) == 1)
      i += 1;
      count_nan += 1;
    else
      count += 1;
      d(count,1) = data(i,15);
      d(count,2) = data(i,9);
      
    endif
  endfor
  d = d(1:count,:);
  d(20000,1) = count_nan;
endfunction
