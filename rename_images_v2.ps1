$files = Get-ChildItem -Recurse -Path "e:\tarun\sapry_marketing\images" -File
foreach ($file in $files) {
    if ($file.Name -like "*FP-*") {
        $newName = $file.Name.Replace("FP-", "SM-")
        Rename-Item -Path $file.FullName -NewName $newName
        echo "Renamed: $($file.FullName) to $newName"
    }
    elseif ($file.Name -like "*FP1200*") {
        $newName = $file.Name.Replace("FP1200", "SM-1200")
        Rename-Item -Path $file.FullName -NewName $newName
        echo "Renamed: $($file.FullName) to $newName"
    }
}
echo "Comprehensive Image Renaming Completed!"
