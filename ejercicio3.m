fa = {
    'exp(x1^2) - exp(sqrt(2)*x1)',
    'x1-x2'
    };

fb = {
    'x1+exp(x2)-cos(x2)',
    '3*x1-x2-sin(x2)'
    };

fc = {
    'x1^2-2*x1-x2+0.5',
    'x1^2+4*x2^2-4'
    };

fd = {
    'x1^2+x2^2-1',
    'x1^2-x2^2+0.5'
    };

fe = {
    'sin(x1)+x2*cos(x1)',
    'x1-x2'
    };

fg = {
    'x2*x2+x4*(x2+x3)',
    'x1*x3+x4*(x1+x3)',
    'x1*x2+x4*(x1+x2)',
    'x1*x2+x1*x3+x2*x3-1'
    };


% Valores inciales
x0 = [0.5; 0.5];
vars = {'x1', 'x2'};


% Llama a la funcion fa
fprintf("Para fa = \n")
disp(fa)
[x_k, k, e_k] = ejercicio2(x0, fa, vars);

fprintf("Solución aproximada:\n xk = \n")
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)
fprintf('------------------------ \n \n \n')


% Llama a la funcion fb
fprintf("Para fb = \n")
disp(fb)
[x_k, k, e_k] = ejercicio2(x0, fb, vars);

fprintf("Solución aproximada:\n xk = \n")
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)
fprintf('------------------------ \n \n \n')


% Llama a la funcion fc
fprintf("Para fc = \n")
disp(fc)
[x_k, k, e_k] = ejercicio2(x0, fc, vars);

fprintf('Solución aproximada:\nxk = \n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)
fprintf('------------------------ \n \n \n')


% Llama a la funcion fd
fprintf("Para fd = \n")
disp(fd)
[x_k, k, e_k] = ejercicio2(x0, fd, vars);

fprintf('Solución aproximada:\nxk = \n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)
fprintf('------------------------ \n \n \n')

% Llama a la funcion fe
fprintf("Para fe = \n")
disp(fe)
[x_k, k, e_k] = ejercicio2(x0, fe, vars);

fprintf('Solución aproximada:\nxk = \n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)
fprintf('------------------------ \n \n \n')


% Se redefinen las variables iniciales para fg
x0 = [0.5; 0.5; 0.5; 0.5];
vars = {'x1', 'x2', 'x3', 'x4'};

% Llama a la función fg
fprintf("Para fg = \n")
disp(fg)
[x_k, k, e_k] = ejercicio2(x0, fg, vars);

fprintf('Solución aproximada:\nxk = \n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)
fprintf('------------------------ \n \n \n')
