FROM wiremock/wiremock:latest
COPY mock-server/mappings/ /home/wiremock/mappings/

ENTRYPOINT ["/docker-entrypoint.sh", "--global-response-templating", "--disable-gzip", "--verbose"]