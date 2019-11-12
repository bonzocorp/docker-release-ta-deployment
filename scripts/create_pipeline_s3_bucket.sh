#!/usr/bin/env bash

###
# @description Creates s3 bucket for versioning images
#
# @arg $1 string Image name
#
# @stdout aws cli output
##
function create-pipeline-s3-bucket(){
  aws s3api create-bucket --acl public-read --bucket $1-pipeline --region us-west-2 --create-bucket-configuration LocationConstraint=us-west-2
}

create-pipeline-s3-bucket "${@:-}"
