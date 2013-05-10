param($location = "")

$pattern = "D:\pozetest\%Y-%m"

if ($location -ne "") {
	$pattern = $pattern + " $location"
}

# asta merge
.\bin\exiftool.exe -directory<datetimeoriginal D:\poze\Provence\DSC_3159.JPG -d d:\pze\%Y-%m -o cucu\

#.\bin\exiftool -o -d $pattern "-directory<datetimeoriginal" D:\poze\Provence