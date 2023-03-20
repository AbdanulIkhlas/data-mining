clc
clear
training = [8 6; 8 4; 4 3; 3 4; 1 5;]; % Data nya
sampel = [2 6]; % data baru
group = [1; 1; 2; 2; 3]; % klasifikasinya
class = fitcknn(training, group, 'NumNeighbor',3); % fungsi untuk classificationKNN
classification = predict(class,sampel); % mengambil class tempat data baru tersebut