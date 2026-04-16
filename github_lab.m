%%Triangle

a = input('Podaj długość boku a: ');
b = input('Podaj długość boku b: ');
c = input('Podaj długość boku c: ');

if (a + b > c) && (a + c > b) && (b + c > a)
    p = (a + b + c) / 2;
    P = sqrt(p * (p - a) * (p - b) * (p - c));
    
    fprintf('Pole trójkąta = %.2f\n', P);
else
    disp('Z podanych boków nie można utworzyć trójkąta!');
end

