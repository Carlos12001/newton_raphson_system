function [x_k, k, e_k, errors] = newton_raphson_system(x0, f, vars, tol, iterMax)
  pkg load symbolic;
  % Crear símbolos para las funciones y las variables
  f_sym = sym(zeros(1, length(f)));
  x_sym = sym(zeros(1, length(vars)));
  for i = 1:length(f)
    f_sym(i) = sym(f{i});
    x_sym(i) = sym(vars{i});
  end
  
  % Calcular el Jacobiano
  J = jacobian(f_sym, x_sym);
  
  % Definir las funciones a utilizar en Octave
  f_func = @(input) double(subs(f_sym, x_sym, num2cell(input)));
  J_func = @(input) double(subs(J, x_sym, num2cell(input)));
  
  % Inicializar variables
  x_k = x0;
  e_k = inf;
  k = 0;
  errors = [];
  
  % Bucle del método de Newton-Raphson
  while e_k > tol && k < iterMax
    F = f_func(x_k).';
    J_inv = inv(J_func(x_k));
    
    x_k1 = x_k - J_inv * F;
    e_k = norm(F, 2);
    
    errors = [errors; e_k];
    x_k = x_k1;
    k = k + 1;
  end
  
  % Crear gráfica de iteraciones vs errores
  figure;
  plot(1:k, errors, '-o');
  xlabel('Iteraciones');
  ylabel('Error');
  title('Newton-Raphson: Iteraciones vs Error');
end
