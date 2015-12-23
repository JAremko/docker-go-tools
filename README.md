#### **tags:**
  - `jare/go-tools:latest`  - go 1.5.x
  - `jare/go-tools:1.4`     - go 1.4.x
  
#### **Tools:**  
  1. go    
  2. [gofmt](https://golang.org/cmd/gofmt/)  
  3. [benchcmp](https://golang.org/x/tools/cmd/benchcmp)   
  4. [bundle](https://golang.org/x/tools/cmd/bundle)   
  5. [callgraph](https://golang.org/x/tools/cmd/callgraph)   
  6. [digraph](https://golang.org/x/tools/cmd/digraph)   
  7. [cmd/eg](https://golang.org/x/tools/cmd/eg)   
  8. [fiximports](https://golang.org/x/tools/cmd/fiximports)   
  9. [godex](https://golang.org/x/tools/cmd/godex)   
  10. [godoc](https://golang.org/x/tools/cmd/godoc)   
  11. [goimports](https://golang.org/x/tools/cmd/goimports)   
  12. [gomvpkg](https://golang.org/x/tools/cmd/gomvpkg)   
  13. [gorename](https://golang.org/x/tools/cmd/gorename) 
  14. [gotype](https://golang.org/x/tools/cmd/gotype) 
  15. [html2article](https://golang.org/x/tools/cmd/html2article) 
  16. [oracle](https://golang.org/x/tools/cmd/oracle) 
  17. [present](https://golang.org/x/tools/cmd/present) 
  18. [ssadump](https://golang.org/x/tools/cmd/ssadump) 
  19. [stress](https://golang.org/x/tools/cmd/stress) 
  20. [stringer](https://golang.org/x/tools/cmd/stringer) 
  21. [tip](https://golang.org/x/tools/cmd/tip) 
  22. [vet](https://golang.org/x/tools/cmd/vet) 
  23. [refactor/eg](https://golang.org/x/tools/refactor/eg) 
  24. [importgraph](https://golang.org/x/tools/refactor/importgraph) 
  25. [rename](https://golang.org/x/tools/refactor/rename) 
  26. [satisfy](https://golang.org/x/tools/refactor/satisfy) 
  27. [godo](https://github.com/go-godo/godo) 
  28. [gocode](https://github.com/nsf/gocode) 
  29. [errcheck](https://github.com/kisielk/errcheck) 
  30. [lint](https://github.com/golang/lint)   
  
#### **How to use:**
  - **If you want to run a tool. For example gofmt:**
    - Make an alias:  
     `alias gofmt="docker run -ti --rm -v $(pwd):/home/developer/workspace jare/go-tools gofmt"`
    - Have fun!  `gofmt hello.go`
  - **Also you can use this image as a docker volume. [See `jare/vim-bundle`](https://registry.hub.docker.com/u/jare/vim-bundle/)**
