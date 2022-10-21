Feature: Como developer quiero recibir notificaciones de las empresas que tienen interés en mi perfil

    Scenario: E01: Visualizar las empresas que tienen interés por mi perfil
        TA01

        Given el developer se encuentra en busca de empleo.
        When ingresa el en sección “notifications”.
        Then visualiza las últimas notificaciones de las empresas interesadas en su perfil. 

        Examples:
            | Notifications                                         |
            | Tomas Sanchez From Backus is interest on your profile |

    Scenario: E02: Visualizar la oferta laboral de la notificación 
        TA02

        Given se encuentra en la sección “notifications”.
        When selecciona la opción “view”.
        Then  lo redirecciona a la oferta laboral de la empresa que está interesada en su perfil.


        Examples:
            | Notifications                                         |   View                      |
            | Tomas Sanchez From Backus is interest on your profile |   Big Data architect Job    |

    Scenario: E03: Eliminar las notificaciones 
        TA03

        Given se encuentra en la sección “notifications”.
        When selecciona la opción “delete”.
        Then  se elimina la notificación.


        Examples:
            | Notifications                                         |   Delete               |
            | Tomas Sanchez From Backus is interest on your profile |   Notification removed |
            

    