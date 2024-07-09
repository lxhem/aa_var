# Conecting to Tenant 
# Prompt user for log in
# Select Subscription
# Remove the tags

# Automation Account and Resource Group
$automationAccountName = "aaName"   #replace later
$resourceGroupName = "rgName"   #replace later

# Get variables in Automation Account
$variables = Get-AzAutomationVariable -ResourceGroupName $resourceGroupName -AutomationAccountName $automationAccountName

# Iterate throught list of variables
Foreach ($variable in $variables) {
    # Remove Variable 
    Remove-AzAutomationVariable -AutomationAccountName $automationAccountName -Name $variable -ResourceGroupName $resourceGroupName
}

