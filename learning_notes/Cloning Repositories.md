# Cloning Repositories

Lets assume that you wish to clone a repository from one project to another, including the history of changes.
Lets assume that we are moving the repository `ui-ux` from project `A` to project `B`.

## Step 1 - Create the new repository in destination project

* Go to `https://dev.azure.com/` and select the destination project. In our case is project `B`.
* Click on Repos.
  * On the top, click on the down arrow and select `+ New Repository`
  * Fill the information and create the repository
  
## Step 2 - Clone old repository from source project 

* Clone with the flag `--bare` your repository in the source project. In our case is project `A`
  * `git clone --bare https://your_company_name@dev.azure.com/your_account/project_A/_git/ui-ux`
    * This will create a folder `ui-ux.git`

## Step 3 - Push the content from source repository to the destination repository
* Go into the `ui-ux.git` folder, created by the previous step, and push a mirror of the old repository into the new repository.
  * `git push --mirror https://your_company_name@dev.azure.com/your_account/project_B/_git/ui-ux`

# Sources

[Manually Import a Repo](https://docs.microsoft.com/en-us/azure/devops/repos/git/import-git-repository?view=azure-devops#manually-import-a-repo)

  