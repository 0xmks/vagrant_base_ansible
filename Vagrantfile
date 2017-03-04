# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # bento Pre-built Boxes ( https://github.com/chef/bento )
  config.vm.box = "bento/centos-7.3"
  config.vm.box_url = "https://atlas.hashicorp.com/bento/boxes/centos-7.3/versions/2.3.2/providers/virtualbox.box"

  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  config.vm.define "ansible-master" do |master|
    # 固定IP
    master.vm.network "private_network", ip: "192.168.34.30"
    # hostname
    master.vm.hostname = "ansible-master.localhost"
    # ホストゲスト間で同期するディレクトリ
    master.vm.synced_folder 'mnt/master', '/mnt/host', create: true
    # 初回起動時に1回のみ実行するスクリプト
    master.vm.provision :shell, :path => "script/master_bootstrap.sh"
  end

#  config.vm.define "ansible-web01" do |web01|
#    web01.vm.network "private_network", ip: "192.168.34.31"
#    web01.vm.hostname = "web01.localhost"
#    web01.vm.synced_folder 'mnt/web01', '/mnt/host', create: true
#    web01.vm.provision :shell, :path => "script/web00_bootstrap.sh"
#  end

#  config.vm.define "ansible-web02" do |web02|
#    web02.vm.network "private_network", ip: "192.168.34.32"
#    web02.vm.hostname = "web02.localhost"
#    web02.vm.synced_folder 'mnt/web02', '/mnt/host', create: true
#    web02.vm.provision :shell, :path => "script/web00_bootstrap.sh"
#  end

end
