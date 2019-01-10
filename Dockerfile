FROM alpine:latest


RUN apk update && apk add ca-certificates \
  jq \
  bash \
  curl \
  sshpass \
  openssh \
  openssl \
  wget \
  git \
  libc6-compat \
  bind-tools


RUN wget -O /usr/local/bin/om "https://github.com/pivotal-cf/om/releases/download/0.41.0/om-linux"
RUN wget -O /usr/local/bin/spruce "https://github.com/geofffranks/spruce/releases/download/v1.18.0/spruce-linux-amd64"
RUN wget -O - "https://github.com/vmware/govmomi/releases/download/v0.18.0/govc_linux_amd64.gz" | gunzip -c > /usr/local/bin/govc
RUN wget -O /usr/local/bin/replicator "https://github.com/pivotal-cf/replicator/releases/download/0.9.0/replicator-linux"
RUN wget -O /usr/local/bin/pivnet "https://github.com/pivotal-cf/pivnet-cli/releases/download/v0.0.53/pivnet-linux-amd64-0.0.53"
RUN wget -O /usr/local/bin/winfs-injector "https://github.com/pivotal-cf/winfs-injector/releases/download/0.11.0/winfs-injector-linux"
RUN wget -O /usr/local/bin/bosh "https://s3.amazonaws.com/bosh-cli-artifacts/bosh-cli-3.0.1-linux-amd64"
RUN wget -O cf.tar "https://packages.cloudfoundry.org/stable?release=linux64-binary&source=github" && tar xvf cf.tar && mv cf /usr/local/bin/cf && rm -r cf.tar
RUN wget -O /usr/local/bin/yaml2vault "https://s3-us-west-1.amazonaws.com/yaml2vault-pipeline/yaml2vault"
RUN wget "https://github.com/cloudfoundry-incubator/bosh-backup-and-restore/releases/download/v1.2.8/bbr-1.2.8.tar" && tar xvf bbr-1.2.8.tar && mv releases/bbr /usr/local/bin/bbr && rm -r bbr-1.2.8.tar releases
RUN wget -O /usr/local/bin/fly "https://github.com/concourse/fly/releases/download/v4.2.1-rc.2/fly_linux_amd64"

RUN chmod +x /usr/local/bin/om
RUN chmod +x /usr/local/bin/spruce
RUN chmod +x /usr/local/bin/govc
RUN chmod +x /usr/local/bin/replicator
RUN chmod +x /usr/local/bin/pivnet
RUN chmod +x /usr/local/bin/winfs-injector
RUN chmod +x /usr/local/bin/bosh
RUN chmod +x /usr/local/bin/yaml2vault
RUN chmod +x /usr/local/bin/bbr
RUN chmod +x /usr/local/bin/cf
RUN chmod +x /usr/local/bin/fly
