# homelab

# Ubuntu Server - autlogin 
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin yourusername --noclear %I $TERM

