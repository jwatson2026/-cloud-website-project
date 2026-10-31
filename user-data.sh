#!/bin/bash
set -euxo pipefail

export DEBIAN_FRONTEND=noninteractive

apt-get update
apt-get install -y nginx

cat > /var/www/html/index.html <<'HTML'
${website_html}
HTML

systemctl enable nginx
systemctl restart nginx
