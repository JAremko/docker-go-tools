FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

#used to find a fitting container in bash aliases
LABEL jare-go-tools-docker-volume="true"

ENV GOPATH /home/developer/workspace
ENV GOROOT /goroot
ENV GOBIN /goroot/bin
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN apk --update add git mercurial                                                                         && \
    apk go --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community --allow-untrusted && \
    rm -rf /var/chache/apk/*                                                                               && \
    export GOPATH=/home/developer/workspace                                                                && \
    export GOROOT=/goroot                                                                                  && \
    mkdir -p $GOROOT/bin /home/developer/workspace                                                         && \
    mv -f /usr/bin/go $GOROOT/bin/go                                                                       && \
    mv -f /usr/bin/gofmt $GOROOT/bin/gofmt                                                                 && \
    mv -f /usr/lib/go/* $GOROOT/                                                                           && \
    go get -u golang.org/x/tools/cmd/benchcmp                                                              && \
    go get -u golang.org/x/tools/cmd/callgraph                                                             && \
    go get -u golang.org/x/tools/cmd/digraph                                                               && \
    go get -u golang.org/x/tools/cmd/eg                                                                    && \
    go get -u golang.org/x/tools/cmd/fiximports                                                            && \
    go get -u golang.org/x/tools/cmd/godex                                                                 && \
    go get -u golang.org/x/tools/cmd/godoc                                                                 && \
    go get -u golang.org/x/tools/cmd/gomvpkg                                                               && \
    go get -u golang.org/x/tools/cmd/gorename                                                              && \
    go get -u golang.org/x/tools/cmd/html2article                                                          && \
    go get -u github.com/kisielk/errcheck                                                                  && \
    go get -u golang.org/x/tools/cmd/oracle                                                                && \
    go get -u golang.org/x/tools/cmd/ssadump                                                               && \
    go get -u golang.org/x/tools/cmd/stringer                                                              && \
    go get -u golang.org/x/tools/cmd/tipgodoc                                                              && \
    go get -u golang.org/x/tools/cmd/vet                                                                   && \
    go get -u golang.org/x/tools/cmd/vet/whitelist                                                         && \
    go get -u code.google.com/p/rog-go/exp/cmd/godef                                                       && \
    go get -u github.com/golang/lint/golint                                                                && \
    go get -u github.com/jstemmer/gotags                                                                   && \
    cp -rf /home/developer/workspace/* $GOROOT/                                                            && \
    apk --update del go git mercurial                                                                      && \
    sh /util/ocd-clean $GOROOT/                                                                            && \
    rm -rf /home/developer/workspace/*
