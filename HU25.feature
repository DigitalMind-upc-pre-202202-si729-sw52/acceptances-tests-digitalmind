Feature: Como recruiter quiero recibir notificaciones de los perfiles de developers que más destacan

    Scenario: E01: Visualizar los perfiles de developers más destacados
        TA01

        Given el recruiter se encuentra en busca de developers.
        When ingresa en la sección “notifications”.
        Then visualiza las últimas notificaciones de los  perfiles de developers más destacados.  

        Examples:
            | Notifications                                         |
            | Guillermo Diaz  Wants to work for you |

    Scenario: E02: Visualizar el perfil del developers de la notificación 
        TA02

        Given se encuentra en la sección “notifications”.
        When selecciona la opción “view”.
        Then lo redirecciona al perfil del developer.


        Examples:
            | Notifications                         |   View                                                                                                                                                                                                                                     |
            | Guillermo Diaz  Wants to work for you |   Specialist in software development and architecture. Agile development experience software, system modeling, database management. I consider myself a person responsible, able to achieve all the goals I set in my career professional. |

    Scenario: E03: Eliminar las notificaciones 
        TA03

        Given se encuentra en la sección “notifications”.
        When selecciona la opción “delete”.
        Then  se elimina la notificación.


        Examples:
            | Notifications                         |   Delete               |
            | Guillermo Diaz  Wants to work for you |   Notification removed |
            

    