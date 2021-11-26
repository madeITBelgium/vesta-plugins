#!/bin/bash
# info: install AWS SES Domain configurator
# options: [RESTART]
#
# Install AWS SES


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

mkdir -p $VESTA/plugin/awsses/conf
touch $VESTA/plugin/awsses/conf/clients.conf

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit 0
