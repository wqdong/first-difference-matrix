function A = hw2p10(m,n)

ey = ones(m,1);
DY = spdiags([ey -ey ey],[1-m 0 1],m,m);
dy = kron(eye(n),DY);

ex = ones(m*n,1);
dx = spdiags([ex -ex ex],[m-m*n 0 m],m*n,m*n);
A = [dx;dy];

end