if status is-interactive
    # Starship custom prompt
    starship init fish | source

    # Direnv + Zoxide
    command -v direnv &> /dev/null && direnv hook fish | source
    command -v zoxide &> /dev/null && zoxide init fish --cmd cd | source

    # Better ls
    alias ls='eza --icons --group-directories-first -1'
    alias ..='cd ..'
    thefuck --alias | source
    alias lzd="lazydocker"
    alias tsm="transmission-remote"
    alias sshelgen="ssh -i ~/.ssh/rsa_deploy itadmin@199.85.208.94"
    alias podacidez="poddl https://anchor.fm/s/a90d4be4/podcast/rss /media/Music/Podcasts/Acidez"
    alias podcreepy="poddl 'https://www.patreon.com/rss/creepyenespanol?auth=g6v8v5ael8aEJm3MtDOSyuJ_NDPjJgTw' /media/Music/Podcasts/Creepy"
    alias podwhy="poddl https://anchor.fm/s/89358408/podcast/rss /media/Music/Podcasts/WhyFiles"
    alias podcensura="poddl http://www.poderato.com/mesembriarecords/_feed/1 /media/Music/Podcasts/Radiocensura"

    # Abbrs
    abbr gd 'git diff'
    abbr ga 'git add .'
    abbr gc 'git commit -am'
    abbr gl 'git log'
    abbr gs 'git status'
    abbr gst 'git stash'
    abbr gsp 'git stash pop'
    abbr gp 'git push'
    abbr gpl 'git pull'
    abbr gsw 'git switch'
    abbr gsm 'git switch main'
    abbr gb 'git branch'
    abbr gbd 'git branch -d'
    abbr gco 'git checkout'
    abbr gsh 'git show'

    abbr l 'ls'
    abbr ll 'ls -l'
    abbr la 'ls -a'
    abbr lla 'ls -la'

    # Custom colours
    cat ~/.local/state/caelestia/sequences.txt 2> /dev/null

    # For jumping between prompts in foot terminal
    function mark_prompt_start --on-event fish_prompt
        echo -en "\e]133;A\e\\"
    end
end
