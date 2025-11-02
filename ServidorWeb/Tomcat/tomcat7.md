


### configuración de pom para tomcat 7
<plugin>
    <groupId>org.apache.tomcat.maven</groupId>
    <artifactId>tomcat7-maven-plugin</artifactId>
    <version>2.2</version>
    <configuration>
        <url>http://localhost:8080/manager/text</url>
        <server>TomcatServer</server>
        <path>/spring-mvc-6</path>
    </configuration>
</plugin>

### comandos
>- mvn clean package tomcat7:deploy
>- mvn tomcat7:redeploy
>- mvn tomcat7:run


### configuración para tomcat 11
<plugin>
    <groupId>org.codehaus.cargo</groupId>
    <artifactId>cargo-maven3-plugin</artifactId>
    <version>1.10.9</version> <!-- última estable -->
    <configuration>
        <container>
            <containerId>tomcat11x</containerId>
            <home>C:\apache-tomcat-11.0.8</home>
        </container>
        <configuration>
            <type>standalone</type>
            <home>${project.build.directory}/cargo/configurations/tomcat11x</home>
            <properties>
                <cargo.servlet.port>8080</cargo.servlet.port>
            </properties>
        </configuration>
        <deployables>
            <deployable>
                <groupId>${project.groupId}</groupId>
                <artifactId>${project.artifactId}</artifactId>
                <type>war</type>
                <properties>
                    <context>/spring-mvc-6</context>
                </properties>
            </deployable>
        </deployables>
    </configuration>
</plugin>

### comandos para tomcat 11
>- mvn clean package
>- mvn cargo:run
>- mvn cargo:deploy
>- mvn cargo:redeploy