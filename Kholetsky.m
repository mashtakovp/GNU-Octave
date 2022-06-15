
function A = Kholetsky (A)
  n = length(A);
  for i=1:n
    if (A(i, i)<0)
      printf("Bad matrix");
      A = zeros(n);
      return;
    endif
  endfor
  A(:, 1)/=sqrt(A(1,1));
  for j = 2:n
    A(j:n, j)-=A(j:n, 1:j-1)*A'(1:j-1, j);
    A(j:n, j)/=sqrt(A(j, j));
  endfor
  A=tril(A);

endfunction
