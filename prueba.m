% Definir funciones no lineales
f = {'x^2 + y^2 + z^2 - 1', '2x^2+y^2', ' 3x2 4y ` z 2'};

% Definir variables
vars = {'x', 'y', 'z'};

% Establecer parámetros
x0 = [1; 1];
tol = 1e-9;
iterMax = 100;

% Llamar a la función newton_raphson_system y mostrar resultados
[x_k, k, e_k, errors] = newton_raphson_system(x0, f, vars, tol, iterMax);

fprintf('Solución aproximada:\n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('err = %.2e\n', err)

