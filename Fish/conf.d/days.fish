function __days_since --description "Days since YYYY/MM/DD"
    set -l then (date +%s --date="$argv[1]")
    set -l now  (date +%s)
    math -s0 "($now - $then) / 86400"
end

function __days_until --description "Days until YYYY/MM/DD"
    set -l target (date +%s --date="$argv[1]")
    set -l now    (date +%s)
    math -s0 "($target - $now) / 86400"
end
