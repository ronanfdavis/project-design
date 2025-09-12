---
editor_options: 
  markdown: 
    wrap: 72
---

# project-design

## Repository Design

This is an example repository to show my ever-evolving preferences for
organizing projects/R projects in ways that are sufficiently friendly
both for initial data cleanup, analysis, for writing reports and
manuscripts, and most importantly to deliver data and results to
collaborators.

The directories within this project are organized with a .gitignore and
with four primary directories and is set up to appear differently on
GitHub than it does on a local computer. To explain:

I typically set up my .gitignore file with the following:

.Rproj.user

.Rhistory

.RData

.Ruserdata

**Data/**

**Supp/**

**RMS/**

These settings tell Git/GitHub what files to ignore when pushing from
the local computer to the GitHub repository, and files are typically
ignored in this way due to size constraints, confidentiality concerns,
or because we simply don't need to save every version and change made to
the backend R tracking files. The first four lines (beginning with .R)
are provided by default by .gitignore. The last three, "Data/", "Supp/",
and "RMS/" are lines that I added to ignore those directories. The "/"
at the end of each line tells GitHub to ignore the entire contents and
descendants of those folders. As such, even though my local computer
will show and give access to the Data/ and Supp/ files, those files will
not be visible on GitHub. Note that if you follow similar settings, you
should still be using systems of backups to ensure that these files are
not lost if something happens to your local computer.

Since this is an example, I'm only removing the Data/ folder from Git

The base organization I use is built around five directories within an R
project, and looks like this:

Repo Directory

-   Data/

    -   Input/

    -   Output/

        -   2024-04-23/ (*example*)

        -   2024-04-28/ (*example*)

    -   Raw/

-   R/

-   RMS/

-   Supp/

-   TS/

To go through each of these directories one by one:

1.  Data: Where all data and outputs from analysis go (explain how the
    config is set up). Raw data should go in the Raw/ folder, Input/ is
    for metadata or similar files that you will be using to analyze your
    raw data, and Output/ is the home for all .csv, image, or R object
    outputs and is versioned by the date I began running that iteration
    of analysis in YYYY-MM-DD format. This is initialized and updated
    through a .R config file **(See the R/config.R file for more
    information)**

2.  R: Where any scripts for functions or pure .R files go. Most
    importantly, this is where the config file goes (and where the
    example config file is for this repo)

3.  RMS: Where .Rmd files go for report and manuscript writing **(More
    info in how this works in the RMS/example.Rmd file)**

4.  Supp: Where supplementary files such as sampling or lab protocols,
    highly relevant reference papers, site maps and images, etc. go. If
    you have a lot of these, I suggest adding some additional
    organization or just making sure your file names are descriptive

5.  TS: This is where the messy data cleanup, analysis, etc. files go
    while I'm still figuring out how I want to lay things out. This way
    I'm not tempted to delete files and their associated version history
    just because I've figured out a better/neater way to write up those
    results - I can keep those messier files here while I'm testing and
    make the clean/formal files into the more "official" R/ and RMS/
    folders

Not all of my projects will have all five of these folders, and some
projects will have different folders based on the project needs, but
this is the base organization that I typically start with. The idea is
that GitHub will track changes made in R/ and TS/ for the evolution of
the data analysis process, while ignoring Data/ and Supp/ so I don't
instantly exceed the GitHub storage limits (genetic and environmental
datasets get very big), and RMS/ is ignored primarily for
confidentiality or until results are published/agreed to be made public
by collaborators.

For sending data and code to a collaborator, the repository can be
zipped and emailed (though I may not include the TS/ folder), and
ensuring the readme and other files are well-documented and reproducible
is essential. I usually include the outputted pdf of the
report/manuscript as a standalone attachment along with the zipped
folder, with brief instructions for how to open and use the zipped
folders if they want.

Feel free to post an issue if you have any questions or if I didn't
explain something well.

------------------------------------------------------------------------

(Sidenote Tip: If you are like me and have issues with how R's Git
Commit window refuses to abide by dark mode but you also are bad at
HTML, GitHub Desktop is a simple option that works well for version
control and has its own dark mode so your eyes can be comfortable the
whole time. If anyone knows a better way to stop the Commit window from
blinding me, please share)
