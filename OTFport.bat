@set var=_v101

pushd "%~dp0.."

xcopy /y /e /c ".//TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.bornholm\"
del "./TvT_OnTheFly%var%.bornholm\.*"
del "./TvT_OnTheFly%var%.bornholm\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Woodland_ACR\"
del "./TvT_OnTheFly%var%.Woodland_ACR\.*"
del "./TvT_OnTheFly%var%.Woodland_ACR\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Sara\"
del "./TvT_OnTheFly%var%.Sara\.*"
del "./TvT_OnTheFly%var%.Sara\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Sara_dbe1\"
del "./TvT_OnTheFly%var%.Sara_dbe1\.*"
del "./TvT_OnTheFly%var%.Sara_dbe1\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.takistan\"
del "./TvT_OnTheFly%var%.takistan\.*"
del "./TvT_OnTheFly%var%.takistan\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Zargabad\"
del "./TvT_OnTheFly%var%.Zargabad\.*"
del "./TvT_OnTheFly%var%.Zargabad\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Stratis\"
del "./TvT_OnTheFly%var%.Stratis\.*"
del "./TvT_OnTheFly%var%.Stratis\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Chernarus_Summer\"
del "./TvT_OnTheFly%var%.Chernarus_Summer\.*"
del "./TvT_OnTheFly%var%.Chernarus_Summer\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Panthera3\"
del "./TvT_OnTheFly%var%.Panthera3\.*"
del "./TvT_OnTheFly%var%.Panthera3\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.IsolaDiCapraia\"
del "./TvT_OnTheFly%var%.IsolaDiCapraia\.*"
del "./TvT_OnTheFly%var%.IsolaDiCapraia\OTFport.bat"

xcopy /y /e /c "./TvT_OnTheFly.Desert_E" "./TvT_OnTheFly%var%.Altis\"
del "./TvT_OnTheFly%var%.Altis\.*"
del "./TvT_OnTheFly%var%.Altis\OTFport.bat"

pause