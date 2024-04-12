#!/usr/bin/bash
# puppet code

exec { 'wordpress fix it':
  command   => "/bin/sed -i  's/phpp/php/g' /var/www/html/wp-settings.php",
}
