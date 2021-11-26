#!/bin/bash
# info: install wp smush nginx config plugin
# options: [RESTART]
#
# Install wp smush nginx config plugin


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Argument definition
restart="${1-yes}"

# Includes
source $VESTA/func/main.sh

# Additional argument formatting

#----------------------------------------------------------#
#                    Verifications                         #
#----------------------------------------------------------#
check_args '0' "$#" '[RESTART]'


#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#

mkdir -p $VESTA/plugin/wpsmush/conf
touch $VESTA/plugin/wpsmush/conf/clients.conf

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit 0
