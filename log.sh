#!/bin/bash
log_action() {
    local message=$1
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $message" >> script.log
}
log_action
