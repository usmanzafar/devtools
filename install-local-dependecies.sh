#!/usr/bin/env bash

printf "\n *** Installing php copy detector *** \n"
wget https://phar.phpunit.de/phpcpd.phar
chmod +x phpcpd.phar
mv phpcpd.phar /usr/local/bin/phpcpd

printf "\n *** Installing php code sniffer phpcs *** \n"
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcs.phar
chmod +x phpcs.phar
mv phpcs.phar /usr/local/bin/phpcs


printf "\n *** Installing php code beautified phpcbf *** \n"
curl -OL https://squizlabs.github.io/PHP_CodeSniffer/phpcbf.phar
chmod +x phpcbf.phar
mv phpcbf.phar /usr/local/bin/phpcbf

printf "\n *** Installing phpcs-fixer *** \n"
curl http://get.sensiolabs.org/php-cs-fixer.phar -o php-cs-fixer
chmod a+x php-cs-fixer
mv php-cs-fixer /usr/local/bin/php-cs-fixer

printf "\n *** Installing phpmd *** \n"
wget -c http://static.phpmd.org/php/latest/phpmd.phar
chmod a+x phpmd.phar
mv phpmd.phar /usr/local/bin/phpmd

echo installing PreCommit hooks
apt-get install -y python-setuptools python-dev build-essential
easy_install pip
pip install --upgrade virtualenv
pip install pre-commit

printf "*************************INSTALLATION COMPLETE\n"
