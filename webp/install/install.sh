#!/bin/bash
# info: install webp nginx config plugin
# options: [RESTART]
#
# Install webp nginx config plugin


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

mkdir -p $VESTA/plugin/webp/conf
touch $VESTA/plugin/webp/conf/clients.conf

$BIN/v-delete-cron-by-name admin v-generate-images
$BIN/v-add-cron-job admin '37' '1' '*' '*' '*' "$VESTA/bin/v-exec-plugin webp v-generate-images"

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit 0
