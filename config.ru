require 'gollum/frontend/app'
 
Precious::App.set(:gollum_path, File.dirname(__FILE__))
Precious::App.set(:wiki_options, { :page_file_dir => "wiki" })
 
run Precious::App
