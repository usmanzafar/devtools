# devtools
List of tools required to be installed on the machine to ensure PHP codebase quality is maintained. One of the main reasons these tools are installed is due to the fact that code that gets pushed to CI engine / repo is of good quality. 

The script installs the below and puts in the /usr/local/bin/
 
 1. PHP CS
 2. PHP CBF
 3. PHPCS-fixer
 4. PHPMD
 5. Precommit

Installs the precommit which can later be used to configure above tools accordingly.

*Note the above tools require the following php extensions installed on the system
- php-xml (should have simplexml, xmlwriter , xmlreader)
- php-mbstring
- php-tokenizer
