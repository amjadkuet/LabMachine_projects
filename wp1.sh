# !/bin/csh
rm ~/.ssh/id_rsa
rm ~/.ssh/id_rsa.pub
ssh-keygen
chmod 700 ~/.ssh
cd ~/.ssh
rm config
touch config
echo "Host *">>config
echo "StrictHostKeyChecking no">>config
chmod 640 authorized_keys
mv id_rsa p_id_rsa
mv id_rsa.pub p_id_rsa.pub
cd ..

