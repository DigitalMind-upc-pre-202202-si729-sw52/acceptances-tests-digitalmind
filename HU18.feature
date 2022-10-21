Feature: Como developer quiero actualizar mi informacion para que las empresas consideren mis datos actuales

    Scenario: E01: Visualizar datos personales
        TA01

        Given el usuario se registra satisfactoriamente.
        When se dirige a la seccion “Mi perfil”.
        Then la aplicacion le muestra sus datos personales basicos.

        Examples:
            | Link router 'Mi Perfil' | | datos              |
            | clic()                  | | correo-electronico |

    Scenario: E02: Acceder al formulario de actualizacion de datos
        TA02

        Given el usuario se encuentra en la seccion “Mi perfil”.
        When se dirige al boton “actualizar datos”.
        Then la aplicacion despliega un formulario, con los campos disponibles, para completar con su informacion.


        Examples:
            | campos disponibles    |
            | anios de experiencia  |
            | departamento          |
            | cuidad                |  
            | edad                  |

    Scenario: E03: Rellenar el formulario con los datos.
        TA03

        Given el usuario despliega el formulario correctamente.
        Y el usuario coloca la cantidad de anios de experiencia en el campo “Anios de experiencia”.
        Y el usuario selecciona el departamento que desee en el submenu “Departamento”.
        Y el usuario selecciona la ciudad que desee en el submenu “Ciudad”.
        Y coloca su edad en el campo “Edad”.
        Y el usuario selecciona los tipos de tecnologias que maneja.
        Y el usuario selecciona el grado de estudios que tiene en el submenu “Grado de estudios”.
        When oprime el boton “Confirmar datos”.
        Then la aplicacion le redirecciona a la seccion mi perfil, senialando sus datos actualizados.


        Examples:
            | anios-de-experiencia | | departamento | | ciudad  | | edad    | | grado-de-estudios   | | Link router 'confirmar datos' |
            | 6                    | | Lima         | | Lima    | | 29      | | secundaria completa | | clic()                        |