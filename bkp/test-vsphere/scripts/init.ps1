
class TestSearcher
{
    hidden [String] $ClassFilePath
    hidden [Array] $db

    # Constructor
    TestSearcher(){
        $this.ClassFilePath = $PSScriptRoot

        $DataFilePath = Join-Path -Path "$($this.ClassFilePath)" -ChildPath "data.json"
        $this.db = Get-Content $DataFilePath | ConvertFrom-JSON
    }

    [Array] Search([String] $Keyword){
        [Array] $res = @()
        $this.db | % {
            if ($_.username -match $Keyword){
                $res += , $_
            } elseif ($_.hostname -match $Keyword){
                $res += , $_
            }
        }
        return $res
    }



}


