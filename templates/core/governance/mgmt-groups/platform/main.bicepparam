using './main.bicep'

// General Parameters
param parLocations = [
  'westeurope'
  ''
]
param parEnableTelemetry = true

param platformConfig = {
  createOrUpdateManagementGroup: true
  managementGroupName: 'platform-bcp-hubspoke-single3'
  managementGroupParentId: 'alz-bcp-hubspoke-single3'
  managementGroupIntermediateRootName: 'alz-bcp-hubspoke-single3'
  managementGroupDisplayName: 'Platform'
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

// Only specify the parameters you want to override - others will use defaults from JSON files
param parPolicyAssignmentParameterOverrides = {
  'Deploy-VM-ChangeTrack': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-ct-alz-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-VM-Monitoring': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-vmi-alz-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-VMSS-ChangeTrack': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-ct-alz-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-VMSS-Monitoring': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-vmi-alz-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-vmArc-ChangeTrack': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-ct-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-vmHybr-Monitoring': {
    parameters: {
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-vmi-alz-${parLocations[0]}'
      }
    }
  }
  'Deploy-MDFC-DefSQL-AMA': {
    parameters: {
      userWorkspaceResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.OperationalInsights/workspaces/law-alz-${parLocations[0]}'
      }
      dcrResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.Insights/dataCollectionRules/dcr-mdfcsql-alz-${parLocations[0]}'
      }
      userAssignedIdentityResourceId: {
        value: '/subscriptions/d6e7bb3f-971d-4bfc-a20b-cdfaa1ad8fc0/resourceGroups/rg-alz-logging-bcp-hubspoke-single3-${parLocations[0]}/providers/Microsoft.ManagedIdentity/userAssignedIdentities/mi-alz-${parLocations[0]}'
      }
    }
  }
  'DenyAction-DeleteUAMIAMA': {
    parameters: {
      resourceName: {
        value: 'mi-alz-${parLocations[0]}'
      }
    }
  }
}
