A = [-5 -9 0 ; 0 -4 -6; -2.1 5 3]
B= [-3; 3; -8]
n = 3;
iteraciones = 100;

x= [0 0 0];
 
x_res= x;
for j= 1:10
    for i=1:n
        suma= 0;
        for k=1:n
            if(i~=k)
                suma=A(i,k)*x(k)+suma;
            end
        end
        
        x(i) = (B(i)-suma)/A(i,i)
    end
    x_res = [x_res; x]
end