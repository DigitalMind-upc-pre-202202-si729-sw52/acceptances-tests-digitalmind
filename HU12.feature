Feature: Como developer quiero visualizar mis proyectos en mi perfil para que las empresas puedan evaluarlo

    Scenario: E01: El developer visualiza sus proyectos desplegados
        TA01

        Given el usuario desea ver sus proyectos desplegados,
        When el usuario ingresa a la sección de "Profile",
        Then el usuario visualiza sus proyectos desplegados en la sección "Latest projects".

        Examples: 
            |Poject Name       | Project Description | Project URL   |
            | Personal Website | My personal website | www.myweb.com |

    Scenario: E02: El developer no visualiza sus proyectos desplegados
        TA02

        Given el usuario desea ver sus proyectos desplegados,
        When el usuario ingresa a la sección de "Profile",
        Then el usuario no visualiza ningún proyecto en la sección "Projects".

        Examples: 
            |Pojects                       |  
            | Usted aún no tiene proyectos | 