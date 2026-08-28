using './main.bicep'

// General Parameters
param parLocations = [
  'westeurope'
  ''
]
param parEnableTelemetry = true

param platformManagementConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'management-bcp-hubspoke-single3'
  managementGroupParentId: 'platform-bcp-hubspoke-single3'
  managementGroupIntermediateRootName: 'alz-bcp-hubspoke-single3'
  managementGroupDisplayName: 'Management'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: []
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  // No policy assignments in platform-management currently
}
