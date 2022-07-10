if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -gx EDITOR helix
set -gx GNUPGHOME $HOME/.gnupg/onlykey
alias hx=helix

fish_add_path -aP $HOME/bin
fish_add_path -aP $HOME/.local/bin

if test -z (pgrep ssh-agent)
  eval (ssh-agent -c)
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
  set -Ux SSH_AGENT_PID $SSH_AGENT_PID
  set -Ux SSH_AUTH_SOCK $SSH_AUTH_SOCK
end

starship init fish | source
neofetch
