#!/bin/bash

brillo=$(xbacklight | cut -d . -f 1)

echo "$brillo%"