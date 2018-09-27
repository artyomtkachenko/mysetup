source ${HOME}/.git-prompt.sh
source <(kubectl completion bash)
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

alias dk='docker'
alias docker-token='eval $(aws ecr get-login --no-include-email --registry-ids <ID> --region  <reg>)'
alias docker-clean='docker rmi $(docker images -qa -f dangling=true)'
alias AWS_FOO='eval $(extract-aws-token.py foo)'
alias SAVE_MY_PASS='security add-generic-password -a ADFS_USERNAME -s saml2adfs -w '
alias LIST_SSM='aws ssm describe-parameters  --query "Parameters[*].Name" --region <reg>'
alias GET_SSM_PARAM='aws ssm get-parameter --name  ${SSM_KEY_NAME} --with-decryption --query "Parameter.Value"  --region <reg> --output text |pbcopy'
alias KUBE_FOO='export KUBECONFIG=${HOME}/.kube/foo.yml'

export PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]\$(__git_ps1) -> \[\033[0m\]"
export PATH=${HOME}/bin:${PATH}

myssh() {
  ssh $(echo $1 | sed 's/ip\-//'| cut -d '.' -f 1| sed 's/-/\./g')
}
