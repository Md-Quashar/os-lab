#!/bin/bash

echo "Enter the path of the directory to display Disk usage"
read path
du -h $path
