#!/usr/bin/env sh
while inotifywait -e modify /uml/*.uml; do
 java -Djava.awt.headless=true -jar plantuml.jar /uml/*.uml -o /uml/images
done
