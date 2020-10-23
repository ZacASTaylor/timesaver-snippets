
# Made possible because of .bash-preexec.sh
preexec () {
    # TODO: Get all commands
    outFile='/home/ztaylor/.command_log'
    echo "$(date) ### $(pwd) ### $@" >> "$outFile"
    if [ $(wc -l < $outFile) -gt 2500 ]; then
        echo "here"
        echo "$(tail -n +2 "$outFile")" > $outFile
    fi
}
