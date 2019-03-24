# add the second network so we get a second interface in the running container
docker network connect network2 `docker ps --latest --quiet`

# now we can run the apprunner, and provision start_simple_switch stuff from
# within the new shell
p4app exec bash
