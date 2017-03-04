# 説明
* Windows + VirtualBOX + Vagrant でのマルチマシン環境構築サンプルファイル

# 利用を想定している環境
* [Windows 10]
* [Virtualbox 5.1.4]( https://www.virtualbox.org/ )
* [Vagrant 1.9.1]( https://www.vagrantup.com/ )

# 同梱のVagrantfileの内容
* bento/Centos6.7 BOXをベースにして master、web01 web02 のマルチマシン環境を起動できるよう Vagrantfileにあらかじめ記述。(web01 web02はコメントアウトしています)
* ディレクトリ直下の mnt/ 下に仮想OSとホスト間で共有されるディレクトリを用意しています。
* Vagrantfile 中の synced_folder の記述を調整する事でマウントポイントは変更可能です。実際使う時は用途により WEBのDocumentroot に割り当てる等して調整します。
* 初回起動時に1度だけ実行される shell を script/ に指定しています。
* 初回起動時にgit等のパッケージのインストールが可能です。必要に応じてスクリプト内容は要改変

# 使い方
* リポジトリを clone して、Vagrantfile をじぶん好みの内容に変更。
* Vagrant up する前に Cloneしてきたディレクトリ名は自分用のプロジェクト名に変えるなど適時調整。
* もろもろ調整後は ディレクトリ中で vagrant up

```
$ git clone https://github.com/0xmks/vagrant_base.git
$ cd vagrant_base
$ vagrant up
$ vagrant ssh master
```

# Vagrantfile設定方法参考
* [Vagrant Documentation] ( https://www.vagrantup.com/docs/ )

# あると便利なVagrant plugin
* sahara ( https://github.com/jedi4ever/sahara )
```
$ vagrant plugin install sahara
```

* vagrant-cachier ( https://github.com/fgrehm/vagrant-cachier )
```
$ vagrant plugin install vagrant-cachier
```
