# SonarCloud

If you ever have used Sonarqube then you know what is SonarCloud.
The difference is that the first one is used on premises and the other is on the "cloud".

## Account

Make sure you can access SonarCloud and are allowed to create a project.
Sometimes your administrator needs to know the Login created for you. 
This should be your first name, dash, last name plus a random number.

## Service Connector

To use SonarCloud with your repository, you must have a SonarCloud Service Connection listed.
Go to `Project Settings` and select `Service connections`. 

## Creating a new Service Connector

Click on the button `New service connection`.
On the side panel, scroll down and select `Sonar Cloud`. 
Fill in the SonarCloud token. If you don't have the token ask your administrator.
Fill up the rest of the details.

## Create SonarCloud Analyze Project

Click on the `+` icon. A down menu will show up. Seelct `Analyze new project`.
Scroll to the end of the page and you will find a link that says `create a project manually`.

Fill up the information and make sure you save somewhere the name of the `Project Key` you selected.

## Pipelines

Make sure that everyone in your team is selected as `Contributors` so they can approve your pipeline.

In your repository, you should have a `sonar-cloud-project.properties`
```bash
# Unique SonarQube instance
sonar.projectKey=your_sonarcloud_project_name
 
# Relative paths
sonar.sources=src, tests, public
```

### Preparing SonarCloud

Next, make sure that you setup SonarCloud in your YAML file.
```yaml
  - task: SonarCloudPrepare@1
    inputs:
      SonarCloud: $(yourSonarCloudServiceConnection)
      organization: "YourCompanyNameInSonarCloud"
      scannerMode: "CLI"
      configMode: "file"
      configFile: "$(yourProjectPath)/sonar-cloud-project.properties"
```
After the preparation, you should build your code and perform any testing.

When you are done, its time to analyze. You do this adding this task:
```yaml
  - task: SonarCloudAnalyze@1
```
Followed by publishing using this code:
```yaml
  - task: SonarCloudPublish@1
```