# jeex
## Deeper concepts on Jakarta Enterprise Edition

### Used technologies
- Apache Tomcat 10.1
- Maven 3
  - See pom.xml for details
- Eclipse 2024-06 with disabled warning for other problems with TagExtraInfo class
  - Window - Preferences - Web - JSP files - Validation -> Custom actions

### Check for the RDBMS actually used
- _Almost any other RDBMS supported by JDBC should do_
- For setup see [hron](https://github.com/egalli64/hron)
- Let Tomcat know how to connect to it
  - The JDBC jar should be placed in Tomcat lib folder
  - Add a resource element in context.xml with name jdbc/hron
    - See META-INF/context.xml for details