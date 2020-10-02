#!/bin/bash
res=$(curl -s -w "%{http_code}" http://ec2-54-164-232-121.compute-1.amazonaws.com/public/sum/4/2)
body=${res::-3}
if [ $body != "6" ]; then
  echo "Error"
fi