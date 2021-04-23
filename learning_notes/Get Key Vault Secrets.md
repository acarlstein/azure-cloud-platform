# Get Key Vault Secrets

There is more than one way to obtain the secrets you need for your project.

## Pipelines

The following code will allow you to obtain the secret for any step, job, or task in your pipeline.
Just run the following by changing the values to fit your needs:

```yaml
  - task: AzureKeyVault@1
    displayName: 'Get Secret From Azure Key Vault'
    inputs:
      azureSubscription: ${{ parameters.yourServiceConnection }}
      keyVaultName: $(yourKeyVaultName)
      secretsFilter: 'SecretName'
```

## Powershell
The following command allow you to obtain the Key Vault secrets:
```powershell
Get-AzKeyVaultSecret -VaultName $keyVaultName
```