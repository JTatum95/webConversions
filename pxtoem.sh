#!/bin/bash

echo "Base font size (in px): "
read base;

echo "Size to convert (to em): "
read size;

unit=$(bc <<< "scale=10; 1/$base") 

converted=$(bc <<< "scale=10; $unit*$size")

echo "Converted size: $converted";
