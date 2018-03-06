" OpenSSH configuration
au BufNewFile,BufRead ssh_config,*/.ssh/config,*/.ssh/config*d/*.conf	setf sshconfig

au BufNewFile,BufRead */etc/host.conf,hosts		setf hostconf
