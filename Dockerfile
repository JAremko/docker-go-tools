FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

#useful for aliasing
LABEL jare-go-tools-docker-volume="true"

VOLUME /goroot

ENV GOPATH /home/developer/workspace
ENV GOROOT /goroot
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

ADD run /usr/local/bin/

RUN apk --update add go git mercurial                          && \
    rm -rf /var/chache/apk/*                                   && \
    export GOPATH=/home/developer/workspace                    && \
    export GOROOT=/goroot                                      && \
    mkdir -p $GOROOT/bin /home/developer/workspace             && \
    mv -f /usr/bin/go $GOROOT/bin/go                           && \
    mv -f /usr/bin/gofmt $GOROOT/bin/gofmt                     && \
    mv -f /usr/lib/go/* $GOROOT/                               && \
    go get -u golang.org/x/tools/cmd/benchcmp                  && \
    go get -u golang.org/x/tools/cmd/callgraph                 && \
    go get -u golang.org/x/tools/cmd/digraph                   && \
    go get -u golang.org/x/tools/cmd/eg                        && \
    go get -u golang.org/x/tools/cmd/fiximports                && \
    go get -u golang.org/x/tools/cmd/godex                     && \
    go get -u golang.org/x/tools/cmd/godoc                     && \
    go get -u golang.org/x/tools/cmd/gomvpkg                   && \
    go get -u golang.org/x/tools/cmd/gorename                  && \
    go get -u golang.org/x/tools/cmd/html2article              && \
    go get -u github.com/kisielk/errcheck                      && \
    go get -u golang.org/x/tools/cmd/oracle                    && \
    go get -u golang.org/x/tools/cmd/ssadump                   && \
    go get -u golang.org/x/tools/cmd/stringer                  && \
    go get -u golang.org/x/tools/cmd/tipgodoc                  && \
    go get -u golang.org/x/tools/cmd/vet                       && \
    go get -u golang.org/x/tools/cmd/vet/whitelist             && \
    go get -u code.google.com/p/rog-go/exp/cmd/godef           && \
    go get -u github.com/golang/lint/golint                    && \
    go get -u github.com/jstemmer/gotags                       && \
    mv -f /home/developer/workspace/bin/* $GOROOT/bin/         && \
    rm -rf /home/developer/workspace/*                         && \
    apk --update del go git mercurial                          && \
    sh /util/ocd-clean $GOROOT/                                && \
    tar -zcf /home/developer/goroot.tar.gz  $GOROOT            && \
    rm -rf  $GOROOT/*                                          
    
ENTRYPOINT ["sh", "/usr/local/bin/run"]
