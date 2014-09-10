#!/bin/bash
git clone https://github.com/haf/puppet-eventstore.git modules/eventstore
git clone https://github.com/stahnma/puppet-module-epel.git modules/epel
(cd modules/epel
 git reset --hard 449a63e089d051a0216649a7a53d042a0a39ea89)
git clone https://github.com/haf/puppet-supervisor.git modules/supervisor
(cd modules/supervisor
 git reset --hard 506c532b1e5d053739f2d2ff00f67901809e5e58)
vagrant up