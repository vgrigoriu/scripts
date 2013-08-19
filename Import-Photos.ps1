param($location = "")

$pattern = "f:\pze\%Y-%m-%d"

if ($location -ne "") {
	$pattern = $pattern + " $location"
}

# asta merge
.\bin\exiftool.exe -directory<datetimeoriginal D:\DCIM\100NCD70 -d $pattern -o cucu\

#.\bin\exiftool -o -d $pattern "-directory<datetimeoriginal" D:\poze\Provence