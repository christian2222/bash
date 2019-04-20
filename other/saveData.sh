#! /bin/bash

# unite both directories in one tar file:
tar cvf webArbeitDataSave$(date +"%m%d%y_%Hh-%Mm-%Ss").tar bootstrap-3.3.6-dist/ workspace/
mv *.tar ../saves/
ls ../saves/
