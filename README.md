# Travel agent docker-release-ta-deployment

Releasing CI and source of docker images. Uses travel agent as a template solution for the pipeline.

## Docker images

### Ci Tools

[![ci-tools](http://34.211.245.211:8080/api/v1/pipelines/docker-images/jobs/build-ci-tools/badge)](http://34.211.245.211:8080/?groups=ci-tools)

### Promoting new docker images

Concourse CI promote job requires release notes before creating a new version
of a docker image.
This release notes can be added at `ci-tools/release_notes.md`
