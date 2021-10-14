%% Parametry drona czterowirnikowego
m = 1; % masa
l = 0.225; % odleg�o�� od �rodka drona do wirnika
g = 9.81; % przyspieszenie ziemskie
omega_max = 13098; % maksymalna ilo�� obrot�w silnika
force_max_1 = 11.7720; % maksymalna si�a no�na jednego wirnika
force_max = force_max_1 * 4; % maksymalna si�a no�na drona
b = force_max_1 / omega_max ^ 2; % wsp�czynnik si�y no�nej
torque_max_rp = omega_max ^ 2 * 2 * b * l; % maksymalny moment obrotowy wok� osi X i Y 
d = 2e-9; % wsp�czynnik oporu momentu wok� osi Z
torque_max_y = omega_max ^ 2 * 2 * d; % maksymalny moment obrotowy wok� osi Z
Ixx = 0.02276; % moment bezw�adno�ci X
Iyy = Ixx; % moment bezw�adno�ci Y
Izz = 0.03132; % moment bezw�adno�ci Z
k_x = 10; % wsp�czynnik oporu dynamicznego X
k_y = 10; % wsp�czynnik oporu dynamicznego Y
k_z = 1; % wsp�czynnik oporu dynamicznego Z
delay = 0.001;
mun = m * 2;
%Iunx = 0.0768;
Iunx = 0.1820;
%Iunz = 0.1057;
Iunz = 0.2506;

%% SMC
lambda_roll = 4; % wsp�czynnik kierunkowy prostej prze��cze� (dla roll)
lambda_pitch = lambda_roll; % wsp�czynnik kierunkowy prostej prze��cze� (dla pitch)
lambda_yaw = 4.5; % wsp�czynnik kierunkowy prostej prze��cze� (dla yaw)
lambda_z = lambda_roll; % wsp�czynnik kierunkowy prostej prze��cze� (dla Z)
a = 2; % parametr wzmocnienia sygna�u steruj�cego (k�ty)
az = 7; % parametr wzmocnienia sygna�u steruj�cego (z)

%% Backstepping + NN
eta = 20; %wsp�czynnik uczenia mechanizmu adaptacji wag
n = 7; % liczba neuron�w
nn_on = 1; % aktywacja dzia�ania sieci neuronowej
k1 = 6; % wsp�czynnik funkcji stabilizuj�cej (k�ty)
k2 = 6; % wsp�czynnik funkcji stabilizuj�cej  (k�ty)
k3 = 10; % wsp�czynnik funkcji stabilizuj�cej  (Z)