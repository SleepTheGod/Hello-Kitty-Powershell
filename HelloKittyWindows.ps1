# Set desktop background to Hello Kitty image
$backgroundImage = "C:\Users\<username>\Pictures\hellokitty.jpg"
Set-Item -Path $env:USERPROFILE\Desktop\BackgroundImage -Value $backgroundImage

# Set taskbar color to pink
Set-Item -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced\TaskbarColor -Value "#ff00ff"

# Set start menu button to Hello Kitty icon
$iconPath = "C:\Users\<username>\Pictures\hellokitty.ico"
New-Shortcut -TargetPath "C:\Windows\StartMenu Shortcuts\StartMenu.lnk" -Arguments "" -Icon $iconPath

# Set cursor theme to Hello Kitty
$cursorThemePath = "C:\Users\<username>\AppData\Local\Microsoft\Windows\Cursors\HelloKitty.cur"
Copy-Item -Path $cursorThemePath -Destination "C:\Windows\Cursors\HelloKitty.cur"

# Apply Hello Kitty cursor theme
Set-Item -Path HKCU:\Control Panel\Cursors\SchemeName -Value "HelloKitty"
