using './main.bicep'

// General Parameters
param parLocations = [
  'westeurope'
  ''
]
param parEnableTelemetry = true

param landingZonesLocalConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'local-bcp-hubspoke-single3'
  managementGroupParentId: 'landingzones-bcp-hubspoke-single3'
  managementGroupIntermediateRootName: 'alz-bcp-hubspoke-single3'
  managementGroupDisplayName: 'Local'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: []
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Currently no policy assignments for local landing zones
// When policies are added, specify parameter overrides here
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in landing zones - local currently
}
