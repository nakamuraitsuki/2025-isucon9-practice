#!/bin/bash

go tool pprof -seconds 60 -http=localhost:1080 http://localhost:6060/debug/pprof/profile