x=linspace(-10,10,512);
tt=linspace(0,0.3,201);

mu=0.45;

gamma=(1-2*mu)/sqrt(2);

u=zeros(512,201);

%%%%%%%%Exact Solution%%%%%%%%%%
for t=1:201
    u(:,t)=1./(1+exp((1/sqrt(2))*(x+gamma*tt(t))));
end

%plot(x,u(:,1000))
% for t=1:512
%     plot(x,u(:,t))
%     hold on
% end

figure
[ttt,xx]=meshgrid(tt,x);
surf(xx,ttt,u)
axis([-10 10 0 0.3 0 1]);
xlabel('x','FontSize',12);
ylabel('t','FontSize',12);
zlabel('u','FontSize',12);
title('FHN-Exact');
%u