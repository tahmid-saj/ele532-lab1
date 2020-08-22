t = (-2:2);
f = @(t) exp(-t).*cos(2.*pi.*t);
%plot(t, f(t));
%figure;
t1 = (-2:0.01:2);
f = @(t) exp(-t).*cos(2.*pi.*t);
%plot(t1, f(t1));

%figure;
tt = [-2:2];
f1 = @(tt) exp(-tt);
%plot(tt, f1(tt));

%figure;
t = (-5:0.001:5)
u = @(t) 1.*(t>=0);
p = @(t) u(t) - u(t-1); 
%plot(t, p(t));

%figure;
r = @(t) t.*p(t);
%plot(t, r(t));

%figure;
n = @(t) r(t) + r(-t+2);
%plot(t, n(t));

%figure;
n1 = @(t) n(0.5.*t);
%plot(t, n1(t));

%figure;
n2 = @(t) n1(t + 0.5);
%plot(t, n2(t));

%figure;
n3 = @(t) n(t + 0.25);
%plot(t, n3(t));

%figure;
n4 = @(t) n3(0.5.*t);
%plot(t, n4(t));

%figure;
f = @(t) exp(-2.*t).*cos(4.*pi.*t);
g = @(t) f(t).*u(t);
%plot(t, g(t));

%figure;
t = [0 : 0.01 : 4];
s = @(t) g(t + 1);
%plot(t, s(t));

figure;
t = [0:0.01:4];
for a = 1:2:7
    s = @(t) exp(-2).*exp(-a.*t).*cos(4.*pi.*t);
    plot(t, s(t));
    hold on;
end

ncols = 100;
nrows = 1024;

for c = 1:100;
    for r = 1:1024;
        if B(r,c) < 0.01
           B(r,c) = 0;
        end    
    end
end



