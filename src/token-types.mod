# shellcheck shell=sh disable=SC1090,SC3043,2034,1087,2154
# vim:ft=zsh
#
typeset -gA TOKEN_TYPES TOKEN_TYPES=(

  # Precommand

  '-'           1
  'builtin'     1
  'command'     1
  'exec'        1
  'nocorrect'   1
  'noglob'      1
  'pkexec'      1
  'stdbuf'      1
  'setsid'      1
  'eatmydata'   1
  'sudo'        1
  'doas'        1
  'nice'        1
  'ssh-agent'   1

  # Control flow
  # Tokens that at "command position" are followed by a command

  $'\x7b'   2 # {
  $'\x28'   2 # (
  '()'      2
  'while'   2
  'until'   2
  'if'      2
  'then'    2
  'elif'    2
  'else'    2
  'do'      2
  'time'    2
  'coproc'  2
  '!'       2 # reserved word; unrelated to $histchars[1]

  # Command separators

  '|'   3
  '||'  3
  '&&'  3

  '|&'  4
  '&!'  4
  '&|'  4
  '&'   4
  ';'   4
)
