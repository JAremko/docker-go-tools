FROM jare/alpine:latest

MAINTAINER JAremko <w3techplaygound@gmail.com>

ENV GOPATH /home/developer/workspace
ENV GOROOT /usr/lib/go
ENV GOBIN $GOROOT/bin
ENV PATH $PATH:$GOBIN:$GOPATH/bin

RUN apk --update add git mercurial go godep              && \
    mkdir -p /home/developer/workspace/bin               && \
    
    go get -u -fix                                          \
    
      godoc.org/golang.org/x/tools/cmd/benchcmp             \
      godoc.org/golang.org/x/tools/cmd/bundle               \
      godoc.org/golang.org/x/tools/cmd/callgraph            \
      godoc.org/golang.org/x/tools/cmd/cover                \
      godoc.org/golang.org/x/tools/cmd/digraph              \
      godoc.org/golang.org/x/tools/cmd/eg                   \
      godoc.org/golang.org/x/tools/cmd/fiximports           \
      godoc.org/golang.org/x/tools/cmd/godex                \
      godoc.org/golang.org/x/tools/cmd/godoc                \
      godoc.org/golang.org/x/tools/cmd/goimports            \
      godoc.org/golang.org/x/tools/cmd/gomvpkg              \
      godoc.org/golang.org/x/tools/cmd/gorename             \
      godoc.org/golang.org/x/tools/cmd/gotype               \
      godoc.org/golang.org/x/tools/cmd/html2article         \
      godoc.org/golang.org/x/tools/cmd/oracle               \
      godoc.org/golang.org/x/tools/cmd/present              \
      godoc.org/golang.org/x/tools/cmd/ssadump              \
      godoc.org/golang.org/x/tools/cmd/stress               \
      godoc.org/golang.org/x/tools/cmd/stringer             \
      godoc.org/golang.org/x/tools/cmd/tip                  \
      godoc.org/golang.org/x/tools/cmd/vet                  \
      
      golang.org/x/tools/refactor/eg                        \
      golang.org/x/tools/refactor/importgraph               \
      golang.org/x/tools/refactor/rename                    \
      golang.org/x/tools/refactor/satisfy                   \
      
      github.com/go-godo/godo                               \
      github.com/nsf/gocode                                 \
      github.com/kisielk/errcheck                           \
      github.com/golang/lint/golint                         \
      github.com/jstemmer/gotags                         && \
      
    mv /usr/bin/godep $GOBIN/                            && \
    mv /usr/bin/go $GOBIN/                               && \
    mv /usr/bin/gofmt $GOBIN/                            && \
    apk del git mercurial                                && \
    find / -name ".git" -prune -exec rm -rf "{}" \;      && \
    rm -rf /var/cache/apk/* /home/developer/workspace/*
