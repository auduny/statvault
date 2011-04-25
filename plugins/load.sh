#!/bin/bash
echo -n '{
"air.ytterdal.net" : {

		"load" : '
uptime | awk '{ print $10 }'
echo '		}
	}
}'
