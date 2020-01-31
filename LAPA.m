
% Program Parameters

N=20;

iterations=200;
left_bound=1;
right_bound=1;
top_bound=0;
bottom_bound=0;
V=zeros(N,N);
%Ex=zeros(ny,nx);
V(1,:)=top_bound;
V(N,:)=bottom_bound;
V(:,1)=left_bound;
V(:,N)=right_bound;
for t=1:iterations
for i=2:N-1
 for j = 2:N-1
    V(i,j)= (V(i+1,j)+V(i-1,j)+V(i,j+1)+V(i,j-1))/4;
     
   
  
 end 
end
 [Ex,Ey]=gradient(V);

   

    figure(1)
    Emag=sqrt(Ex.^2+Ey.^2);
    surf(Emag)  
    V=imboxfilt(V,3);
    
end
    
    
    figure(3)
    quiver(Ex,Ey) 