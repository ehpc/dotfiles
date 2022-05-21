#!/bin/bash

apt-mark showmanual > .apt-mark.manual.txt
snap list > .snap.list.txt
ls ~/.cargo/bin/ > .cargo.bin.txt

