function Disable-WindowsCoreIsolation {

    # Disable Virtualization Based Security and Required Platform Security Features
    $deviceGuardPath = "HKLM:\SYSTEM\CurrentControlSet\Control\DeviceGuard"
    
    Set-ItemProperty -Path $deviceGuardPath -Name "EnableVirtualizationBasedSecurity" -Value 0
    Set-ItemProperty -Path $deviceGuardPath -Name "RequirePlatformSecurityFeatures" -Value 0

    Write-Output "Windows Core Isolation features have been disabled. A reboot is required for the changes to take effect."
}

# Call the function
Disable-WindowsCoreIsolation
