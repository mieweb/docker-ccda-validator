vagrant-ccda-validator
===============
[![Build status](https://ci.appveyor.com/api/projects/status/l2421kcktabrmke9/branch/master?svg=true)](https://ci.appveyor.com/project/wreiske/vagrant-ccda-validator/branch/master)


CCDA Validator in a Vagrant VM

### Vagrant CCDA Validator

What You'll need
================

1. Vagrant
2. VirtualBox
3. Disk space and memory for a VM

Usage
=====

git clone this repo (and submodules! VERY important!)
```
git clone --recurse-submodules https://github.com/mieweb/vagrant-ccda-validator.git
```

Start the Vagrant machine with 'vagrant up'.
```
cd vagrant-ccda-validator
vagrant up
```

Wait...
Try opening up any of the following URLS:

http://localhost:8080/referenceccdaservice/static/validationui.html
![validationui](https://i.imgur.com/DM3E6ny.png)

http://localhost:8080/referenceccdaservice/swagger-ui.html#/reference-ccda-validation-controller
![swagger-ui](https://i.imgur.com/1OdtDyg.png)

Having issues?
=====
Check the logs folder!
