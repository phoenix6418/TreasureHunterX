#!/bin/bash

basedir=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
# You have to download the OS binary "protoc" from `https://developers.google.com/protocol-buffers/docs/downloads` and set it to $PATH appropriately.
# You have to install `proto-gen-go` by `go get -u github.com/golang/protobuf/protoc-gen-go` as instructed in https://developers.google.com/protocol-buffers/docs/gotutorial too.
protoc -I=$basedir/../models/ --go_out=$basedir/ room_downsync_frame.proto 
