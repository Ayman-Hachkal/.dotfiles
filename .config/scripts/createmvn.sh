#!/bin/bash

clear
read -p "input archetype: " archetype   
if [[ -z $archetype ]]; then
  archetype="generate"
fi

clear

echo "com.mycompany.app"
read -p "input groupID:   " groupID
while [[ -z $groupID ]]; do
  read "groupID cannot be empty: " groupID
done

echo "my-app"
read -p "input artifactID: " artifactID
while [[ -z $artifactID ]]; do 
  read "artifactID cannot be empty: " artifactID
done

mvn archetype:$archetype -DgroupId=$groupID -DartifactId=$artifactID -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=1.4 -DinteractiveMode=false

