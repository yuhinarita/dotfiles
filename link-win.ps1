Set-Location "$HOME/dotfiles"

Get-ChildItem -Force -Name -Filter ".*" | ForEach-Object {
  $file = $_

  if ($file -eq "." -or $file -eq ".." -or $file -eq ".git") {
    return 
  }

  if ($file -eq ".vim") {
    $targetPath = "$HOME/vimfiles"
  } else {
    $targetPath = "$HOME/$file"
  }

  $sourcePath = Join-Path (Get-Location) $file
  New-Item -ItemType SymbolicLink -Path $targetPath -Target $sourcePath 
}
