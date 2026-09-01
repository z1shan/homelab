#### Ubuntu Server - autologin 

```sudo systemctl edit getty@tty1.service```

[Service]
ExecStart=
ExecStart=-/sbin/agetty --autologin zishan --noclear %I $TERM

#### Enable SSH service on boot
```sudo systemctl enable sshd```
```sudo systemctl enable docker```
