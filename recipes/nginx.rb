# Install the nginx collector config

include_recipe 'diamond::default'

collector_config 'NginxCollector' do
  owner     node['diamond']['owner']
  group     node['diamond']['group']

  path      node['diamond']['collectors']['NginxCollector']['path']
  req_host  node['diamond']['collectors']['NginxCollector']['req_host']
  req_port  node['diamond']['collectors']['NginxCollector']['req_port']
  req_path  node['diamond']['collectors']['NginxCollector']['req_path']
end
