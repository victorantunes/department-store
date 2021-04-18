tag = victorantunes/department-store

dev:
	mvn install
	docker build -t $(tag) -f Dockerfile.dev .
	
	#standalone mode
	#docker run --rm=true -it victorantunes/department-store
	
	#standalone mode with admin console
	docker run --rm=true -p 8080:8080 -p 9990:9990 -it $(tag) /opt/jboss/wildfly/bin/standalone.sh -b 0.0.0.0 -bmanagement 0.0.0.0