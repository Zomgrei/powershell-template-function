# Powershell Template Function
# $source is the template file
# $output is the output file name
# Params 1-3 are our replacement contents - add to this as you add to the replace function.
Param(
	[Parameter(Mandatory=$True)]
		[string]$source,
	[Parameter(Mandatory=$True)]
		[string]$output,
	[Parameter(Mandatory=$True)]
		[string]$param1,
	[Parameter(Mandatory=$True)]
		[string]$param2,
	[Parameter(Mandatory=$True)]
		[string]$param3
)
Write-Host '(¯°·._.• Opening template file and replacing templated variables...' -ForegroundColor Cyan
Write-Host '(¯°·._.• Copying'$source' -> '$output -ForegroundColor Magenta
# Opens $source and replaces params. Add to this for more params.
$content = Get-Content $source | ForEach-Object {
	$_ -replace "\$\{param1\}", $param1 `
	-replace "\$\{param2\}", $param2 `
	-replace "\$\{param3\}", $param3
}
# Creates the file with the specified name.
Set-Content $output $content
Write-Host '(¯°·._.• Template created.' -ForegroundColor Cyan