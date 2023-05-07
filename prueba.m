

% Definir funciones no lineales
f = {'x^2 + y^2 + z^2 - 1', '2*x^2+y^2-4*z', '1'};

% Definir variables
vars = {'x', 'y', 'z'};

% Valores inciales
x0 = [0.5; 0.5; 0.5];

% Llama a la funcion
[x_k, k, e_k] = ejercicio2(x0, f, vars);

fprintf('Solución aproximada:\nxk = \n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('e_%.i = %.2e\n', k, e_k)

