#!/usr/bin/env bash


mouse_name="CX 2.4G Wireless Receiver Mouse"
 
#mouse_line=$(xinput | grep -i  "$mouse_name" | grep -v "Consumer Control")
mouse_line=$(xinput list | grep -i "$mouse_name" | grep 'pointer' | grep -v 'Consumer Control' | grep -v 'keyboard')


mouse_id=$(echo "$mouse_line" | sed -n 's/.*id=\([0-9]*\).*/\1/p')

echo "Mouse ID: $mouse_id"

xinput set-button-map "$mouse_id" 1 2 3 4 5 6 7 1 1
