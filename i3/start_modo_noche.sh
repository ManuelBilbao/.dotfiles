#!/bin/bash

pkill redshift
redshift &> /dev/null 2>&1 &
disown