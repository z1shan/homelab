# homelab

# Ubuntu Server - autlogin 
[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin zishan --noclear %I $TERM

