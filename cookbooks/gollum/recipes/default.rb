include_recipe "alpha_omega"

template "#{node[:release_dir]}/config.ru" do
  mode 0644
  source "config.ru.erb"
end

#unicorn_service "gollum"
