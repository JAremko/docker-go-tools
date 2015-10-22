FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV GOPATH /home/developer/workspace
ENV GOROOT /usr/lib/go
ENV GOBIN $GOROOT/bin
ENV PATH $PATH:$GOBIN:$GOPATH/bin

RUN apk --update add git mercurial go godep          && \
    mkdir -p /home/developer/workspace               && \ 
    rm -rf /var/chache/apk/*                         && \
    go get -u golang.org/x/tools/cmd/benchcmp        && \
    go get -u golang.org/x/tools/cmd/callgraph       && \
    go get -u golang.org/x/tools/cmd/digraph         && \
    go get -u golang.org/x/tools/cmd/eg              && \
    go get -u golang.org/x/tools/cmd/fiximports      && \
    go get -u golang.org/x/tools/cmd/godex           && \
    go get -u golang.org/x/tools/cmd/godoc           && \
    go get -u golang.org/x/tools/cmd/gomvpkg         && \
    go get -u golang.org/x/tools/cmd/gorename        && \
    go get -u golang.org/x/tools/cmd/html2article    && \
    go get -u github.com/kisielk/errcheck            && \
    go get -u golang.org/x/tools/cmd/oracle          && \
    go get -u golang.org/x/tools/cmd/ssadump         && \
    go get -u golang.org/x/tools/cmd/stringer        && \
    go get -u golang.org/x/tools/cmd/vet             && \
    go get -u golang.org/x/tools/cmd/vet/whitelist   && \
    go get -u code.google.com/p/rog-go/exp/cmd/godef && \
    go get -u github.com/golang/lint/golint          && \
    go get -u github.com/jstemmer/gotags             && \
    mv /usr/bin/godep $GOBIN/                        && \
    mv /usr/bin/go $GOBIN/                           && \
    apk del git mercurial                            && \
    sh /util/ocd-clean $GOROOT/                      && \
    rm -rf /home/developer/workspace/*
