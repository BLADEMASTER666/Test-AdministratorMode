<#
    実行環境が管理者モードか検証します。
#>
function Test-AdministratorMode{
    # ログインユーザーの情報を入手します。
    $LogonUser = [System.Security.Principal.WindowsPrincipal]([System.Security.Principal.WindowsIdentity]::GetCurrent())

    # ログオンユーザーにビルトインAdministratorのロールが割り当たっているか確認します。
    # IsInRoleメソッドの戻り値はブールなので、そのまま戻り値として使用しています。
    $LogonUser.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator)
}
