Feature: Como developer quiero visualizar mis certificados de trabajo y cursos en línea para que las empresas conozcan sobre mi experiencia laboral y mi formación académica

    Scenario: E01: El developer visualiza sus certificados de trabajo y cursos 
        TA01

        Given el developer tiene certificados de trabajo y cursos,
        When el developer selecciona la opción "Profile",
        Then el developer visualiza sus certificados de trabajo y cursos en la sección "Certificates & Awards".

       Examples: 
        |Certificate Name          | Platform | Date |
        |Data Strcture & Algorithms| Udemy    | 2019 |

    Scenario: E02: El developer no visualiza sus certificados de trabajo y cursos
        TA02

        Given el developer no tiene certificados de trabajo ni cursos,
        When el developer selecciona la opción "Profile",
        Then el developer no visualiza sus certificados en la sección "Certificates & Awards".

        Examples: 
            |Certificates & Awards            |  
            | Usted aún no tiene certificados | 