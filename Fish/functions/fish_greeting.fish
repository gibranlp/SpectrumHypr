function fish_greeting
    echo -ne '\x1b[38;5;16m'  # Set colour to primary
    set -l brain   (__days_since  '2003/08/01')
    set -l heart   (__days_since  '2022/02/19')
    set -l bolt    (__days_since  '2022/08/15')
    set -l mask    (__days_since  '2023/08/14')
    set -l rocket  (__days_until  '2025/07/05')

    echo " $brain  󱚦 $heart   $bolt   $mask  󰞬 $rocket"
end
