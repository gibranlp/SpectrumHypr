function fish_prompt -d "Write out the prompt"
    # This shows up as USER@HOST /home/user/ >, with the directory colored
    # $USER and $hostname are set by fish, so you can just use them
    # instead of using `whoami` and `hostname`
    printf '%s@%s %s%s%s > ' $USER $hostname \
        (set_color $fish_color_cwd) (prompt_pwd) (set_color normal)
end

if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting

end

starship init fish | source
if test -f ~/.local/state/sleex/user/generated/terminal/sequences.txt
    cat ~/.local/state/sleex/user/generated/terminal/sequences.txt
end

alias pamcan pacman
alias ls 'eza --icons'
alias clear "printf '\033[2J\033[3J\033[1;1H'"
alias .. 'cd ..'
alias neofetch 'neofetch --jp2a logo_cli.png'
alias lzd lazydocker
alias tsm transmission-remote
alias sshelgen 'ssh -i ~/.ssh/rsa_deploy itadmin@199.85.208.94'
thefuck --alias | source
alias podacidez 'poddl https://anchor.fm/s/a90d4be4/podcast/rss /media/Music/Podcasts/Acidez'
alias podcreepy 'poddl "https://www.patreon.com/rss/creepyenespanol?auth=g6v8v5ael8aEJm3MtDOSyuJ_NDPjJgTw" /media/Music/Podcasts/Creepy'
alias podwhy 'poddl https://anchor.fm/s/89358408/podcast/rss /media/Music/Podcasts/WhyFiles'
alias podcensura 'poddl http://www.poderato.com/mesembriarecords/_feed/1 /media/Music/Podcasts/Radiocensura'
alias ga 'git add .'
alias gc 'git commit -m'
alias gp 'git push'

set now (date +%s)
set d1 (date +%s -d '2003-08-01')
set d2 (date +%s -d '2022-02-19')
set d3 (date +%s -d '2022-08-15')
set d4 (date +%s -d '2023-08-14')
set d5 (date +%s -d '2025-07-05')

set day1 (math --round "($now - $d1) / 86400")
set day2 (math --round "($now - $d2) / 86400")
set day3 (math --round "($now - $d3) / 86400")
set day4 (math --round "($now - $d4) / 86400")
set day5 (math --round "($d5 - $now) / 86400")

# You can change these hex or color names to anything (e.g. red, blue, cyan)
set c1 (set_color ff79c6) # Pink
set c2 (set_color f1fa8c) # Yellow
set c3 (set_color 8be9fd) # Cyan
set c4 (set_color 50fa7b) # Green
set c5 (set_color bd93f9) # Purple
set reset (set_color normal)

echo -n "$c1 $reset$day1 "
echo -n "$c2󱚦 $reset$day2 "
echo -n "$c3 $reset$day3 "
echo -n "$c4 $reset$day4 "
echo "$c5󰞬 $reset$day5"

# function fish_prompt
#   set_color cyan; echo (pwd)
#   set_color green; echo '> '
# end
