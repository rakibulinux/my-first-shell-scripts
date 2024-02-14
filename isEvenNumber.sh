#!/bin/bash

n=10

if [ $((n%2)) == 0 ]
    then 
        echo "Even number"
    else
        echo "Odd Number"    

fi

#######################################
# Description
# Globals:
# - EXPORT_1 : which contains ...
# Arguments:
# - $1 : the first paramter (eg. param1)
# Outputs:
# Returns:
#######################################
lib::function_name() {
  local -r PARAM_1="${1:?"function_name is missing a parameter"}"
  
  export EXPORT_1
} : function with definitions
if [[  ]]; then
    
fi : if
if [[  ]]; then
    
else
    
fi : if else
elif [[  ]]; then
     : elif
until [[  ]]; do
    
done : until
main() {
}

main "$@" : main
local -r VARIABLE="" : const
# TODO: (author) description : TODO