# Newton-Raphson System Solver

Este proyecto implementa un solucionador de sistemas de ecuaciones no lineales utilizando el método de Newton-Raphson. El código está escrito en Octave.

## Pseudocódigo

### Función Principal: newton_raphson_system

    Crear símbolos para las funciones y las variables.
    Calcular el Jacobiano de las funciones con respecto a las variables.
    Definir las funciones numéricas a partir de las funciones simbólicas.
    Inicializar las variables: punto inicial x_k, error e_k, contador de iteraciones k y lista de errores.
    Iniciar el bucle del método de Newton-Raphson:
    a. Calcular el valor de las funciones y el Jacobiano en el punto actual x_k.
    b. Calcular la solución aproximada y utilizando la función pseudo_inverse.
    c. Actualizar el punto x_k1 y el error e_k.
    d. Registrar el error en la lista de errores.
    e. Actualizar el punto x_k y el contador de iteraciones k.
    Crear una gráfica de las iteraciones vs. error.

### Función Auxiliar: pseudo_inverse

    Calcular el valor alpha como la norma de Frobenius de la matriz A.
    Inicializar la matriz pseudo-inversa pInvA utilizando el valor de alpha.
    Iniciar el bucle de iteraciones:
    a. Actualizar la matriz pseudo-inversa pInvA.
    b. Calcular el error utilizando la norma de Frobenius.
    c. Verificar si el error es menor que la tolerancia, y si es así, detener el bucle.
    Calcular la solución aproximada y multiplicando la matriz pseudo-inversa por el vector b.
    Calcular el error entre A*y y b utilizando la norma de Frobenius.

## Uso

Para utilizar este solucionador de sistemas de ecuaciones no lineales, defina las funciones no lineales y las variables en forma de cadenas de caracteres. Luego, proporcione un punto inicial x0, una tolerancia tol y un número máximo de iteraciones iterMax. Finalmente, llame a la función newton_raphson_system con estos argumentos.

El solucionador retornará la solución aproximada x_k, el número de iteraciones k y el error final e_k. Además, se generará una gráfica de las iteraciones vs. error para visualizar la convergencia del método.