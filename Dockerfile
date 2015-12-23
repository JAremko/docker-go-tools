FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV GOPATH /home/developer/workspace
ENV GOROOT /usr/lib/go
ENV GOBIN $GOROOT/bin
ENV PATH $PATH:$GOBIN:$GOPATH/bin

RUN apk --update add git mercurial go godep                            && \
    mkdir -p /home/developer/workspace                                 && \
    
    go get -u github.com/golang/tools/tree/master/cmd/benchcmp         && \
    go get -u github.com/golang/tools/tree/master/cmd/bundle           && \
    go get -u github.com/golang/tools/tree/master/cmd/callgraph        && \
    go get -u github.com/golang/tools/tree/master/cmd/cover            && \
    go get -u github.com/golang/tools/tree/master/cmd/digraph          && \
    go get -u github.com/golang/tools/tree/master/cmd/eg               && \
    go get -u github.com/golang/tools/tree/master/cmd/fiximports       && \
    go get -u github.com/golang/tools/tree/master/cmd/godex            && \
    go get -u github.com/golang/tools/tree/master/cmd/godoc            && \
    go get -u github.com/golang/tools/tree/master/cmd/goimports        && \
    go get -u github.com/golang/tools/tree/master/cmd/gomvpkg          && \
    go get -u github.com/golang/tools/tree/master/cmd/gorename         && \
    go get -u github.com/golang/tools/tree/master/cmd/gotype           && \
    go get -u github.com/golang/tools/tree/master/cmd/html2article     && \
    go get -u github.com/golang/tools/tree/master/cmd/oracle           && \
    go get -u github.com/golang/tools/tree/master/cmd/present          && \
    go get -u github.com/golang/tools/tree/master/cmd/ssadump          && \
    go get -u github.com/golang/tools/tree/master/cmd/stress           && \
    go get -u github.com/golang/tools/tree/master/cmd/stringer         && \
    go get -u github.com/golang/tools/tree/master/cmd/tip              && \
    go get -u github.com/golang/tools/tree/master/cmd/vet              && \
    go get -u github.com/golang/tools/tree/master/refactor/importgraph && \
    go get -u github.com/golang/tools/tree/master/refactor/rename      && \
    go get -u github.com/golang/tools/tree/master/refactor/satisfy     && \
    go get -u github.com/go-godo/godo                                  && \
    go get -u github.com/nsf/gocode                                    && \
    go get -u github.com/kisielk/errcheck                              && \
    go get -u github.com/golang/lint/golint                            && \
    go get -u github.com/jstemmer/gotags                               && \
    mv /usr/bin/godep $GOBIN/                                          && \
    mv /usr/bin/go $GOBIN/                                             && \
    mv /usr/bin/gofmt $GOBIN/                                          && \
    apk del git mercurial                                              && \
    find / -name ".git" -prune -exec rm -rf "{}" \;                    && \
    rm -rf /var/cache/apk/* /home/developer/workspace/*
