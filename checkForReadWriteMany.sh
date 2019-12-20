#!/bin/bash
scName=$1
result=$(kubectl get sc -o jsonpath="{.items[?(@.metadata.name==\"$scName\")].metadata.name}")
if [ "$result" != "$scName" ]; then
    exit 1
else
    exit 0
fi