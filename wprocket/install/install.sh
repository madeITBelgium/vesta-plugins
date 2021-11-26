#!/bin/bash
# info: install wp rocket nginx config plugin
# options: [RESTART]
#
# Install wp rocket nginx config plugin


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

mkdir -p $VESTA/plugin/wprocket/conf
touch $VESTA/plugin/wprocket/conf/clients.conf

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit 0
