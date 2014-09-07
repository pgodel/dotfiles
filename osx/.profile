export CLICOLOR=yes

export PROMPT_COMMAND='echo -ne "\033]0;macpro:${PWD}`__git_ps1`\007"'

source  /usr/local/git/contrib/completion/git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWCOLORHINTS=true
export GIT_PS1_UNTRACKEDFILES=true


c_cyan=`tput setaf 6`
c_red=`tput setaf 1`
c_green=`tput setaf 2`
c_white=`tput setaf 7`
c_sgr0=`tput sgr0`

parse_git_branch ()
{
  if git rev-parse --git-dir >/dev/null 2>&1
  then
    gitver=$(git branch 2>/dev/null| sed -n '/^\*/s/^\* //p')
    if git diff --quiet 2>/dev/null >&2
      then
        gitver=${c_white}'→ '${c_green}$gitver${c_sgr0}
      else
        gitver=${c_white}'→ '${c_red}'!'$gitver${c_sgr0}
      fi
    else
      return 0
    fi

  echo $gitver
}

export PS1='\[\e[34m\]macpro\[\e[00m\]:\[\e[32m\]\w $(parse_git_branch)\n\$\[\e[0m\] '

export PATH="/Users/pgodel/bin:/usr/local/heroku/bin:$PATH"
