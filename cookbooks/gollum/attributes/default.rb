node.default[:project_dir] = "/data/#{node[:app_name]}"
node.default[:gollum][:port] = 4081
node.default[:gollum][:wiki_dir] = "wiki"
