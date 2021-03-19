#!/bin/bash

set -eux

export PATH=$HOME/bin:$PATH

$(dirname $0)/install_packages.sh
$(dirname $0)/install_composer.sh
$(dirname $0)/install_runkit.sh 1.0.11

composer install

./vendor/bin/phpunit