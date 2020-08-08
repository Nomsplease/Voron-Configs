wget --ftp-user=admin -r -nH ftp://voron0/macros
wget --ftp-user=admin -r -nH ftp://voron0/sys

del .\sys\*.bak
del .\sys\*.bin
del .\sys\*.old
del .\sys\heightmap.csv
del .\sys\dwc2settings.json
del .\sys\resurrect.g