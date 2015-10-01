`jare/go-tools:latest`   [![jare/go-tools:latest](https://badge.imagelayers.io/jare/go-tools:latest.svg)](https://imagelayers.io/?images=jare/go-tools:latest 'jare/go-tools:latest')  

#### **Go tools:**  
  1. go    
  2. [gofmt](https://golang.org/cmd/gofmt/)  
  3. [benchcmp](https://golang.org/x/tools/cmd/benchcmp)   
  4. [callgraph](https://golang.org/x/tools/cmd/callgraph)   
  5. [digraph](https://golang.org/x/tools/cmd/digraph)   
  6. [eg](https://golang.org/x/tools/cmd/eg)   
  7. [fiximports](https://golang.org/x/tools/cmd/fiximports)   
  8. [godex](https://golang.org/x/tools/cmd/godex)   
  9. [godoc](https://golang.org/x/tools/cmd/godoc)   
  10. [gomvpkg](https://golang.org/x/tools/cmd/gomvpkg)   
  11. [gorename](https://golang.org/x/tools/cmd/gorename)   
  12. [html2article](https://golang.org/x/tools/cmd/html2article)   
  13. [oracle](https://golang.org/x/tools/cmd/oracle)   
  14. [ssadump](https://golang.org/x/tools/cmd/ssadump)   
  15. [stringer](https://golang.org/x/tools/cmd/stringer)   
  16. [tipgodoc](https://golang.org/x/tools/cmd/tipgodoc)   
  17. [vet](https://golang.org/x/tools/cmd/vet)
  18. [godef](https://code.google.com/p/rog-go/exp/cmd/godef)
  19. [errcheck](https://github.com/kisielk/errcheck)
  20. [golint](https://github.com/golang/lint/golint)
  21. [gotags](https://github.com/jstemmer/gotags)
  22. [godep](https://github.com/tools/godep)

#### **Use cases:**
  - **If you want to run a tool. For example gofmt:**
    - Make an alias:  
     `alias gofmt="docker run --rm -v $(pwd):/home/developer/workspace jare/go-tools gofmt"`
    - Have fun!  `gofmt hello.go`
  - **Also you can use this image as a docker volume. [See `jare/vim-bundle`](https://registry.hub.docker.com/u/jare/vim-bundle/)**
