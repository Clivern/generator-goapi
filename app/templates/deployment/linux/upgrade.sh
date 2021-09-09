#!/bin/bash

function <%- package_name %> {
    echo "Upgrade <%- package_name %> ..."

    cd /etc/<%- package_name %>
    mv config.prod.yml config.back.yml

    LATEST_VERSION=$(curl --silent "https://api.github.com/repos/<%- author %>/<%- package_name %>/releases/latest" | jq '.tag_name' | sed -E 's/.*"([^"]+)".*/\1/' | tr -d v)

    curl -sL https://github.com/<%- author %>/<%- package_name %>/releases/download/v{$LATEST_VERSION}/<%- package_name %>_{$LATEST_VERSION}_Linux_x86_64.tar.gz | tar xz

    rm config.prod.yml
    mv config.back.yml config.prod.yml

    systemctl restart <%- package_name %>

    echo "<%- package_name %> upgrade done!"
}

<%- package_name %>
