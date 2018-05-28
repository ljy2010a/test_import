#!/usr/bin/env bash
docker build -t test_import .
cd .. && docker run --rm -it -v $(pwd)/test_import:/work2/test_import test_import:latest
