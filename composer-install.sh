#!/bin/sh

# Install Composer
echo "Installing composer"

php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');"
php -r "if (hash_file('sha384', 'composer-setup.php') === 'e0012edf3e80b6978849>
php composer-setup.php
php -r "unlink('composer-setup.php');"

# Move to /usr/local/bin/ to allow global execution
echo "Moving to /usr/local/bin (Needs root password)"
sudo composer.phar /usr/local/bin/composer


# Change OS Path variable in order to make composer binaries available
echo "Including Composer Binaries in Path"
#echo "export PATH=$PATH:$HOME/.config/composer/vendor/bin" >> .bashrc

echo "Done! :)"
