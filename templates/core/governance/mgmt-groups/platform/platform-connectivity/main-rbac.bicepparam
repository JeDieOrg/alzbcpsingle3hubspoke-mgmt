using './main-rbac.bicep'

param parCorpManagementGroupName = 'corp-bcp-hubspoke-single3'
param parConnectivityManagementGroupName = 'connectivity-bcp-hubspoke-single3'
param parManagementGroupExcludedPolicyAssignments = []
param parEnableTelemetry = true
