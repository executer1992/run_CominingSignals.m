clear all
close all
clc

fs = 1000; %Hz
A= 1; %Amplituda
c=0;
c1=0;
e=0;
c2=0;
c3=0;
d=0;
n=7;
b=0;
r=0;
d1=0;
d2=0;
d3=0;
u=0;
q=0;
f=10; %Hz
fi=0; %rad
sim_time=1; %s czas symulacji

% 1 Funkcja,która tworzy 3 wykresy na raz

ST = lab_3(fs); %pseudo system transmisyjny
[t, d1,d2,d3]= ST.getSineSignal(A,f,sim_time,fi,d1,d2,d3,c1,c2,c3);

subplot(3,1,1);
plot (t,d1, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Prostokatny');

subplot(3,1,2);
plot (t,d2, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Piloksztaltny');

subplot(3,1,3);
plot (t,d3, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Trojkatny');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Wywołanie funkcji osobno do każdego sygnału
PT = lab_3(fs); %pseudo system transmisyjny
[t, d]= PT.getprostokatny(A,f,sim_time,fi,d,c,b,n);
figure('Name', 'Prostokatny')
plot (t,d, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
% Wywołanie funkcji osobno do każdego sygnału
PST = lab_3(fs); %pseudo system transmisyjny
[t, d]= PST.getpiloksztaltny(A,f,sim_time,fi,d,c,b,n,e);
figure('Name', 'Piloksztaltny')
plot (t,d, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
% Wywołanie funkcji osobno do każdego sygnału
ALL = lab_3(fs); %pseudo system transmisyjny
[t, d]= ALL.gettrojkatny(A,f,sim_time,fi,d,c,b,n,e);
figure('Name', 'Trojkatny')
plot (t,d, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
% Wywołanie funkcji sumy sygnału piłokształtnego i trójkštnego
SUM = lab_3(fs); %pseudo system transmisyjny
[t, l]= SUM.getpilo_sum_trojko(A,f,sim_time,fi,d,c,b,n,e,u,q,r);
figure('Name', 'Suma')
plot (t,l, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
% Wywołanie funkcji róznicy sygnału piłokształtnego i trójkštnego
SUB = lab_3(fs); %pseudo system transmisyjny
[t, l]= SUB.getpilo_sub_trojko(A,f,sim_time,fi,d,c,b,n,e,u,q,r);
figure('Name', 'Różnica')
plot (t,l, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
% Wywołanie funkcji mnożenia sygnału piłokształtnego i trójkštnego
MUL = lab_3(fs); %pseudo system transmisyjny
[t, l]= MUL.getpilo_mul_trojko(A,f,sim_time,fi,d,c,b,n,e,u,q,r);
figure('Name', 'Iloczyn')
plot (t,l, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
% Wywołanie funkcji dzielenia sygnału piłokształtnego i trójkštnego
DIV = lab_3(fs); %pseudo system transmisyjny
[t, l]= DIV.getpilo_div_trojko(A,f,sim_time,fi,d,c,b,n,e,u,q,r);
figure('Name', 'Iloraz')
plot (t,l, 'r'),title('A=1, f=10Hz, fi=0, sim-time= 1s');
xlabel('Czas [s]'),ylabel('Amplituda');
