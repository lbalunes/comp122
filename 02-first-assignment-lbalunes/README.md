
# General Assignment Directions

Students within Computer Science and Computer Information Technology programs are better served if they learn and utilize source control systems early in their academic program. Learning various markdown languages, which are used to document their software projects, is also advantages.

While using a Canvas might be a easier for you to submit assignments, using canvas provides you with little long-term benefit.  

As such, we will be using GitHub Classrooms for all of our paper-like assignments, which includes quizzes and exams in COMP122. Additional, a semi-automatic grading process is also used as part of this process. This should result in a faster turn-around in grading.

To submit your assignments and for the Professor to grade them efficiently, there are a number of steps that you must follow. This assignment is being provided to you to ensure you understand these steps and to allow you to address any issues that may prevent you from submitting your assignments.

In class, the professor will review each of these steps and provide additional information as to what these commands do. For now, simply follow the instructions.

## First-Time GitHub Users
  1. Obtain a github account (https://github.com).
  1. Setup your github account to use [SSH Authentication](https://docs.github.com/en/authentication/connecting-to-github-with-ssh).
     This step includes the following substeps as provided in the SSH Authentication document:
     - Reading "About SSH"
     - Checking for existing SSH key
     - Generating a new SSH key
     - Adding a new SSH key
       - Do not use a passphrase
       - You can skip the section on "Adding your SSHKey to the ssh-agent"
     - Test your SSH Key

## Joining the comp122-s23 Classroom
  1. Click on the following assignment link: https://classroom.github.com/a/c1oXvbim
  1. Join the comp122-s23 classroom.
     - if your email address is not listed, STOP and notify the Professor.
  1. Accept the assignment.
  1. Wait a bit and then refresh the page.


## Accept the Assignment
  1. Launch a terminal
  1. Go to your deliverables directory
     ```
     cd ~/classes/comp122/deliverables
     ```
  1. Use the Assignment's Invitation URL to accept the assignment.
     - For this assignment, the URL is: https://classroom.github.com/a/c1oXvbim
     - All Invitations URL are recorded in the "assignments.md" file.
  1. Click on the URL that is associated with your assignment repository.
  1. Obtain the git URL for this assignment: <br/>
     - Click on the green "Code" button.
     - Select "SSH" menu tab.
     - Copy the ssh-style URL.
     This URL should look like: `git@github.com:COMP122/02-first-assignment-smf-steve`
     Note my github user name is "smf-steve", your github user name will be part of your URL.


  1. Clone this repository to your computer, e.g., 
     ```
     git clone git@github.com:COMP122/02-first-assignment-smf-steve
     ```
     Note that you need to replace the substring "smf-steve" with your Github account name.

  1. Change to the working directory for this assignment.<br/>
     ```
     ls
     cd 02-first-assignment-smf-steve
     ls
     ```
     Note that you need to replace the substring "smf-steve" with your Github account name.

  1. Review the "assignment.md" file.
  1. Make a copy of the "assignment.md" file, naming it "submission.md":
     ```
     cp assignment.md submission.md
     ```
  1. Edit the submission.md file to correct the following information.
     - Name:
     - GitHub Account:

     You can edit the file using one of the following commands:
       - `subl submission.md`
       - `subl.exe submission.md`

  1. Add the submission.md to your local repository: 
     ```
     git add submission.md
     ```
  1. Commit this file to your local repository:
     ```
     git commit -m 'creating file'
     ```
  1. Push the current contents of your local repository to remote repository:
     ```
     git push
     ```

## Work on the Assignment
  1. Incrementally edit and submit your "submission.md" file.
     Note that windows users might need to use the command "subl.exe" to edit the file.

     ```
       subl submission.md
       git add submission.md
       git commit -m 'some message' submission.md
       git push
     ```
     Note that windows users might need to use the command "subl.exe" to edit the file.
     - get into the habit of making incremental updates to your working assignments.
  1. Provide a response to all items that have been marked as needing a response.
     - an HTML comment tag `<!-- response -->` have been added to each line that requires a response.
     - your response should be placed to the left of the HTML comment.
  1. Use additional spacing to ensure your responses are _easy_ to read to maximize credit.
  1. Add additional information as you feel is necessary to maximize credit.
  1. Review what the rendering of the "submission.md" looks like with a Markdown viewer, e.g., One Markdown.
     - re-edit the file to make any necessary changes, before your final "push."

  1. Submit your final version of the deliverable, which is the contents of the entire local repository
     ```
     git push
     ```


## Grading
  1. A semi-automated process will be used to expedite the grading of this assignment. 
  1. As such, it is important that you position your answers appropriately within the "submission.md" file.
  1. A file called "answers.md" will be provided to you with all the correct answers.
  1. A file called "grade.report" will be provided with your final score and any breakdown.
  1. The professor will announce via slack when a particular assignment has been graded.

