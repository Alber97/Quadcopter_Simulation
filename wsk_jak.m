%% Wska�niki jako�ci regulacji dla zadawania pojedynczych po�o�e� k�towych:
roll_ise_one = roll_ise(5500001)
roll_iae_one = roll_iae(5500001)
pitch_ise_one = pitch_ise(5500001)
pitch_iae_one = pitch_iae(5500001)
yaw_ise_one = yaw_ise(5500001)
yaw_iae_one = yaw_iae(5500001)
%% Wska�niki jako�ci regulacji dla zadawania po�o�e� k�towych r�wnocze�nie:
roll_ise_all = roll_ise(10000001) - roll_ise(5500001)
roll_iae_all = roll_iae(10000001) - roll_iae(5500001)
pitch_ise_all = pitch_ise(10000001) - pitch_ise(5500001)
pitch_iae_all = pitch_iae(10000001) - pitch_iae(5500001)
yaw_ise_all = yaw_ise(10000001) - yaw_ise(5500001)
yaw_iae_all = yaw_iae(10000001) - yaw_iae(5500001)
%% Wska�niki jako�ci regulacji dla zadawania po�o�e� liniowych w osiach X oraz Y:
x_ise_all = x_ise(10000001)
x_iae_all = x_iae(10000001)
y_ise_all = y_ise(10000001)
y_iae_all = y_iae(10000001)
%% Wska�niki jako�ci regulacji dla zadawania po�o�enia liniowego w osi Z:
z_ise_all = z_ise(10000001)
z_iae_all = z_iae(10000001)