#!/bin/bash
# info: update nodejs plugin
# options: $STARTVERSION $ENDVERSION [RESTART]
#
# Update composer plugin


#----------------------------------------------------------#
#                    Variable&Function                     #
#----------------------------------------------------------#

# Argument definition
STARTVERSION=$1
ENDVERSION=$2
restart="${3-yes}"

# Includes
source $VESTA/func/main.sh
source $VESTA/conf/vesta.conf

# Additional argument formatting

#----------------------------------------------------------#
#                    Verifications                         #
#----------------------------------------------------------#
check_args '0' "$#" '[RESTART]'


#----------------------------------------------------------#
#                       Action                             #
#----------------------------------------------------------#


if [ "$STARTVERSION" = "0.0.0" ] && [ "$ENDVERSION" = "1.0.1" ];
then
    echo "Update from $STARTVERSION to $ENDVERSION"
fi

#----------------------------------------------------------#
#                       Vesta                              #
#----------------------------------------------------------#

if [ "$restart" = "yes" ] then;
    #echo "Restarting services";
fi

exit
