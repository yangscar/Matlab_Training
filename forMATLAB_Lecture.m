%% I Test script

[a,b]=myOperator1('+',1,2,3,4,5)
[a,b]=myOperator1('*',1,2,3,4,5)


[a,b]=myOperator2(@myAdd,1,2,3,4,5)

newAdd = @(x,y)myAdd2(x,y,2)

[a,b]=myOperator2(newAdd,1,2,3,4,5)


%% save part

A = [1 2 ;3 4];
B = 'String';
save('mySave.mat','A','B');
clear all;
load mySave.mat
A
B
A = [A; [5 6]];
save('mySave.mat','A','-append');
clear all;
load mySave.mat
A
B


x = 0:0.1:4*pi;
H=plot(x,sin(x));
saveas(H,'myPlot','fig');
%saveas(gca,'myPlot','fig');
%% Timer part

myTimer = timer();
myTimer.StartDelay=1;
myTimer.TimerFcn = @myPrint;
myTimer.Period = 1;
myTimer.execution ='fixedRate';
start(myTimer);


stop(myTimer);
delete(myTimer);