FROM think/plantuml:latest
RUN apk add --no-cache inotify-tools

ADD *.sh /bin/
RUN chmod +x /bin/**.sh

ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "plantuml.jar"]
CMD ["/uml/*.uml", "-o", "/uml/images"]
