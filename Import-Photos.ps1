param($location = "")

$origin = "F:\DCIM\100NCD70"

$pattern = "E:\pze\%Y-%m-%d"

if ($location -ne "") {
	$pattern = $pattern + " $location"
}

# asta merge
.\bin\exiftool.exe -directory<datetimeoriginal "$origin" -d $pattern -o cucu\

#.\bin\exiftool -o -d $pattern "-directory<datetimeoriginal" D:\poze\Provence