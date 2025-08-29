#!/bin/bash

path=$(fzf --walker dir,follow,hidden)
tmux new -c $path
