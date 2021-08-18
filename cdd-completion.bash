_cdd() {
	[[ ${COMP_CWORD} -eq 1 ]] || return 0
	[[ -z ${COMP_WORDS[1]} ]] && COMPREPLY="$(__cdd_prev_path 1)"
	[[ ${COMP_WORDS[1]} =~ ^[0-9]+$ ]] \
		&& COMPREPLY="$(__cdd_prev_path ${COMP_WORDS[1]})"
}
complete -o dirnames -o nospace -F _cdd cdd
