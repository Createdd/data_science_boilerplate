#!/bin/bash

jupyter notebook &
when-changed requirements_dev.in pip-compile requirements_dev.in &
when-changed requirements_dev.in pip install -r requirements_dev.txt
