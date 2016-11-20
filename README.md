# scripts

- Flatten items from a folder tree:
```poweshell
Get-ChildItem C:\work\someProject -Recurse -Include *.nupkg | Copy-Item -Destination c:\flatFolder
```
