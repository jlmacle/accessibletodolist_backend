echo "**** Running the back-end as a Spring Boot app assumes for a regular, non-Docker PostgreSQL service to be running.
(to use localhost, instead of postgresql, as hostname)  ****"
echo "The configuration information for the PostgreSQL service can be found in the post below."
echo "https://javafullstackcode.wpcomstaging.com/2021/02/19/windows-cloning-the-backend-and-configuring-postgresql-the-environment-variables-and-eclipse-spring-tool-suite/"

echo "** Removing potential stack_backend service using port 8080 and potential stack_postgresql service using port 5432.**"
sudo docker stack rm stack 2> /dev/null

echo "** Removing potential atl-postgres and atl-backend services. **"
sudo docker service rm atl-postgres 2> /dev/null
sudo docker service rm atl-back-end 2> /dev/null