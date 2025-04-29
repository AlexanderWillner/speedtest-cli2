# This help
help:
    just --list

# Pull MR from upstream
pull pr_number:
    if ! git remote get-url upstream > /dev/null 2>&1; then \
        git remote add upstream https://github.com/sivel/speedtest-cli.git ; \
    fi
    git fetch upstream pull/{{pr_number}}/head:pr-{{pr_number}} && git merge pr-{{pr_number}}
