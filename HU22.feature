Feature: Como developer quiero visualizar los trabajos disponibles para postular a las empresas
    Scenario: E01: Visualizar trabajos disponibles en empresas
        TA01

        Given el usuario inicio sesión
        When ingresa en la sección “Home”
        Then se muestra las noticias en el home

        Examples:
            | News                         |                                                
            | Need a Full Stack developer  |
            | Need a data scientist        |
            | Fullstack Developer          |
            
    Scenario: E02: No visualiza trabajos disponibles en empresas
        TA02

        Given el usuario inicio sesión
        When ingresa en la sección “Home”
        Then le aparece un mensaje indicando que no hay solicitudes de developers recientemente

        Examples:
            | News                             | 
            | No developer requests recently   |  