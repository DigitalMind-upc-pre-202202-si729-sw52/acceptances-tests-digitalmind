Feature: Como desarrollador deseo crearme una cuenta para poder acceder a las características de la app
    Scenario: E01: Registro exitoso
        TA01

        Given se encuentra en el formulario de registro de cuenta para desarrolladores
        When ingresa un correo electrónico no registrado, un DNI no registrado, su fecha de emisión, su dígito de seguridad y una contraseña válida (mayor o igual a 8 caracteres que incluyan al menos una letra y un número) junto a la confirmación de contraseña (la misma contraseña escrita correctamente).
        And presiona el botón “Register”
        Then la app muestra un mensaje diciéndole que está registrado, pero que tiene que confirmar su cuenta abriendo el link de confirmación enviado a su correo electrónico.

        Examples:
            | correo-electronico    | DNI      | fecha de emisión | dígito de seguridad | contraseña   | confirmar contraseña | Resultado                                                   |
            | abeleldulce@gmail.com | 75893047 | 28/10/2018       | 03                  | Developer#05 | Developer#05         | Gracias por registrarse. Revise su correo para verificación |

    Scenario: E02: Registro inválido
        TA02

        Given se encuentra en el formulario de registro de cuenta para desarrolladores.
        When completa sus datos, pero alguno o muchos de ellos son incorrectos.
        And presiona el botón “Register”
        Then la app le muestra un mensaje relacionado con la solución para el error o errores cometidos.

        Examples:
            | correo-electronico    | DNI      | fecha de emisión | dígito de seguridad | contraseña   | confirmar contraseña | Resultado                                     |
            | abeleldulce@gmail.com | 75893047 | 28/10/2018       | 03                  | Developer#05 | Developer05          | Los datos sobre la contraseña son incorrectos |

    Scenario: E03: Verificación de la cuenta
        TA03

        Given el usuario recibe el código de verificación en su correo electrónico
        When ingresa el código en el apartado de verificación
        And pulsa en el botón “OK”
        Then la web lo redirige al apartado de inicio

        Examples:
            | Codigo de verificación | Resultado                              |
            | 75BY63                 | Redirección al home de desarrolladores |