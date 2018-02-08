#!/bin/bash
#
# Name			: oftein_access_gateway_rdp.sh
# Description	: Script to access VRDP desktop for accessing OF@TEIN infrastructure
# Version		: 0.1 (October 2015)
# Created by	: Aris (GIST NetCS)

#
# Parameter Configuration
#

PARAMETER=1
RDP_PORT=$1

if [ $# -ne $PARAMETER ]; then

	echo -e ""
	echo -e "Usage 	: ./oftein_access_gateway_rdp.sh <4000-4010>\n"
	echo -e "Available options is: \n"
    echo -e "<4000-4010>	VRDP Desktop TCP port assigned by Operators"
	exit 0
	

else


# Open VRDP Desktop with specific TCP Port number
rdesktop 103.22.221.53:$RDP_PORT

fi
