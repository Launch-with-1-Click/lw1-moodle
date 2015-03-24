## install misc packages

package 'git'
package 'tmux'
package 'php55'
package 'mysql-server'

%w[
php55-mysqlnd
php55-gd
php55-mbstring
php55-xmlrpc
php55-soap
php55-intl
php55-opcache
].map do |php_m|
  package php_m
end
