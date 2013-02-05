#PowerShell Template Function

##Information
This script can take any file with templated variables and replace them, useful for scripts that deal with multiple template files with the same variables strewn about.

##Usage
```powershell
setTemplate.ps1 -source "testTemplate.tpl" -output "test.html" -param1 "banana" -param2 "waffle" -param3 "golf cart"
```

## Credits
setTemplate.ps1 is an original piece created by me to assist in templating files.

Originally, this was created to ease generation of XML files for batch job creation in Jenkins.