1. Склонировать проект.
2. В терминале перейти в дерикторию проекта
3. По необходимости установить доккер
4. При помощи мавенa выполнить команду package, в проекте должна создаться папка target, в ней должен быть файл spring-boot-0.0.1-SNAPSHOT.jar
5. Для создания образа выполнить команду docker build -t spring-boot .
6. Выполнить команду docker run -p 8080:8080 -v (полный путь до application.properties):/home/config/application.properties spring-boot
Для примера, полный путь до аpplication.properties может выглядеть следующим образом home/andrey/Projects/spring-boot/src/main/resources/application.properties.
7. Перейти по ссылке localhost:8080/demo
