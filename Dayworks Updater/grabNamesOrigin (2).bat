@echo off
dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*day*" /S /B /O:N /A:D > OrgCombine.txt
dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*dws*" /S /B /O:N /A:D >> OrgCombine.txt
dir "T:\10 - Contracts\10.02 - Variations\Site Instructions\*time*" /S /B /O:N /A:D >> OrgCombine.txt
pause