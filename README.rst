======
Snom Provisioning
======

:Author: Mike Szörnyi
:Web: http://github.com/madvertise/snom-provisioning
:Git: ``git clone https://github.com/madvertise/snom-provisioning.git``

Snom Provisiong can help managing all your SNOM based VoIP Phones.

Rationale
=========

There are many ways to setup a your VoIP phone. Snom based phone's can be managed through an embedded webinterface with more than 100 options or through your phones keypad.

Asterisk <http://www.asterisk.org/> users can use a build in snom provisioning system but if you use SIP provider without integrated provisioning solutions, this application may help you.

Usage
=====

- Install MySQL5 or higher
- Clone this repo with ```git clone https://github.com/madvertise/snom-provisioning.git```
- rename ```config/database.login.yml.example```to ```config/database.login.yml```and set your myql credentials there
- run ```bundle```to get all needed gems
- run ```rake db:create```
- run ```rake db:migrate```
- start your rails application with ```rails server```

Goto <http://localhost:3000/phones> and add a new Phone.

Prepare your phone
==================

Open your phones administration interface and goto preferences.

Contributing
======================

- Check out the latest master to make sure the feature hasn't been implemented
  or the bug hasn't been fixed yet

- Check out the issue tracker to make sure someone already hasn't requested it
  and/or contributed it

- Fork the project

- Start a feature/bugfix branch

- Commit and push until you are happy with your contribution

Copyright
=========

Copyright (c) 2012 Mike Szörnyi. See LICENSE for further details.
