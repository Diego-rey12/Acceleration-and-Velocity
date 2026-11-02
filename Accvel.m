%Accleration and velocity
%Create the function handle for the accelration

acc=@(t) 7*t.*sin(5*t);
count=1;
for t=0:0.02:10
    vel(count)=integral(acc,0,t);
    count=count+1;

end
%plot the velocity vs time
t=0:0.02:10;
plot(t,vel)
xlabel('Time(s)')
ylabel('Velocity(m/s)')
title('Plot of Velocity vs. Time')
%ho