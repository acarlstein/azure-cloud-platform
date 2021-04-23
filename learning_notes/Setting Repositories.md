# Setting Repositories

# Settings

## Forks
Toggle `Forks` so people can make a duplicate repository. This is good when you have 
multiple team that might require similar repositories. You can even use this feature by 
creating some "template" repository where teams can fork and modify to their need.

## Commit Linking
Toggle `Commit mention linking`. This allows to link a PR for example when your comment include the
hashtag plus the work item number.

## Commit Resolution
Toggle `Commit mention work item resolution`. This is another useful measurement because you wish to ensure
that any commit made is linked to a work item

With this feature, you only need to include a hashtag plus the number of your story to link the
commit with the story.

### Alternative - Add link to Work Item
Another alternative is to create a link to the work item (story, task, etc).
To do so, go to your work item and to the right you will see the section `Deployment`.
Below Deployment, there is a button `+ Add link`. With this, you can do the following:

* Create a "Branch" link: This allows you to link the actual branch with the work item.
* Create a "Commit" link: If you go to the commit section of your repository. 
You can find your last commit. Next to the title, there is a copy icon. Press that icon to copy the SHA number. 
That SHA number is teh Commit ID. Use that in the `Add Link` modal. _Note: Do not confuse the comment textbox
with the commit textbox_

## Work Item Transition
Toggle `Work item transition preferences`. This will ensure to recall your preferences when
completelying work items with pull requests.

## Policies

Go to `Project settings`. Under Repos, select `Repositories`. 

On the right, there are three tabs, select the `Policies` tab.
On this tab, there are a few repository policies; however, we are not interested on them

Scroll down until you find `Branch Policies` and click on the main branch of your repository.
The main branch could be called `master` or `main`.

### Reviewers
It is always good to have someone willing to review your code changes.
In a company, normally is good to have at least two people to take a look.

On the textbox `Minimum Number of Reviewers`, type a number. In our case, we will go with 2. 
This means that at least two people should approve your code changes prior you be allowed to do a PR merge.

Check `When new changes are pushed` and select `Reset all code reviewer votes`. 

### Linked Work Items
It is good policy to ensure that any PR or run pipeline is liked to a Work Item (Story).
To do so, toggle the `Check for linked work items` and select `Required`

### Comment Resolution
Another good policy is to ensure that prior the PR being completed and merge, that all comments
left in the PR are resolved. To do so, toggle `Check for comment resolution` and select `Required`.

## Security

In here, you can find the user permissions. When you are working in a team, if you created the repository
you should allow other users to do changes to it. Therefore, make sure to activate `Edit policies`.
To do so, click on `Contributors` and then select in the pulldown next to `Edit policies` the option `Allow`.

_Note: If you are not the user who created such repository, the option will be grayed._