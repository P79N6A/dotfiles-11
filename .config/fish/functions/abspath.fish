function abspath -d '输出给定路径的绝对路径'
    set -l cwd ''
    set -l curr (pwd)
    cd $argv[1]; and set cwd (pwd); and cd $curr
    echo $cwd
end
