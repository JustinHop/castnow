#!/bin/bash

docker build . -t jhoppensteadt/castnow:$(date +%F) -t jhoppensteadt/castnow:latest
