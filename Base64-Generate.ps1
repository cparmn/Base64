Add-Type -TypeDefinition @'
using System.Reflection;
public class Program
{
    public static void Main()
    {
        System.Console.WriteLine("Its all about the Bytes");
    }
}
'@ -OutputAssembly C:\Test\Program.exe

$Program_bytes = Get-Content -Path C:\Test\Program.exe -Encoding Byte
$Program_encoded = [System.Convert]::ToBase64String($Program_bytes)
$Program_encoded | Out-File C:\Test\Program.txt

