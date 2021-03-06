include_recipe "tvdinner::workarea"

template "#{node[:release_dir]}/config.ru" do
  mode 0644
  source "config.ru.erb"
end

runit_service "gollum" do
  env({ :RELEASE_DIR => node[:release_dir],
        :GOLLUM_PORT => node[:gollum][:port]
  })
end
