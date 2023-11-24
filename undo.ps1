# Restore default desktop background
Set-Item -Path $env:USERPROFILE\Desktop\BackgroundImage -Value $null

# Reset taskbar color to default
Set-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarColor -Value $null

# Replace the Hello Kitty icon with the default Start menu button icon
Remove-Item -Path "C:\Windows\StartMenu Shortcuts\StartMenu.lnk" -Force

# Remove the copied Hello Kitty cursor theme file
Remove-Item -Path "C:\Windows\Cursors\HelloKitty.cur" -Force

# Restore default cursor theme
Set-Item -Path HKCU:\Control Panel\Cursors\SchemeName -Value ""
