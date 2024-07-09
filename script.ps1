# Conecting to Tenant 
# Prompt user for log in
# Select Subscription
# Remove the variables

Connect-AzAccount

# Choose tenant (update later)
Get-AzTenant #display a list to select
Select-AzTenant -TenantId "TenantId"

# Choose subscritiption
Get-AzSubscription #display list to select
Select-AzSubscription -SubscriptionName "YourSubscriptionName"

# Choose Resource Group
# Ensure the right rg is selected
$rgName = "resourceGroupName"   #replace later with UI

# Get automation account
$automationAccount = Get-AzAutomationAccount -ResourceGroupName $rgName 

# Get variables in Automation Account
$variables = Get-AzAutomationVariable -ResourceGroupName $rgName -AutomationAccountName $automationAccount

# Iterate throught list of variables
Foreach ($variable in $variables) {
    # Remove Variable 
    Remove-AzAutomationVariable -AutomationAccountName $automationAccountName -Name $variable -ResourceGroupName $resourceGroupName
}

