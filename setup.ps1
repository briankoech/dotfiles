$CurrentLocation = Get-Location
$NvimPath = 'nvim\'
$InstallPath = Join-Path -Path $Env:LOCALAPPDATA -ChildPath $NvimPath
$TargetPath = Join-Path -Path $CurrentLocation -ChildPath $NvimPath

function Install-NvimConfig() {
  $error.clear()
try
{
    $link = New-Item -ItemType SymbolicLink -Path $InstallPath -Target $TargetPath -Force -Verbose
    echo $link
}
catch
{
  echo "error"
  echo $error
}
  }


function Set-Prettier() {
  $TargetPath = Join-Path $CurrentLocation -ChildPath '.prettierrc'
  $PrettierPath = Join-Path ($CurrentLocation).Drive.Root -ChildPath '.prettierrc'
  $link = New-Item -ItemType SymbolicLink -Path  $PrettierPath -Target $TargetPath -Force -Verbose

  echo $link
}

# Install-NvimConfig;
#
Set-Prettier;


