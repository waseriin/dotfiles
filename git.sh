#!/bin/sh

GIT_CONFIG_LOCAL=~/.gitconfig.local
if [ ! -e $GIT_CONFIG_LOCAL ]; then
	echo -n "git config user.email?> "
	read GIT_AUTHOR_EMAIL

	echo -n "git config user.name?> "
	read GIT_AUTHOR_NAME

	cat < $GIT_CONFIG_LOCAL
[user]
  name = $GIT_AUTHOR_NAME
  email = $GIT_AUTHOR_EMAIL
EOF
fi
