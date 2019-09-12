#!/usr/bin/bash
# same as clean.sh, however this program tries to keep any
# slow to reinstall or valuable files around instead of
# cleaning them. Use this when you just want to check you
# can rebuild your config from scratch... instead of when
# you're actually deleting everything... for some reason.

# flag-notes
#  * never delete any language server installations, 
#    they're too slow to reinstall for it to be worth it.
#  * never delete any un-version controlled snippets... 
#    I'll get round to them... I'm lazy :P.

$(dirname $0)/clean.sh --not --wholename './var/lsp/servers/*'                 \
                       --not --wholename './var/meghanada/*'                   \
                       --not --wholename './etc/snippets/*'
