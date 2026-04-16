fs = 1000;              % Częstotliwość próbkowania [Hz]
t = -1:1/fs:1;          % Wektor czasu
% Tworzenie trapezu: szerokość góry 0.2s, zbocza po 0.1s
x = tripuls(t, 0.4, 0.5); % Funkcja tripuls z parametrem skośności 0.5 tworzy trapez

% Obliczanie FFT
N = length(x);
X = fftshift(fft(x));    % Obliczenie FFT i przesunięcie zera na środek
f = linspace(-fs/2, fs/2, N); % Wektor częstotliwości

plot(f, abs(X)/N);
title('Widmo amplitudowe trapezu (FFT)');
xlabel('Częstotliwość [Hz]');



freqs = -20:0.1:20;     % Wybrane częstotliwości do analizy
X_cont = zeros(size(freqs));

for i = 1:length(freqs)
    integrand = x .* exp(-1i * 2 * pi * freqs(i) * t);
    X_cont(i) = trapz(t, integrand); % Całkowanie metodą trapezów
end

plot(freqs, abs(X_cont));
title('Transformata obliczona metodą trapeza');
