umask 022
TARGET_PATH=/mnt/c/Users/ri/Nextcloud/dev

mkdir base_dir
find ${TARGET_PATH} -type d -exec chmod --reference ./base_dir {} \;
rm -fR ./base_dir

touch base_file
find ${TARGET_PATH} -type f -exec chmod --reference ./base_file {} \;
rm -f ./base_file

