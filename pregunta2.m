function [x_k, k, e_k] = pregunta2(x0, f, vars,
                                                tol=1e-6, iterMax=10)
  [x_k, k, e_k] = newton_raphson_system(x0, f, vars,tol, iterMax)
end

function [x_k, k, e_k] = newton_raphson_system(x0, f, vars,
                                                tol=1e-6, iterMax=10)
  warning('off', 'all');
  pkg load symbolic;
  % Hace simbolico las funciones y las variables
  f_sym = sym(zeros(1, length(f)));
  x_sym = sym(zeros(1, length(vars)));
  for i = 1:length(f)
    f_sym(i) = sym(f{i});
    x_sym(i) = sym(vars{i});
  end

  % Calcula el Jacobiano
  J_sym = jacobian(f_sym, x_sym);

  % Vuelve numericas a las funciones
  f_func = @(input) double(subs(f_sym, x_sym, num2cell(input)));
  J_func = @(input) double(subs(J_sym, x_sym, num2cell(input)));

  % Iniciar variables
  x_k = x0;
  e_k = inf;
  k = 0;
  errors = [];

  % Metodo de Newton Raphson
  while e_k > tol && k < iterMax
    F = f_func(x_k).';
    J = J_func(x_k);
    y = pseudeo_inverse(J, F, tol, 10);

    x_k1 = x_k - y;
    e_k = norm(F, 2);

    errors = [errors; e_k];
    x_k = x_k1;
    k = k + 1;
    fprintf("x_%i = \n", k);
    disp(x_k);
  end

  %Grafico
  figure;
  plot(1:k, errors, '-o');
  xlabel('Iteraciones', 'FontSize', 24);
  ylabel('Error', 'FontSize', 24);
  title('Newton-Raphson: Iteraciones vs Error', 'FontSize', 36);
  set(gca, 'FontSize', 24);

end

function [y, err, k] = pseudeo_inverse(A, b, tol=1e-9, max_iter=2500)
    alpha = norm(A, 'fro');
    pInvA = 1 / (alpha^2) * A';
    row_num = size(A, 1);
    Im_2 = 2*eye(row_num);

    for k = 1:max_iter
        pInvA = pInvA*(Im_2 -  A * pInvA);
        err = norm(A*pInvA*A - A, 'fro');
        if err < tol
            break;
        end
    end

    y = pInvA * b;

    err = norm(A*y - b, 'fro');

end
