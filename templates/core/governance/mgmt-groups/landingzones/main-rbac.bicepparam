using './main-rbac.bicep'

param parLandingZonesManagementGroupName = 'landingzones-bcp-hubspoke-single3'
param parPlatformManagementGroupName = 'platform-bcp-hubspoke-single3'
param parConnectivityManagementGroupName = 'connectivity-bcp-hubspoke-single3'
param parManagementGroupExcludedPolicyAssignments = [
  'Enable-DDoS-VNET'
]
param parEnableTelemetry = true
