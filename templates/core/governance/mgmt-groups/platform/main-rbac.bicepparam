using './main-rbac.bicep'

param parPlatformManagementGroupName = 'platform-bcp-hubspoke-single3'
param parConnectivityManagementGroupName = 'connectivity-bcp-hubspoke-single3'
param parManagementGroupExcludedPolicyAssignments = [
  'Enable-DDoS-VNET'
]
param parEnableTelemetry = true
