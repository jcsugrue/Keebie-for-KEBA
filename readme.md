# Keebie for KEBA

A fork of Keebie by Robin Universe for KEBA screen captures using the pendant's membrane buttons

#### How to set up:

 - Download the source and run `make install`. Make sure you have `python3`, `python3-evdev`, and `inotify-tools` 

#### How it works:

 - After installing run keebie
 - Screenshots are taken by quickly pressing the top - button and bottom  + button 
 - Record video by long pressing top - button and bottom + button, recording starts when buttons are released
 - Video recording is stopped by quickly pressing top - button and bottom - buttom

#### Limitations:
 - First partition on USB must be FAT32, EXT2, EXT3, or EXT4
 - Drive must be partitioned using MBR. If the drive uses GPT, screenshots and videos will end up on the EFI partition. 
