#!/bin/bash
# info: install force https nginx config plugin
# options: [RESTART]
#
# Installforce https nginx config plugin


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

mkdir -p $VESTA/plugin/forcehttps/conf
touch $VESTA/plugin/forcehttps/conf/clients.conf

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit 0
