FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV GOPATH /home/developer/workspace
ENV GOROOT /usr/lib/go
ENV GOBIN $GOROOT/bin
ENV PATH $PATH:$GOBIN:$GOPATH/bin

RUN apk --update add git mercurial go godep                         && \
    mkdir -p /home/developer/workspace/bin                          && \
    
    go get -u -fix github.com/golang/tools/tree/master/cmd/benchcmp    \
      github.com/golang/tools/tree/master/cmd/bundle                   \
      github.com/golang/tools/tree/master/cmd/callgraph                \
      github.com/golang/tools/tree/master/cmd/cover                    \
      github.com/golang/tools/tree/master/cmd/digraph                  \
      github.com/golang/tools/tree/master/cmd/eg                       \
      github.com/golang/tools/tree/master/cmd/fiximports               \
      github.com/golang/tools/tree/master/cmd/godex                    \
      github.com/golang/tools/tree/master/cmd/godoc                    \
      github.com/golang/tools/tree/master/cmd/goimports                \
      github.com/golang/tools/tree/master/cmd/gomvpkg                  \
      github.com/golang/tools/tree/master/cmd/gorename                 \
      github.com/golang/tools/tree/master/cmd/gotype                   \
      github.com/golang/tools/tree/master/cmd/html2article             \
      github.com/golang/tools/tree/master/cmd/oracle                   \
      github.com/golang/tools/tree/master/cmd/present                  \
      github.com/golang/tools/tree/master/cmd/ssadump                  \
      github.com/golang/tools/tree/master/cmd/stress                   \
      github.com/golang/tools/tree/master/cmd/stringer                 \
      github.com/golang/tools/tree/master/cmd/tip                      \
      github.com/golang/tools/tree/master/cmd/vet                      \
      github.com/golang/tools/tree/master/refactor/importgraph         \
      github.com/golang/tools/tree/master/refactor/rename              \
      github.com/golang/tools/tree/master/refactor/satisfy             \
      github.com/go-godo/godo                                          \
      github.com/nsf/gocode                                            \
      github.com/kisielk/errcheck                                      \
      github.com/golang/lint/golint                                    \
      github.com/jstemmer/gotags                                    && \
    mv /usr/bin/godep $GOBIN/                                       && \
    mv /usr/bin/go $GOBIN/                                          && \
    mv /usr/bin/gofmt $GOBIN/                                       && \
    apk del git mercurial                                           && \
    find / -name ".git" -prune -exec rm -rf "{}" \;                 && \
    rm -rf /var/cache/apk/* /home/developer/workspace/*
