%% Parametry drona czterowirnikowego
m = 1; % masa
l = 0.225; % odleg³oœæ od œrodka drona do wirnika
g = 9.81; % przyspieszenie ziemskie
omega_max = 13098; % maksymalna iloœæ obrotów silnika
force_max_1 = 11.7720; % maksymalna si³a noœna jednego wirnika
force_max = force_max_1 * 4; % maksymalna si³a noœna drona
b = force_max_1 / omega_max ^ 2; % wspó³czynnik si³y noœnej
torque_max_rp = omega_max ^ 2 * 2 * b * l; % maksymalny moment obrotowy wokó³ osi X i Y 
d = 2e-9; % wspó³czynnik oporu momentu wokó³ osi Z
torque_max_y = omega_max ^ 2 * 2 * d; % maksymalny moment obrotowy wokó³ osi Z
Ixx = 0.02276; % moment bezw³adnoœci X
Iyy = Ixx; % moment bezw³adnoœci Y
Izz = 0.03132; % moment bezw³adnoœci Z
k_x = 10; % wspó³czynnik oporu dynamicznego X
k_y = 10; % wspó³czynnik oporu dynamicznego Y
k_z = 1; % wspó³czynnik oporu dynamicznego Z
delay = 0.001;
mun = m * 2;
%Iunx = 0.0768;
Iunx = 0.1820;
%Iunz = 0.1057;
Iunz = 0.2506;

%% SMC
lambda_roll = 4; % wspó³czynnik kierunkowy prostej prze³¹czeñ (dla roll)
lambda_pitch = lambda_roll; % wspó³czynnik kierunkowy prostej prze³¹czeñ (dla pitch)
lambda_yaw = 4.5; % wspó³czynnik kierunkowy prostej prze³¹czeñ (dla yaw)
lambda_z = lambda_roll; % wspó³czynnik kierunkowy prostej prze³¹czeñ (dla Z)
a = 2; % parametr wzmocnienia sygna³u steruj¹cego (k¹ty)
az = 7; % parametr wzmocnienia sygna³u steruj¹cego (z)

%% Backstepping + NN
eta = 20; %wspó³czynnik uczenia mechanizmu adaptacji wag
n = 7; % liczba neuronów
nn_on = 1; % aktywacja dzia³ania sieci neuronowej
k1 = 6; % wspó³czynnik funkcji stabilizuj¹cej (k¹ty)
k2 = 6; % wspó³czynnik funkcji stabilizuj¹cej  (k¹ty)
k3 = 10; % wspó³czynnik funkcji stabilizuj¹cej  (Z)