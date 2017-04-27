function export_data(R, C, t, S, S_outlet, r)

filename = 'Fluid_Fractions_Produced_after_Breakthrough.xlsx';

xlswrite(filename, R, 'Residues', 'B2');
[l, m, n] = size(C);
for i = 1:n
    range = strcat('C', num2str(2 + l * (i-1)));
    xlswrite(filename, C(:,:,i), 'Coefficients', range);
end

O = [t, S, S_outlet, r];
xlswrite(filename, O, 'S-r', 'B2');
end