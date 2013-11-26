$pdf = $Args[0] + ".pdf"
$xml = $Args[0] + ".xml"
echo "Building $xml to $pdf..."
fop -c fop.xconf -xsl fo.xsl -xml $xml -pdf $pdf
start $pdf

# SIG # Begin signature block
# MIIEMwYJKoZIhvcNAQcCoIIEJDCCBCACAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQU3adYFwtASKGsZHQzUlLn2fVq
# 4eOgggI9MIICOTCCAaagAwIBAgIQQaAR2D0OW75AUuP+XaoL1jAJBgUrDgMCHQUA
# MCwxKjAoBgNVBAMTIVBvd2VyU2hlbGwgTG9jYWwgQ2VydGlmaWNhdGUgUm9vdDAe
# Fw0xMzExMjYwMzIzNTdaFw0zOTEyMzEyMzU5NTlaMBoxGDAWBgNVBAMTD1Bvd2Vy
# U2hlbGwgVXNlcjCBnzANBgkqhkiG9w0BAQEFAAOBjQAwgYkCgYEAjd0EShsedGko
# qSQUKO6Lu7llON11XiZlg4sR60/7NM+Wa2We/KaM9mDbfQ734KtFMoHcEVC/G8AD
# bJ8WUxcnK4ZEn9/ZbUUdRytjzRHazJVuAq5lFOPzk+Dyy7MBnDMsQDd8PCbLAQdy
# 0NET0/XRzjcovOpSU6hBcm6dmtXdl8ECAwEAAaN2MHQwEwYDVR0lBAwwCgYIKwYB
# BQUHAwMwXQYDVR0BBFYwVIAQ3UIfnF8G56sxHpZT4R7pP6EuMCwxKjAoBgNVBAMT
# IVBvd2VyU2hlbGwgTG9jYWwgQ2VydGlmaWNhdGUgUm9vdIIQoQi1Z76XBaREzfaC
# AEywfDAJBgUrDgMCHQUAA4GBAKzOX0xKEPOOYsHqO1Rz+9/5jdeHGIbwxkqCd9kO
# 7UQkxiM+bG1JVCsrGTGT8afNzbsCjFI/vaHTraxGBs0IQCRQoLETtA7DOTxlQKA8
# ADuFIs5EfPiCi1q2lSIA9qOmsNbrE0JICXgNZhOzqw6gj2rokYF+aiO8jBoTTavk
# ZMN1MYIBYDCCAVwCAQEwQDAsMSowKAYDVQQDEyFQb3dlclNoZWxsIExvY2FsIENl
# cnRpZmljYXRlIFJvb3QCEEGgEdg9Dlu+QFLj/l2qC9YwCQYFKw4DAhoFAKB4MBgG
# CisGAQQBgjcCAQwxCjAIoAKAAKECgAAwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcC
# AQQwHAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYE
# FCSqdfDdgfoOqFEBCpBafnJvbsVzMA0GCSqGSIb3DQEBAQUABIGAg09blXXPZmJr
# 5yooi1tyWTrVVplqpwg8/lkkhI9/7QjXI8jh54NEvi0q8JQL3WJyt0dNyppAV47f
# khbMF3WC4VSaK20hkl9ti4F3eCDG6FMZwNmtYlAiKsRaNRfHPnqSvOmdE+RVrAkM
# 4G93Mg9YWnjAc2dVUaFU1c+Tw1/DInE=
# SIG # End signature block
