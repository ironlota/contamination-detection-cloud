#!/bin/sh

plan() {
    terraform plan
}

apply() {
    terraform apply
}

gen_cert() {
    terraform output db_client_key  > cert/client-key.pem
    terraform output db_client_cert > cert/client-cert.pem
    terraform output db_root_cert   > cert/root-cert.pem

    chmod 600 cert/*.pem
}

help() {
    echo "Available commands:"
    echo "- plan"
    echo "- apply"
    echo "- gen_cert"
}

if [ -z $1 ]
then
  help
else
  $1
fi
