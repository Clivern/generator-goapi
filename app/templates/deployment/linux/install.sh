#!/bin/bash

function <%- package_name %> {
    echo "Installing <%- package_name %> ..."

    apt-get install jq -y

    cd /etc/<%- package_name %>

    LATEST_VERSION=$(curl --silent "https://api.github.com/repos/<%- author %>/<%- package_name %>/releases/latest" | jq '.tag_name' | sed -E 's/.*"([^"]+)".*/\1/' | tr -d v)

    curl -sL https://github.com/<%- author %>/<%- package_name %>/releases/download/v{$LATEST_VERSION}/<%- package_name %>_{$LATEST_VERSION}_Linux_x86_64.tar.gz | tar xz


    echo "[Unit]
Description=<%- package_title %>
Documentation=https://github.com/<%- author %>/<%- package_name %>

[Service]
ExecStart=/etc/<%- package_name %>/<%- package_name %> server -c /etc/<%- package_name %>/config.prod.yml
Restart=on-failure
RestartSec=2

[Install]
WantedBy=multi-user.target" > /etc/systemd/system/<%- package_name %>.service

    systemctl daemon-reload
    systemctl enable <%- package_name %>.service
    systemctl start <%- package_name %>.service

    echo "<%- package_name %> installation done!"
}

<%- package_name %>
