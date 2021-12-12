#!/usr/bin/tcsh -f
#-------------------------------------------
# qflow exec script for project /mnt/e/shrek/projects/circuits/linked_list
#-------------------------------------------

# /usr/lib/qflow/scripts/synthesize.sh /mnt/e/shrek/projects/circuits/linked_list req_gen /mnt/e/shrek/projects/circuits/linked_list/source/linked_list_static_analysis.v || exit 1
# /usr/lib/qflow/scripts/placement.sh -d /mnt/e/shrek/projects/circuits/linked_list req_gen || exit 1
 /usr/lib/qflow/scripts/vesta.sh /mnt/e/shrek/projects/circuits/linked_list req_gen || exit 1
# /usr/lib/qflow/scripts/router.sh /mnt/e/shrek/projects/circuits/linked_list req_gen || exit 1
# /usr/lib/qflow/scripts/vesta.sh -d /mnt/e/shrek/projects/circuits/linked_list req_gen || exit 1
# /usr/lib/qflow/scripts/cleanup.sh /mnt/e/shrek/projects/circuits/linked_list req_gen || exit 1
# /usr/lib/qflow/scripts/display.sh /mnt/e/shrek/projects/circuits/linked_list req_gen || exit 1
