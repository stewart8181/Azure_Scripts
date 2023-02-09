#Create the virtual Network 'ResearchVnet'

$vnet = @{
	Name = 'ResearchVnet'
	ResourceGroupName = 'rg_southeastasia_98010_3_1675938674752'
	Location = 'southeastasia'
	AddressPrefix = '10.40.0.0/16'
}

$virtualNetwork = New-AzVirtualNetwork @vnet

#Create a subnet

$subnet = @{
	Name ='ResearchSystemSubnet'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.40.0.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork



#Create the virtual Network 'CoreServicesVnet'

$vnet = @{
	Name = 'CoreServicesVnet'
	ResourceGroupName = 'rg_eastus_98010_1_1675938670322'
	Location = 'eastus'
	AddressPrefix = '10.20.0.0/16'
}

$virtualNetwork = New-AzVirtualNetwork @vnet

#Create a subnet

$subnet = @{
	Name ='SharedServicesSubnet'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.20.10.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create a subnet

$subnet = @{
	Name ='GateWaySubnet'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.20.0.0/27'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create a subnet

$subnet = @{
	Name ='DatabaseSubnet'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.20.20.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create a subnet

$subnet = @{
	Name ='PublicWebServiceSubnet'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.20.30.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork




#Create the virtual Network 'ManufacturingSystemSubnet'

$vnet = @{
	Name = 'ManufacturingSystemSubnet'
	ResourceGroupName = 'rg_westeurope_98010_2_16759386711799'
	Location = 'westeurope'
	AddressPrefix = '10.30.0.0/16'
}

$virtualNetwork = New-AzVirtualNetwork @vnet

#Create a subnet

$subnet = @{
	Name ='ManufacturingSystemSubnet'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.30.10.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create a subnet

$subnet = @{
	Name ='SensorSubnet1'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.30.20.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create a subnet

$subnet = @{
	Name ='SensorSubnet2'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.30.21.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create a subnet

$subnet = @{
	Name ='SensorSubnet3'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.30.22.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork