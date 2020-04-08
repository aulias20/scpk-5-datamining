x = xlsread('DataRekomendasi.xlsx');
group = x(:,5);
training = [x(:,1) x(:,2) x(:,3) x(:,4)];
sample1 = [1 1 1 1];
sample2 = [2 1 1 3];
sample3 = [2 2 2 1];
sample4 = [3 1 2 3];
sample5 = [3 2 1 1];
a = fitcknn(training,group,'NumNeighbors',3);
hasil1 = predict(a,sample1);
hasil2 = predict(a,sample2);
hasil3 = predict(a,sample3);
hasil4 = predict(a,sample4);
hasil5 = predict(a,sample5);
if hasil1==2
    disp('Data Sample 1 :'); disp(sample1); disp('   Direkomendasikan: Ya');
else
    disp('Data Sample 1 :'); disp(sample1); disp('   Direkomendasikan: Tidak');
end
if hasil2==2
    disp('Data Sample 2 :');disp(sample2); disp('   Direkomendasikan: Ya');
else
    disp('Data Sample 2 :');disp(sample2); disp('   Direkomendasikan: Tidak');
end
if hasil3==2
    disp('Data Sample 3 :'); disp(sample3); disp('   Direkomendasikan: Ya');
else
    disp('Data Sample 3 :');disp(sample3); disp('   Direkomendasikan: Tidak');
end
if hasil4==2
    disp('Data Sample 4 :'); disp(sample4); disp('   Direkomendasikan: Ya');
else
    disp('Data Sample 4 :'); disp(sample4); disp('   Direkomendasikan: Tidak');
end
if hasil5==2
    disp('Data Sample 5 :'); disp(sample5); disp('   Direkomendasikan: Ya');
else
    disp('Data Sample 5 :'); disp(sample5); disp('   Direkomendasikan: Tidak');
end

disp('Kesimpulan : ');
disp('1. Alpha yang kurang rajin, kurang peduli, tidak mampu kerjasama, dan tidak inisiatif ');
if hasil1==2
    disp('   direkomendasikan untuk menjadi pegawai.');
else
    disp('   tidak direkomendasikan untuk menjadi pegawai.');
end
disp('2. Betha yang cukup rajin, kurang peduli, tidak mampu kerjasama, dan inisiatif ');
if hasil2==2
    disp('   direkomendasikan untuk menjadi pegawai.');
else
    disp('   tidak direkomendasikan untuk menjadi pegawai.');
end
disp('3. Coki yang cukup rajin, peduli, mampu kerjasama, dan tidak inisiatif ');
if hasil3==2
    disp('   direkomendasikan untuk menjadi pegawai.');
else
    disp('   tidak direkomendasikan untuk menjadi pegawai.');
end
disp('4. Diana yang rajin, kurang peduli, mampu kerjasama, dan inisiatif ');
if hasil4==2
    disp('   direkomendasikan untuk menjadi pegawai.');
else
    disp('   tidak direkomendasikan untuk menjadi pegawai.');
end
disp('5. Esa yang rajin, mampu kerjasama, tidak mampu kerjasama, dan tidak inisiatif ');
if hasil5==2
    disp('   direkomendasikan untuk menjadi pegawai.');
else
    disp('   tidak direkomendasikan untuk menjadi pegawai.');
end