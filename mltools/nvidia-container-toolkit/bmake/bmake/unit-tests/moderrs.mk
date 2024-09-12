# $NetBSD: moderrs.mk,v 1.40 2024/07/20 11:05:12 rillig Exp $
#
# various modifier error tests

VAR=		TheVariable
# in case we have to change it ;-)
MOD_UNKN=	Z
MOD_TERM=	S,V,v
MOD_S:=		${MOD_TERM},

FIB=	1 1 2 3 5 8 13 21 34

all:	mod-unknown-direct mod-unknown-indirect
all:	unclosed-direct unclosed-indirect
all:	unfinished-indirect unfinished-loop-{1,2,3}
all:	loop-close-{1,2}
all:	words-{1,2,3}
all:	exclam-{1,2}
all:	mod-subst-delimiter-{1,2,3,4,5,6,7}
all:	mod-regex-delimiter-{1,2,3,4,5,6,7}
all:	mod-ts-parse-{1,2,3,4,5}
all:	mod-t-parse-{1,2,3,4}
all:	mod-ifelse-parse-{1,2,3,4,5}
all:	mod-remember-parse
all:	mod-sysv-parse-{1,2,3,4}

mod-unknown-direct:
# expect: make: in target "mod-unknown-direct": while evaluating variable "VAR" with value "TheVariable": Unknown modifier "Z"
	@echo 'VAR:Z=before-${VAR:Z}-after'

mod-unknown-indirect:
# expect: make: in target "mod-unknown-indirect": while evaluating variable "VAR" with value "TheVariable": Unknown modifier "Z"
	@echo 'VAR:${MOD_UNKN}=before-${VAR:${MOD_UNKN}:inner}-after'

unclosed-direct:
# expect: make: in target "unclosed-direct": while evaluating variable "VAR" with value "Thevariable": Unclosed expression, expecting '}' for modifier "S,V,v,"
	@echo VAR:S,V,v,=${VAR:S,V,v,

unclosed-indirect:
# expect: make: in target "unclosed-indirect": while evaluating variable "VAR" with value "Thevariable": Unclosed expression after indirect modifier, expecting '}'
	@echo VAR:${MOD_TERM},=${VAR:${MOD_S}

unfinished-indirect:
# expect: make: in target "unfinished-indirect": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	-@echo "VAR:${MOD_TERM}=${VAR:${MOD_TERM}}"

unfinished-loop-1:
# expect: make: in target "unfinished-loop-1": while evaluating variable "UNDEF" with value "1 2 3": Unfinished modifier ('@' missing)
	@echo ${UNDEF:U1 2 3:@var}
unfinished-loop-2:
# expect: make: in target "unfinished-loop-2": while evaluating variable "UNDEF" with value "1 2 3": Unfinished modifier ('@' missing)
	@echo ${UNDEF:U1 2 3:@var@...}
unfinished-loop-3:
	@echo ${UNDEF:U1 2 3:@var@${var}@}

# The closing brace after the ${var} is part of the replacement string.
# In ParseModifierPart, braces and parentheses don't have to be balanced.
# This is contrary to the :M, :N modifiers, where both parentheses and
# braces must be balanced.
# This is also contrary to the SysV modifier, where only the actually
# used delimiter (either braces or parentheses) must be balanced.
loop-close-1:
# expect: make: in target "loop-close-1": while evaluating variable "UNDEF" with value "1}... 2}... 3}...": Unclosed expression, expecting '}' for modifier "@var@${var}}...@"
	@echo ${UNDEF:U1 2 3:@var@${var}}...@
loop-close-2:
	@echo ${UNDEF:U1 2 3:@var@${var}}...@}

words-1:
# expect: make: in target "words-1": while evaluating variable "UNDEF" with value "1 2 3": Unfinished modifier (']' missing)
	@echo ${UNDEF:U1 2 3:[}
words-2:
# expect: make: in target "words-2": while evaluating variable "UNDEF" with value "1 2 3": Unfinished modifier (']' missing)
	@echo ${UNDEF:U1 2 3:[#}

words-3:
	# out of bounds => empty
	@echo 13=${UNDEF:U1 2 3:[13]}

	# Word index out of bounds.
	#
	# Until 2020-11-01, the behavior in this case depended upon the size
	# of unsigned long.
	#
	# On LP64I32, strtol returns LONG_MAX, which was then truncated to
	# int (undefined behavior), typically resulting in -1.  This -1 was
	# interpreted as "the last word".
	#
	# On ILP32, strtol returns LONG_MAX, which is a large number.  This
	# resulted in a range from LONG_MAX - 1 to 3, which was empty.
	#
	# Since 2020-11-01, the numeric overflow is detected and generates an
	# error.  In the remainder of the text, the '$,' is no longer parsed
	# as part of a variable modifier, where it would have been interpreted
	# as an anchor to the :S modifier, but as a normal variable named ','.
	# That variable is undefined, resulting in an empty string.
	@echo 12345=${UNDEF:U1 2 3:[123451234512345123451234512345]:S,^$,ok,:S,^3$,ok,}

exclam-1:
# expect: make: in target "exclam-1": while evaluating variable "VARNAME" with value "": Unfinished modifier ('!' missing)
	@echo ${VARNAME:!echo}
	# When the final exclamation mark is missing, there is no
	# fallback to the SysV substitution modifier.
	# If there were a fallback, the output would be "exclam",
	# and the above would have produced an "Unknown modifier '!'".
exclam-2:
# expect: make: in target "exclam-2": while evaluating variable "!" with value "!": Unfinished modifier ('!' missing)
	@echo ${!:L:!=exclam}

mod-subst-delimiter-1:
# expect: make: in target "mod-subst-delimiter-1": while evaluating variable "VAR" with value "TheVariable": Missing delimiter for modifier ':S'
	@echo 1: ${VAR:S
mod-subst-delimiter-2:
# expect: make: in target "mod-subst-delimiter-2": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 2: ${VAR:S,
mod-subst-delimiter-3:
# expect: make: in target "mod-subst-delimiter-3": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 3: ${VAR:S,from
mod-subst-delimiter-4:
# expect: make: in target "mod-subst-delimiter-4": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 4: ${VAR:S,from,
mod-subst-delimiter-5:
# expect: make: in target "mod-subst-delimiter-5": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 5: ${VAR:S,from,to
mod-subst-delimiter-6:
# expect: make: in target "mod-subst-delimiter-6": while evaluating variable "VAR" with value "TheVariable": Unclosed expression, expecting '}' for modifier "S,from,to,"
	@echo 6: ${VAR:S,from,to,
mod-subst-delimiter-7:
	@echo 7: ${VAR:S,from,to,}

mod-regex-delimiter-1:
# expect: make: in target "mod-regex-delimiter-1": while evaluating variable "VAR" with value "TheVariable": Missing delimiter for modifier ':C'
	@echo 1: ${VAR:C
mod-regex-delimiter-2:
# expect: make: in target "mod-regex-delimiter-2": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 2: ${VAR:C,
mod-regex-delimiter-3:
# expect: make: in target "mod-regex-delimiter-3": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 3: ${VAR:C,from
mod-regex-delimiter-4:
# expect: make: in target "mod-regex-delimiter-4": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 4: ${VAR:C,from,
mod-regex-delimiter-5:
# expect: make: in target "mod-regex-delimiter-5": while evaluating variable "VAR" with value "TheVariable": Unfinished modifier (',' missing)
	@echo 5: ${VAR:C,from,to
mod-regex-delimiter-6:
# expect: make: in target "mod-regex-delimiter-6": while evaluating variable "VAR" with value "TheVariable": Unclosed expression, expecting '}' for modifier "C,from,to,"
	@echo 6: ${VAR:C,from,to,
mod-regex-delimiter-7:
	@echo 7: ${VAR:C,from,to,}

mod-ts-parse-1:
	@echo ${FIB:ts}
mod-ts-parse-2:
	@echo ${FIB:ts\65}	# octal 065 == U+0035 == '5'
mod-ts-parse-3:
# expect: make: in target "mod-ts-parse-3": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Bad modifier ":ts\65oct"
	@echo ${FIB:ts\65oct}	# bad modifier
mod-ts-parse-4:
# expect: make: in target "mod-ts-parse-4": while evaluating "${:U${FIB}:ts\65oct} # bad modifier, variable name is """ with value "1 1 2 3 5 8 13 21 34": Bad modifier ":ts\65oct"
	@echo ${:U${FIB}:ts\65oct} # bad modifier, variable name is ""
mod-ts-parse-5:
# expect: make: in target "mod-ts-parse-5": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Bad modifier ":tsxy"
	@echo ${FIB:tsxy}	# modifier too long

mod-t-parse-1:
# expect: make: in target "mod-t-parse-1": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Bad modifier ":t"
	@echo ${FIB:t
mod-t-parse-2:
# expect: make: in target "mod-t-parse-2": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Bad modifier ":txy"
	@echo ${FIB:txy}
mod-t-parse-3:
# expect: make: in target "mod-t-parse-3": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Bad modifier ":t"
	@echo ${FIB:t}
mod-t-parse-4:
# expect: make: in target "mod-t-parse-4": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Bad modifier ":t"
	@echo ${FIB:t:M*}

mod-ifelse-parse-1:
# expect: make: in target "mod-ifelse-parse-1": while evaluating then-branch of condition "FIB": Unfinished modifier (':' missing)
	@echo ${FIB:?
mod-ifelse-parse-2:
# expect: make: in target "mod-ifelse-parse-2": while evaluating then-branch of condition "FIB": Unfinished modifier (':' missing)
	@echo ${FIB:?then
mod-ifelse-parse-3:
# expect: make: in target "mod-ifelse-parse-3": while evaluating else-branch of condition "FIB": Unfinished modifier ('}' missing)
	@echo ${FIB:?then:
mod-ifelse-parse-4:
# expect: make: in target "mod-ifelse-parse-4": while evaluating else-branch of condition "FIB": Unfinished modifier ('}' missing)
	@echo ${FIB:?then:else
mod-ifelse-parse-5:
	@echo ${FIB:?then:else}

mod-remember-parse:
	@echo ${FIB:_}		# ok
# expect: make: in target "mod-remember-parse": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Unknown modifier "__"
	@echo ${FIB:__}		# modifier name too long

mod-sysv-parse-1:
# expect: make: in target "mod-sysv-parse-1": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Unknown modifier "3"
# expect: make: in target "mod-sysv-parse-1": while evaluating variable "FIB" with value "": Unclosed expression, expecting '}' for modifier "3"
	@echo ${FIB:3
mod-sysv-parse-2:
# expect: make: in target "mod-sysv-parse-2": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Unknown modifier "3="
# expect: make: in target "mod-sysv-parse-2": while evaluating variable "FIB" with value "": Unclosed expression, expecting '}' for modifier "3="
	@echo ${FIB:3=
mod-sysv-parse-3:
# expect: make: in target "mod-sysv-parse-3": while evaluating variable "FIB" with value "1 1 2 3 5 8 13 21 34": Unknown modifier "3=x3"
# expect: make: in target "mod-sysv-parse-3": while evaluating variable "FIB" with value "": Unclosed expression, expecting '}' for modifier "3=x3"
	@echo ${FIB:3=x3
mod-sysv-parse-4:
	@echo ${FIB:3=x3}	# ok
