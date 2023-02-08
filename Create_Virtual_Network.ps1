#Create the virtual Network

$vnet = @{
	Name = 'myVnet'
	ResourceGroupName = 'rg_eastus_98010_1_16758506341378'
	Location = 'EastUS'
	AddressPrefix = '10.0.0.0/16'
}

$virtualNetwork = New-AzVirtualNetwork @vnet

#Create a subnet

$subnet = @{
	Name ='default'
	VirtualNetwork = $virtualNetwork
	AddressPrefix = '10.0.0.0/24'
}
$subnetConfig = Add-AzVirtualNetworkSubnetConfig @subnet

# Associate the subnet to the virtual network

$VirtualNetwork | Set-AzVirtualNetwork

#Create VM1 

$vm1 = @{
	ResourceGroupName = 'rg_eastus_98010_1_16758506341378'
	Location = 'EastUS'
	Name = 'myVM1'
	VirtualNetWorkName = 'myVnet'
	SubnetName = 'default'
	Size = 'Standard_B2s'
}

New-AzVM @vm1 

