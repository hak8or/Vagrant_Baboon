Vagrant web development box
============================
The vagrant file, folder structure, and link to a setup script that you can use to get a vagrant box up and running containing an already implimented and running example demo site with just five commands. The website is hosted on port 1337, so to view it just go to localhost:1337, and the folder containing the Ruby on Rails application is in vagrant_share. All changes that happen in vagrant_share on your machine and in demo_rails_app on the VM are automagically synced in real time.

This is for the most part just a vagrant wrapper for my fabulously named [nginx-passenger-postgres-rails-setup-script] (https://github.com/hak8or/nginx-passenger-postgres-rails-setup-script) which can be run on any other VM or dedicated machine.

Requisites
----------
+ [Vagrant] (http://www.vagrantup.com/)
+ [VirtualBox] (https://www.virtualbox.org/)
+ [Git GUI for windows] (http://windows.github.com/) or any other Git client.
+ [vagrant-vbguest] (https://github.com/dotless-de/vagrant-vbguest) Vagrant plugin to make sure the guest additions in the VM are correct so folder sharing works.

Usage:
---------
```Batchfile
vagrant plugin install vagrant-vbguest
git clone git://github.com/hak8or/Vagrant_Baboon.git
cd git clone git://github.com/hak8or/Vagrant_Baboon.git
vagrant up # Now we wait ...
vagrant ssh
```

Feel free to give the Vagrant_Nginx_Rails_Postgres_box folder a much more resonable name and move it where you wish. Your information will be shown in the terminal once your box has been set up.

Troubleshooting
---------------
##### My shared folder is not working!
Make sure you installed the vagrant-vbguest plugin or else shared folders will not work correctly due to the guest addition version in the VM not matching the guest addition version VirtualBox expects. The vagrant_share folder must exist in the same folder the vagrant file does.

##### I can't connect to the postgresql database using my favorite tool or gui!
You will need to open that port manually in the vagrant file and then run vagrant reload. Add the following line replacing the port numbers with the ones you need.
```
config.vm.network :forwarded_port, guest: 1337, host: 1337
```

##### Some crazy errors are popping up in the terminal when running your script!
Chances are that some updated version was released for Phusion or an update broke something. Let me know either here or on the [page] (https://github.com/hak8or/nginx-passenger-postgres-rails-setup-script) the script came from.

Possible future enhancements
----------------------------
Run Postgres on another machine to better emulate a production enviorment.

Have the script automatically insert the server{} section into nginx.conf instead of having the user do it manually when the script is done.