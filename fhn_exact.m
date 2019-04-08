x=linspace(0,1,1000);
tt=linspace(0,1,1000);

mu=0.45;

gamma=(1/sqrt(2))-sqrt(2)*mu;

u=zeros(1000,1000);

%%%%%%%%Exact Solution%%%%%%%%%%
for t=1:1000
    u(:,t)=1./(1+(exp(x/sqrt(2))+gamma*tt(t)));
end

% for t=1:1000
%     plot(x,u(:,t))
%     hold on
% end

u