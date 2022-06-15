
function A = LUdecomposition (A)
n = length(A);
for k = 1: n-1
  t(k+1:n)= A(k+1:n, k)/A(k, k);
  A(k+1:n, k+1:n) -= t(k+1:n)'*A(k, k+1:n);
  A(k+1:n,k)= t(k+1:n)';
endfor
%L = tril(A);
%for i=1:n
%  L(i, i)=1;
%endfor
%U = triu (A);

endfunction
