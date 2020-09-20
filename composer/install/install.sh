#!/bin/bash
# info: install composer plugin
# options: [RESTART]
#
# Install composer plugin


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

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php composer-setup.php
php -r "unlink('composer-setup.php');"
mv composer.phar /usr/bin/composer
RESULT=$?
php -r "unlink('composer-setup.php');"

$BIN/v-add-cron-job admin '27' '2' '1' '*' '*' "$VESTA/plugin/composer/bin/v-update-composer"

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

exit $RESULT
