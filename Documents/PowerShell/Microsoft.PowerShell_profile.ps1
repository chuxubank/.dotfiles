if ($env:TERM_PROGRAM -eq "WezTerm") {
    $prompt = ""
    function Invoke-Starship-PreCommand {
        $current_location = $executionContext.SessionState.Path.CurrentLocation
        if ($current_location.Provider.Name -eq "FileSystem") {
            $ansi_escape = [char]27
            $provider_path = $current_location.ProviderPath -replace "\\", "/"
            $prompt = "$ansi_escape]7;file://${env:COMPUTERNAME}/${provider_path}$ansi_escape\"
        }
        $host.ui.Write($prompt)
    }
    Invoke-Expression (&starship init powershell)
}

$PSReadLineOptions = @{
    EditMode                      = "Emacs"
    HistoryNoDuplicates           = $true
    HistorySearchCursorMovesToEnd = $true
    Colors                        = @{
        "Command" = "#8181f7"
    }
}
Set-PSReadLineOption @PSReadLineOptions
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete