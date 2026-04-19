%%Triangle

a = input('Podaj długość boku a: ');
b = input('Podaj długość boku b: ');
c = input('Podaj długość boku c: ');

if (a + b > c) && (a + c > b) && (b + c > a)
    p = (a + b + c) / 2;
    P = sqrt(p * (p - a) * (p - b) * (p - c));
    
    fprintf(1, 'Pole trójkąta = %.2f\n', P);
else
    disp('Z podanych boków nie można utworzyć trójkąta!');
end

%% Square

a = input("Podaj długość a:");

area = a*a;

disp("Twoje pole wynosi: " + area);


%% Circle

r = input('Podaj długość promienia r: ');


if (r > 0)
    area = pi*r^2;
    disp("Pole koła wynosi: " + area)

else
    disp("Nie można policzyć pola koła")
end



