bag = data_bag_item("sgtdeploy", "files")
orig = "c:\\Temp\\" + bag["VERSION"] + "\\IIS\\GTC"
dest = node["SGT"]["IIS_GTC"]
backup = bag["BACKUP"]


powershell_script 'mviisgtc' do
  code <<-EOH

  $origDir = "#{orig}"
  $destDir = "#{dest}"
  $backup = "#{backup}"

  Get-ChildItem $origDir -Filter "*" -Recurse  | where { ! $_.PSIsContainer }| ForEach {
  $currFileName = $_.Name
  $currOrigDir = $_.DirectoryName
  $currDestDir = $currOrigDir -Replace [Regex]::Escape($origDir),$destDir
  $currBackupDir = $currDestDir + "\\bkp"
  $currOrigFullFile = $currOrigDir + "\\" + $currFileName
  $currDestFullFile = $currDestDir + "\\" + $currFileName
  $currBackupFullFile = $currBackupDir + "\\" + $currFileName

	if((Test-Path $currDestFullFile)){
		If(!(Test-Path $currBackupDir)){New-Item -ItemType Directory -Path $currBackupDir -Force | Out-Null}
                If($backup -eq "1"){
                 Copy-Item $currDestFullFile $currBackupFullFile -Force
		}
	 Copy-Item $currOrigFullFile $currDestFullFile -Force
	 $currDestFullFile
	}
  }

  EOH
  flags '-ExecutionPolicy RemoteSigned'
  guard_interpreter :powershell_script
end 

