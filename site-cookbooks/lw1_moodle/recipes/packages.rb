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

ruby_block "update php.ini" do
  block do
    _file = Chef::Util::FileEdit.new('/etc/php.ini')
    _file.search_file_replace_line(/^post_max_size/, "post_max_size = 258M ;")
    _file.search_file_replace_line(/^upload_max_filesize/, "upload_max_filesize = 256M ;")
    _file.search_file_replace_line(/^max_execution_time/, "max_execution_time = 600 ;")
    _file.write_file
  end
end
