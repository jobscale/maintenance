if [[ $(grep -i debian /etc/*release | wc -l) > 0 ]]
then
  export DEBIAN_FRONTEND=noninteractive
  apt update
  apt install -y net-tools dnsutils iputils-ping procps sudo vim curl git tmux
  rm -fr /var/lib/apt/lists/*
fi
