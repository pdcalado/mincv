#!/bin/sh

sig_handler() {
  kill $PID
  exit
}

trap sig_handler SIGINT

while true; do
  make index.html
  make serve &
  PID=$!
  make watch
  kill $PID
done