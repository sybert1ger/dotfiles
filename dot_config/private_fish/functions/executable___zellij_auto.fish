#!/usr/bin/fish
function __zellij_auto
	
	if set -q $ZELLIJ
		set ZJ_SESSIONS (zellij list-sessions | string collect)
		set NO_SESSIONS (echo $ZJ_SESSIONS | wc -l)

	
		if test "$NO_SESSIONS" -ge 2 
			zellij attach (echo "$ZJ_SESSIONS" | fzf)
		else
			zellij attach $ZJ_SESSIONS
		end
	else
		zellij -s "Main"
	end
end
