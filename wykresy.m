%% Zale�no�ci
% Zale�no�� si�y no�nej od pr�dko�ci obrotowej silnika
figure
plot(tout, f_w2, 'r', 'LineWidth', 1.5);
title('Przebieg warto�ci si�y no�nej od pr�dko�ci obrotowej silnika')
xlabel('Pr�dko�� obrotowa [obr/min]')
ylabel('Si�a no�na [N]')

%% Przebiegi uk�adu zlinearyzowanego
figure
plot(tout, z_lin, 'k', 'LineWidth', 1.5);
title('Przebieg sygna�u po�o�enia liniowego w osi Z')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
axis([0 100 0.9 1.6])

%% Zadana orientacja oraz trajektoria liniowa
figure
plot(tout, roll_pid_d, 'k', tout, pitch_pid_d, 'm', tout, yaw_pid_d, 'c', 'LineWidth', 1.5);
title('Przebiegi sygna��w zadanych trzech po�o�e� k�towych')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll_d', 'pitch_d', 'yaw_d')
axis([0 100 -35 35])

figure
plot(tout, x_pid_d, 'k', tout, y_pid_d, 'm', tout, z_pid_d, 'c', 'LineWidth', 1.5);
title('Przebiegi sygna��w zadanych trzech po�o�e� liniowych')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x_d', 'y_d', 'z_d')
axis([0 100 -5 7])

%% Uk�ady z regulacji k�towych po�o�e�
% PID
figure
plot(tout, roll_pid, 'r', tout, roll_pid_d, 'k--', tout, pitch_pid, 'g', tout, pitch_pid_d, 'm--', tout, yaw_pid, 'b', tout, yaw_pid_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz ich warto�ci zadanych od czasu (PID)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'roll_d', 'pitch', 'pitch_d', 'yaw', 'yaw_d')
axis([0 100 -40 40])

figure
plot(tout, x_pid, 'r', tout, y_pid, 'g', tout, z_pid, 'b', tout, z_pid_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanej dla osi Z od czasu (PID)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'y', 'z', 'z_d')
axis([0 100 -5 6])

% SMC
figure
plot(tout, roll_smc, 'r', tout, roll_smc_d, 'k--', tout, pitch_smc, 'g', tout, pitch_smc_d, 'm--', tout, yaw_smc, 'b', tout, yaw_smc_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz ich warto�ci zadanych od czasu (SMC)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'roll_d', 'pitch', 'pitch_d', 'yaw', 'yaw_d')

figure
plot(tout, x_smc, 'r', tout, y_smc, 'g', tout, z_smc, 'b', tout, z_smc_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanej dla osi Z od czasu (SMC)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'y', 'z', 'z_d')

% Backstepping
figure
plot(tout, roll_nn, 'r', tout, roll_nn_d, 'k--', tout, pitch_nn, 'g', tout, pitch_nn_d, 'm--', tout, yaw_nn, 'b', tout, yaw_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz ich warto�ci zadanych od czasu (Backstepping)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'roll_d', 'pitch', 'pitch_d', 'yaw', 'yaw_d')
axis([0 100 -35 45])

figure
plot(tout, x_nn, 'r', tout, y_nn, 'g', tout, z_nn, 'b', tout, z_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanej dla osi Z od czasu (Backstepping)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'y', 'z', 'z_d')

% Backstepping + NN
figure
plot(tout, roll_nn, 'r', tout, roll_nn_d, 'k--', tout, pitch_nn, 'g', tout, pitch_nn_d, 'm--', tout, yaw_nn, 'b', tout, yaw_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz ich warto�ci zadanych od czasu (Backstepping + NN)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'roll_d', 'pitch', 'pitch_d', 'yaw', 'yaw_d')

figure
plot(tout, x_nn, 'r', tout, y_nn, 'g', tout, z_nn, 'b', tout, z_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanej dla osi Z od czasu (Backstepping + NN)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'y', 'z', 'z_d')

%% Uk�ady regulacji liniowych po�o�e�
% PID_XY
figure
plot(tout, x_pid, 'r', tout, x_pid_d, 'k--', tout, y_pid, 'g', tout, y_pid_d, 'm--', tout, z_pid, 'b', tout, z_pid_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanych od czasu (PI + PID)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'x_d', 'y', 'y_d', 'z', 'z_d')
axis([0 100 -5 7])

figure
plot(tout, roll_pid, 'r', tout, pitch_pid, 'g', tout, yaw_pid, 'b', tout, yaw_pid_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz warto�ci zadanej yaw od czasu (PI + PID)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'pitch', 'yaw', 'yaw_d')
axis([0 100 -35 30])

% SMC_XY
figure
plot(tout, x_smc, 'r', tout, x_smc_d, 'k--', tout, y_smc, 'g', tout, y_smc_d, 'm--', tout, z_smc, 'b', tout, z_smc_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanych od czasu (PI + SMC)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'x_d', 'y', 'y_d', 'z', 'z_d')

figure
plot(tout, roll_smc, 'r', tout, pitch_smc, 'g', tout, yaw_smc, 'b', tout, yaw_smc_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz warto�ci zadanej yaw od czasu (PI + SMC)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'pitch', 'yaw', 'yaw_d')

% BS_XY
figure
plot(tout, x_nn, 'r', tout, x_nn_d, 'k--', tout, y_nn, 'g', tout, y_nn_d, 'm--', tout, z_nn, 'b', tout, z_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanych od czasu (PI + Backstepping)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'x_d', 'y', 'y_d', 'z', 'z_d')

figure
plot(tout, roll_nn, 'r', tout, pitch_nn, 'g', tout, yaw_nn, 'b', tout, yaw_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz warto�ci zadanej yaw od czasu (PI + Backstepping)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'pitch', 'yaw', 'yaw_d')

% BS + NN_XY
figure
plot(tout, x_nn, 'r', tout, x_nn_d, 'k--', tout, y_nn, 'g', tout, y_nn_d, 'm--', tout, z_nn, 'b', tout, z_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� liniowych oraz ich warto�ci zadanych od czasu (PI + Backstepping + NN)')
xlabel('Czas [s]')
ylabel('Po�o�enie [m]')
legend('x', 'x_d', 'y', 'y_d', 'z', 'z_d')

figure
plot(tout, roll_nn, 'r', tout, pitch_nn, 'g', tout, yaw_nn, 'b', tout, yaw_nn_d, 'c--', 'LineWidth', 1.5);
title('Przebiegi po�o�e� k�towych oraz warto�ci zadanej yaw od czasu (PI + Backstepping + NN)')
xlabel('Czas [s]')
ylabel('K�t [�]')
legend('roll', 'pitch', 'yaw', 'yaw_d')

%% Przebiegi zak��ce�
% Zak��cenie 
figure
plot(tout, disturbance, 'LineWidth', 1.5);
title('Przebieg sygna�u zak��cenia od czasu')
xlabel('Czas [s]')
ylabel('Moment obrotowy [Nm]')
legend('Zak��cenie')

%% Trajektorie w przestrzeni tr�jwymiarowej
% Trajektoria w przestrzeni 3D - PID
figure
plot3(x_pid, y_pid, z_pid, 'LineWidth', 1.5);
hold on
grid on
plot3(x_pid_d, y_pid_d, z_pid_d, '--');
xlabel('Po�o�enie liniowe w osi X [m]')
ylabel('Po�o�enie liniowe w osi Y [m]')
zlabel('Po�o�enie liniowe w osi Z [m]')
legend('Trajektoria lotu drona', 'Trajektoria zadana')
hold off;

% Trajektoria w przestrzeni 3D - SMC
figure
plot3(x_smc, y_smc, z_smc, 'LineWidth', 1.5);
hold on
grid on
plot3(x_smc_d, y_smc_d, z_smc_d, '--');
xlabel('Po�o�enie liniowe w osi X [m]')
ylabel('Po�o�enie liniowe w osi Y [m]')
zlabel('Po�o�enie liniowe w osi Z [m]')
legend('Trajektoria lotu drona', 'Trajektoria zadana')
hold off;

% Trajektoria w przestrzeni 3D - NN
figure
plot3(x_nn, y_nn, z_nn, 'LineWidth', 1.5);
hold on
grid on
plot3(x_nn_d, y_nn_d, z_nn_d, '--');
xlabel('Po�o�enie liniowe w osi X [m]')
ylabel('Po�o�enie liniowe w osi Y [m]')
zlabel('Po�o�enie liniowe w osi Z [m]')
legend('Trajektoria lotu drona', 'Trajektoria zadana')
hold off;
