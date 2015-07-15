bag = data_bag_item("sgtdeploy", "files")
orig = "c:\\Temp\\" + bag["VERSION"] + "\\IIS\\inetpub\\wwwroot\\GTC"
dest = node["SGT"]["IIS_INETPUB"]
backup = bag["BACKUP"]


powershell_script 'mviisinetpub' do
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
	 $currCreationOrig = (get-itemproperty $currOrigFullFile).creationtime
		If(!(Test-Path $currBackupDir)){New-Item -ItemType Directory -Path $currBackupDir -Force | Out-Null}
                If($backup -eq "1"){
		 $currCreationDest = (get-itemproperty $currDestFullFile).creationtime
                 Copy-Item $currDestFullFile $currBackupFullFile -Force
		 #set-Itemproperty $currBackupFullFile -name CreationTime -value $currCreationDest
		}
	 Copy-Item $currOrigFullFile $currDestFullFile -Force
	 #set-Itemproperty $currDestFullFile -name CreationTime -value $currCreationOrig
	 $currDestFullFile
	}
  }

  EOH
  flags '-ExecutionPolicy RemoteSigned'
  guard_interpreter :powershell_script
end 

