Feature: Como recruiter quiero visualizar postulantes disponibles en la plataforma
    Scenario: E01: Visualizar los developers con las habilidades requeridas
        TA01

        Given el usuario inicio sesión
        When ingresa en la sección “Home”
        Then se muestra las noticias en el home

        Examples:
            | News                         |                                                
            | Full Stack developer         |
            | Data scientist               |
            | Fullstack Developer          |
            
    Scenario: E02: No visualizar developers disponibles en la plataforma
        TA02

        Given el usuario inicio sesión
        When ingresa en la sección “Home”
        Then no encuentra a developers con las habilidades requeridas

        Examples:
            | News                             | 
            | No developer for the filters     |  