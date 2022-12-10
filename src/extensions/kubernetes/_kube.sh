#!/bin/sh

alias klp="kubectl get pods -A"
alias kls="kubectl get service -A"
alias kli="kubectl get ingress -A"
alias kld="kubectl get deployments -A"
alias kde="kubectl describe events"
alias kle="kubectl get events -A"
alias klc="kubectl get certificates.cert-manager.io -A"
alias klcr="kubectl get certificaterequests.cert-manager.io -A"
alias klcsr="kubectl get certificatesigningrequests.certificates.k8s.io -A"
alias klca="kubectl get certificate -A"
alias klci="kubectl get awspcaclusterissuers.awspca.cert-manager.io -A"
alias klcj="kubectl get cronjobs -A"

bb_output_file_loaded "kube" $INSTALLATION_NARRATOR
