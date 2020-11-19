FROM golang:1.13

MAINTAINER slucidi <slucidi@redhat.com>

COPY inventory /inventory/

RUN go get -u github.com/vmware/govmomi/vcsim

EXPOSE 8989

CMD /go/bin/vcsim -load /inventory -l "0.0.0.0:8989"
