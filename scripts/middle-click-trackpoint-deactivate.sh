my_mouse_id=$(xinput | grep "TPPS/2 IBM TrackPoint" | sed 's/^.*id=\([0-9]*\)[ \t].*$/\1/')
xinput set-button-map $my_mouse_id 1 0 3 4 5 6 7
