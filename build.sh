#!/usr/bin/env bash

docker build \
  -f Dockerfile.builder \
  -t ghcr.io/mengdaming/golang-cross-builder:v1.16.7-fyne.1 .

docker build \
  --build-arg GO_VERSION=1.16.2 \
  --build-arg GOLANG_DIST_SHA=542e936b19542e62679766194364f45141fde55169db2d8d01046555ca9eb4b8 \
  --build-arg GORELEASER_VERSION=0.162.0 \
  --build-arg GORELEASER_SHA=4b7d2f1e59ead8047fcef795d66236ff6f8cfe7302c1ff8fb31bd360a3c6f32e \
  -f Dockerfile \
  -t ghcr.io/mengdaming/golang-cross:latest .
