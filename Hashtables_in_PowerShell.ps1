# Hashtables in PowerShell
# Below code combines two variable names to a single table

$value1 = "Android", "iOS", "Tizen"

$value2 = "Google", "Apple", "Samsung"

# Use GetEnumerator() function

$value1E = $value1.GetEnumerator()
$value2E = $value2.GetEnumerator()

#combine $value1E and $value2E into hashtable
$table = @{}
while($value1E.MoveNext() -and $value2E.MoveNext())
	{$table.Add($value1E.current,$value2E.current)}

# $table will list Name and value
#
# Name                           Value
# ----                           -----
# Tizen                          Samsung
# Android                        Google
# iOS                            Apple
