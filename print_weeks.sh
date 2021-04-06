#!/bin/bash

echo "Have passed $(( $(date +%j)/7 )) weeks."
echo "This year haves $(( $(( 365 - $(date +%j) ))/7 )) weeks left."
