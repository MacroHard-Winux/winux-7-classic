#!/bin/bash
python3 /etc/skel/.config/winux7/splash/welcomeSplash.py & for i in {1..128}; do wmctrl -a Video ; echo -n "This is a test in loop $i "; date ; sleep 0.05; done
python3 /etc/skel/.config/winux7/splash/welcomeSplash.py & for i in {1..128}; do wmctrl -a Video ; echo -n "This is a test in loop $i "; date ; sleep 0.05; done
