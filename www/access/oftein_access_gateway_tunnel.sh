#!/bin/bash
#
# Name			: oftein_access_gateway_tunnel.sh
# Description	: Script for make the tunnel for accessing OF@TEIN infrastructure
# Version		: 0.1 (October 2015)
# Created by	: Aris (GIST NetCS)
#
# Usage			: 
#

#
# Parameter Configuration
#

PARAMETER=2
USER=$1
ODP_ID=$2

if [ $# -ne $PARAMETER ]; then

	echo -e ""
	echo -e "Usage 	: ./oftein_access_gateway_tunnel.sh <USER> <141-150>\n"
	echo -e "Available options are: \n"
	echo -e "<USER>		User for Access Gateway"
    echo -e "<141-150>	OpenDaylight Controller ID assign by Operators"
	exit 0
	

else


# Tunnel to OpenStack Dashboard using "localhost" TCP port "2000"
ssh -L 0.0.0.0:2000:103.22.221.51:80 $USER@103.22.221.53 -p 22

# Tunnel to OpenDaylight Controller using "localhost" TCP port "2141-2150" depends on Operator assignment
ssh -L 0.0.0.0:2$ODP_ID:103.22.221.$ODP_ID:8080 $USER@103.22.221.53 -p 22

fi
