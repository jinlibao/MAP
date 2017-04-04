# MAP (Mathematics in Practice)

## Methods of Least Squares

We'd like to apply the methods of least squares to curve fit the given data points to obtain a differentiable function S'(t) that passes near the points below.

|  t   |  Vw   |  Vo   |   P    |
| :--: | :---: | :---: | :----: |
|  1   | 0.021 | 0.979 | 19.310 |
|  2   | 0.157 | 0.850 | 19.280 |
|  3   | 0.403 | 0.646 | 19.130 |
|  4   | 0.605 | 0.442 | 18.900 |
|  5   | 0.707 | 0.357 | 18.750 |
|  6   | 0.837 | 0.212 | 18.680 |
|  7   | 0.854 | 0.212 | 18.600 |
|  8   | 0.965 | 0.102 | 18.530 |
|  9   | 0.956 | 0.144 | 18.380 |
|  10  | 1.007 | 0.127 | 18.080 |
|  11  | 1.007 | 0.110 | 17.930 |
|  12  | 1.007 | 0.110 | 17.850 |
|  13  | 1.007 | 0.068 | 17.780 |
|  14  | 1.033 | 0.059 | 17.550 |
|  15  | 1.007 | 0.059 | 17.400 |
|  16  | 1.024 | 0.025 | 17.180 |
|  17  | 1.033 | 0.025 | 17.180 |
|  18  | 1.092 | 0.034 | 17.060 |
|  19  | 0.965 | 0.085 | 16.950 |
|  20  | 1.033 | 0.034 | 16.880 |
|  21  | 1.058 | 0.034 | 16.800 |
|  22  | 1.050 | 0.034 | 16.650 |
|  23  | 0.973 | 0.034 | 16.500 |
|  24  | 1.033 | 0.017 | 16.430 |
|  25  | 1.024 | 0.025 | 16.400 |
|  26  | 1.075 | 0.017 | 16.350 |
|  27  | 1.024 | 0.042 | 16.280 |
|  29  | 0.973 | 0.034 | 16.260 |
|  30  | 1.024 | 0.025 | 16.130 |
|  31  | 1.092 | 0.034 | 15.980 |
|  32  | 0.965 | 0.009 | 15.940 |
|  33  | 0.922 | 0.007 | 15.900 |
|  34  | 1.092 | 0.034 | 15.890 |
|  35  | 0.973 | 0.001 | 15.880 |
|  36  | 0.965 | 0.010 | 15.850 |
|  37  | 0.939 | 0.001 | 15.750 |
|  38  | 0.982 | 0.025 | 15.730 |
|  39  | 0.973 | 0.002 | 15.700 |
|  40  | 0.990 | 0.025 | 15.680 |
|  41  | 0.922 | 0.010 | 15.620 |
|  42  | 0.990 | 0.020 | 15.580 |
|  43  | 0.990 | 0.025 | 15.500 |
|  44  | 0.987 | 0.020 | 15.450 |
|  45  | 0.990 | 0.008 | 15.400 |
|  46  | 0.982 | 0.010 | 15.380 |
|  47  | 0.939 | 0.001 | 15.330 |
|  48  | 1.041 | 0.017 | 15.300 |
|  49  | 0.982 | 0.031 | 15.280 |

Where t, Vw, Vo, P denotes Time Interval, Incremental Volume of Water Produced, Incremental Volume of Oil Produced, Pressure Drop Across Core, respectively.

We hope that S'(t) = c_1 phi_1(t) + c_2 phi_2(t) + ... + c_M phi_M(t) to capture the main behavior of the data points. And thus, we pick arctan(ht) and 1 - exp(ht) as our candidate basis functions. Therefore, `least_squares.m` mainly seek the coefficients c_1, ..., c_M by using methods of least squares with the help of functions: `solve_least_square`, `generate_matrix`, `phi` and `plot_result`. More detailed info will be added in the near future.