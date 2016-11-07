## A ton of go tools (binaries)
#### **How to use:**
  - **If you want to run a tool. For example gofmt:**
    - Make an alias:
     `alias gofmt='docker run -ti --rm -v $(pwd):/home/developer/workspace jare/go-tools gofmt'`
    - Have fun!  `gofmt hello.go`
  - **Also you can use this image as a docker volume. [See `jare/vim-bundle`](https://registry.hub.docker.com/u/jare/vim-bundle/)**
