USER_NAME="$1"

useradd -m -s /bin/bash -U ${USER_NAME} -u 2000 --groups sudo
cp -pr /home/vagrant/.ssh /home/${USER_NAME}/
chown -R ${USER_NAME}:${USER_NAME} /home/${USER_NAME}
echo "%${USER_NAME} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER_NAME}