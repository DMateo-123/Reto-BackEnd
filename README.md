## Reto de Automatización QA - BackEnd

Este proyecto tiene como objetivo automatizar las pruebas de una API de usuarios utilizando Karate DSL. A continuación se detallan los pasos para la configuración del proyecto, estructura, y cómo se han implementado las pruebas para cada uno de los endpoints de la API. Las pruebas serán realizadas para la API de Usuarios de ServeRest (https://serverest.dev/)

### Requisitos
- Java 8 o superior.
- Karate DSL: Se utilizará Karate para la automatización de las pruebas.
- Maven para la gestión de dependencias.
- API de usuarios disponible para pruebas.

### Instalación
###### 1. Clonar el repositorio
Primero, clonar el repositorio en tu máquina local:

`git clone https://github.com/DMateo-123/Reto-BackEnd.git `

###### 2. Configurar el proyecto
Instalar las dependencias Maven

### Estructura del Proyecto
La estructura del proyecto es la siguiente:

- src/main/test/java/REST/: Carpeta donde se encuentran los archivos de características (.feature).

- - user-delete.feature: Prueba para eliminar un usuario.

- - user-get.feature: Prueba para listar todos los usuarios.

- - user-getID.feature: Prueba para buscar un usuario por ID.

- - user-post.feature: Prueba para registrar un nuevo usuario.

- - user-put.feature: Prueba para actualizar los datos de un usuario.

### Validaciones

Cada prueba valida que:

- Las respuestas tengan el formato correcto (JSON).
- El código de estado HTTP sea el esperado.
- Los valores en la respuesta sean los correctos.

### Ejecución de las Pruebas
El proyecto está configurado para ejecutar las pruebas utilizando un runner en Java. La clase karateRunner.java contiene el siguiente código para ejecutar las pruebas:



    import com.intuit.karate.junit5.Karate;
    
    public class karateRunner {
    
        @Karate.Test
        Karate testSample() {
            return Karate.run("classpath:REST");
        }
    }

###### Explicación:
Karate.run("classpath:REST"): Aquí se especifica la ruta del archivo .feature o de la carpeta que contiene las pruebas de Karate. Por ejemplo, si deseas ejecutar el archivo user-get.feature en específico, la ruta sería "classpath:REST/user-get.feature".