using './main.bicep'

// General Parameters
param parLocations = [
  'westeurope'
  ''
]
param parEnableTelemetry = true

param platformConnectivityConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'connectivity-bcp-hubspoke-single3'
  managementGroupParentId: 'platform-bcp-hubspoke-single3'
  managementGroupIntermediateRootName: 'alz-bcp-hubspoke-single3'
  managementGroupDisplayName: 'Connectivity'
  managementGroupDoNotEnforcePolicyAssignments: []
  managementGroupExcludedPolicyAssignments: [
    'Enable-DDoS-VNET'
  ]
  customerRbacRoleDefs: []
  customerRbacRoleAssignments: []
  customerPolicyDefs: []
  customerPolicySetDefs: []
  customerPolicyAssignments: []
  subscriptionsToPlaceInManagementGroup: ['e15d6ed8-bb49-4128-90e5-698a20b3a279']
  waitForConsistencyCounterBeforeCustomPolicyDefinitions: 10
  waitForConsistencyCounterBeforeCustomPolicySetDefinitions: 10
  waitForConsistencyCounterBeforeCustomRoleDefinitions: 10
  waitForConsistencyCounterBeforePolicyAssignments: 40
  waitForConsistencyCounterBeforeRoleAssignments: 40
  waitForConsistencyCounterBeforeSubPlacement: 10
}

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  'Enable-DDoS-VNET': {
    parameters: {
      ddosPlan: {
        value: '/subscriptions/e15d6ed8-bb49-4128-90e5-698a20b3a279/resourceGroups/rg-alz-conn-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Network/ddosProtectionPlans/ddos-alz-${parLocations[0]}'
      }
    }
  }
}
