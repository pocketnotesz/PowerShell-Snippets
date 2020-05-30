# Use case :: When user is required to select a file, script has to open a folder dialog. 
# Like a browse option on windows, this then lists all files available.
# Now user selects requried file.
# Script should get the -folderPath- and -fileName-

# Below code will help to present browse option/open folder dialog
# so that user can select the file.

# Code works for Windows platform.



function Select-Folder
{
  Add-Type -AssemblyName System.Windows.Forms
  $Global:FolderBrowser=New-Object System.Windows.Forms.FolderBrowserDialog
  
# Newfolder option is removed with below code

  $FolderBrowser.ShowNewFolderButton = $false
  
# Open folder browser dialog
  $null = $FolderBrowser.Dialog()
  $FileBrowser.Dispose()
}
Select-Folder

# To get folder path - $FolderBrowser.SelectedPath

# - - - - - - - - - - - - - - - - - - - - - - - - - - 
# - - - - - - - - - - - - - - - - - - - - - - - - - - 

function select-filename
{
  Add-Type -AssemblyName System.Windows.forms
  
# Define a new object
  $Global:FileBrowser = New-Object System.Windows.Forms.OpenFileDialog
  
# Define file dialog parameters
# Set initial directory 
  $FileBrowser.InitialDirectory="$env:USERPROFILE"
  
# Ensure only one file is selected
  $FileBrowser.MultiSelect = $false
  
# Defining Title, this is title of the pop-up which opens
  $FileBrowser.Title = " Locate the file..."

# open selection window
  $null = $FileBrowser.ShowDialog()
}
Select-Filename

# To get filename - $FileBrowser.Filename
