Import-Module PSWriteWord -Force

$FilePath = "$Env:USERPROFILE\Desktop\PSWriteWord-Example-CreateWord2.docx"

$WordDocument = New-WordDocument $FilePath
$WordDocument.InsertParagraph("This is a text").FontSize("10").FontColor() | Out-Null
$WordDocument.InsertParagraph("Like me like i do").FontSize("21") | Out-Null
$WordDocument.InsertParagraph("Process").FontSize("15") | Out-Null
Save-WordDocument $WordDocument