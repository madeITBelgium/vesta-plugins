#!/bin/bash
# info: install force www nginx config plugin
# options: [RESTART]
#
# Installforce www nginx config plugin


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

mkdir -p $VESTA/plugin/forcewww/conf
touch $VESTA/plugin/forcewww/conf/clients.conf

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit 0
