# assessment_pragma

- BDD:
    BDD (Behavior Driven Development) o desarrollo dirigido por el comportamiento. Aunque en este caso el desarrollo también se dirige por las pruebas, son totalmente distintas, ya que lo hace centrándose en una perspectiva del usuario y el comportamiento del sistema.

- DDD:
    En términos generales, el DDD consiste, principalmente, en dos procesos: el modelado del dominio y la implementación de la lógica del dominio.    

- TDD:
    TDD (Test Driven Development) o desarrollo dirigido por pruebas, son justamente las pruebas las que van a marcar el camino a seguir.    

- Especificaciones del desarrollo:

  1. Al crear una nueva cuenta, el saldo  de esta es igual a 0
  2. cuando hacemos un ingreso, el saldo de esta cuenta pasa a ser el valor del saldo inicial mas el dinero ingresado
  3. cuando retiremos dinero, el saldo de la cuenta pasa a ser el valor del saldo inicial menos el dinero ingresado
  4. si intentamos retirar mas dinero del que tenemos  en la cuenta, saltara una excepcion.


- Comando a utilizar:

  1.Instalacion de los paquetes a utilizar en el desarrollo =>
    pip install -r requirements.txt

  2.Verificacion de los paquetes instalados =>
    pip freeze

- Ejecucion de pruebas:

  1. python -m unittest tests/test_nueva_cuenta.py
  2. python -m unittest tests/test_ingreso_cuenta.py
  3. python -m unittest tests/test_salida_cuenta.py 


- KISS:
    El principio KISS es el acrónimo Keep It Simple, Stupid, (mantenlo simple, estúpido)
      Keep it simple, silly. Mantenlo simple, tonto.
      Keep it short and simple. Mantenlo corto y simple.
      Keep it short and sweet. Mantenlo corto y dulce. 
      Keep it simple and straightforward. Mantenlo simple y sencillo.
      Keep it small and simple. Mantenlo pequeño y simple.
      Keep it stupid simple. Mantenlo estúpidamente simple.

- SOLID:
    Son seis principios del desarrollo orientado a objetos que aplicados juntos facilitan que el desarrollo sea más fácil de mantener y de extender durante el tiempo: 
    S: Principio de responsabilidad única (Single responsibility principle)
    O: Principio de abierto/cerrado (Open/closed principle)
    L: Principio de sustitución de Liskov (Liskov substitution principle)
    I: Principio de segregación de la interfaz (Interface segregation principle)
    D: Principio de inversión de la dependencia (Dependency inversion principle)

- YAGNI: 
    plantea que no se debe incorporar nunca una funcionalidad a no ser que sea completamente necesaria. 

- DRY:
    corresponde a Don’t Repeat Yourself, y se utiliza principalmente en el ámbito del desarrollo de software para evitar la duplicación de código. Según este principio la información no debe ser duplicada, ya que eso dificulta los cambios y la evolución posterior, y puede dar lugar a posibles inconsistencias.

- Paralelismo:
    ejecución simultánea de varios procesos computacionales.

- asincronia:
    es una técnica que permite a tu programa iniciar una tarea de larga duración y seguir respondiendo a otros eventos mientras esa tarea se ejecuta, en lugar de tener que esperar hasta que esa tarea haya terminado. Una vez que dicha tarea ha finalizado, tu programa presenta el resultado.

- concurrencia:
    refiere a la habilidad de distintas partes de un programa, algoritmo, o problema de ser ejecutado en desorden o en orden parcial, sin afectar el resultado final.            

- Creacion de clousters con terraform:

  aws eks update-kubeconfig --region us-east-1 --name my-cluster --alias my-cluster

  kubectl get nodes

- monitoreo infraestructura: 

  monitoreo preventivo, monitoreo proactivo, monitoreo analitico

  ¿Cómo funciona el Cloud Monitoring?
    Es fundamental asegurarse de que todo funciona correctamente para optimizar el rendimiento.

  Las principales funciones del monitoreo en la nube son:
    Control de sitios web alojados en la nube: supervisión y seguimiento de los procesos, el tráfico, la disponibilidad y del uso de recursos.

    Monitorización de máquinas virtuales: monitorización, tanto de la infraestructura de virtualización, como de las máquinas virtuales individuales, dentro del ámbito de gemelos digitales.

    Monitorización de almacenamiento en la nube: recursos de almacenamiento y sus procesos suministrados a máquinas virtuales, servicios, aplicaciones y bases de datos.

    Supervisión de la red virtual: recursos, dispositivos, conexiones y rendimiento de la red virtual.

    Seguimiento de las bases de datos en la nube: procesos de monitorización, consultas, disponibilidad y consumo de recursos.

    Gracias al monitoreo en la nube, es más sencillo identificar patrones y descubrir posibles riesgos de seguridad en la infraestructura.


- seguridad en terraform :

  tfsec:

    link instalacion
    https://aquasecurity.github.io/tfsec/v1.28.1/

  esta herramienta se puede integrar a su CI/CD

  para ignorar errores producidos por tfsec:

    #tfsec:ignore:error a ignorar 

+ Devsecops:

    identificar la madurez DevOps en tu organización (CALMS):

      Cultura: Es base de cualquier transformación DevOps exitosa. Las organizaciones deben crear una cultura que promueva la colaboración, la comunicación y la confianza entre los equipos de desarrollo y operaciones.

      Automatización: Es la herramienta esencial donde las organizaciones deben automatizar los procesos de desarrollo, despliegue y operaciones para reducir el riesgo y mejorar la eficiencia. Como digo siempre, aquellas tareas humanas en el SDLC puede provocar errores inevitablemente, y como no, se pueden evitar automatizando dichos procesos en el continuous integration & continuous deployment.

      Lean: Lean se centra en la eliminación de desperdicios y la mejora continua. Las organizaciones deben aplicar los principios Lean a sus procesos DevOps para mejorar el rendimiento y la calidad de sus aplicativos de manera que hagamos foco sobre lo que realmente es importante.
      
      Medir: Solemos decir "Medir todo", que realmente es tener controlado todo lo que pasa en nuestros Servicios. La medición es esencial para comprender el rendimiento y el impacto de los procesos. Las organizaciones deben recopilar datos y realizar análisis para identificar áreas de mejora, está medición esta muy relacionada con la Observabilidad.

      Compartir: El punto fundamental, romper esos silos de management tradicional, empezar a colaborar y en intercambiar de información. Las organizaciones deben crear un entorno de trabajo colaborativo en el que los equipos de desarrollo y operaciones puedan compartir ideas y conocimientos.


    Identificar tu nivel de madurez DevOps en la organización:

        DevOps not applied: Sería el resultado base de una organización que jamás ha llegado aplicar DevOps. Puede tener problemas en el día a día: Interrupciones de Servicio, cajón de sastre de trabajos pendientes, culpabilización entre los equipos, no se trabaja con planificaciones en los trabajos, las puestas en producción siempre van con retrasos o incluso defectos graves.

        DevOps Getting Started: Resultado en el cual la organización ya tiene en mente un cambio cultural y metodológico. Se empieza a esbozar guiones o pautas para mejorar documentación,procesos, herramientas de cara a automatizar ciertos procesos.

        DevOps Stability: Resultado en el cual la madurez DevOps es bastante estable, se esta cómodo pues ya tienen un rodaje importante y desean seguir creciendo e incluyendo nuevos procesos y herramientas en sus flujos de trabajo: Automatización del SDLC, los equipos ya trabajan cross-funcionales, se tiene claro el foco final del producto, se tiene madurez en el cambio cultural de los equipos, etc..

        DevOps Upgrade+: Resultado que consideramos maduro en una organización. Procesos integrados, herramientas claramente definidas y utilizadas, visión holística en la observabilidad continua así como automatización de flujos y entornos, así como los propios equipos satisfechos con el cambio cultural establecido.Este nivel de madurez dependiendo que tipo/tamaño de organización ya sería un punto de madurez más que efectivo para cubrir todos los gaps que se pueden encontrar y solo tendrían que establecer pequeños ajustes.

        DevOps Optimization: Resultado que establecemos en aquellas organizaciones que consideramos que tienen todo el nivel 4 y además, tienen ese nivel de evolución continua.Este nivel ya estaría completamente ajustado y alienado con negocio pero estarían dispuestos a ir al día con la técnología actual para optimizar sus procesos, recursos costes: AIdevops, FinOps, qaAI..etc.

        Generar un Plan de trabajo evolutivo de madurez DevOps
          Una vez identificado el nivel de madurez, podremos empezar a realizar un plan de trabajo evolutivo para realizar dichas mejoras se va a basar en 5 puntos clave para comentar a realizar estas mejoras:

            Gestión de desarrollo e integración continua

            Entornos e implementación

            Gestión de las publicaciones y acuerdos.

            Aseguramiento de Calidad y DevSecOps

            Gestión de datos
+ IaC:
  terraform init # Inicializa el proyecto
  terraform plan # Muestra los cambios que se van a hacer
  terraform apply # Aplica los cambios
  terraform destroy # Destruye los recursos creados
  terraform fmt # Formatea el código
  terraform validate # Valida el código  

+ Estrategias de despliegue:

  - Blue - Green:
      es un modelo de lanzamiento de aplicaciones que transfiere poco a poco el tráfico de usuarios de cierta versión anterior de una aplicación o microservicio a una versión nueva casi idéntica, cuando ambas se encuentran en producción.

  - Canary:
      es un lanzamiento progresivo de una aplicación que divide el tráfico entre una versión ya implementada y una versión nueva, y que la implementa para un subconjunto de usuarios antes del lanzamiento completo.  



