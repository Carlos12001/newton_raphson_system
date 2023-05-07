

% Definir funciones no lineales
f = {'x^2 + y^2 + z^2 - 1', '2*x^2+y^2-4*z', '3*x^2-4*y+z^2'};

% Definir variables
vars = {'x', 'y', 'z'};

% Establecer parámetros
x0 = [0.5; 0.5; 0.5];

% Llamar a la función newton_raphson_system y mostrar resultados
[x_k, k, err, errors] = newton_raphson_system(x0, f, vars, tol, iterMax);

fprintf('Solución aproximada:\n')
disp(x_k)

fprintf('k = %.i\n', k)
fprintf('err = %.2e\n', err)

