# NFL Playoffs Prediction

## Overview

Gathering data to analyze and calculate NFL passing and rushing team stats to come up with a fair assumption on which team is most likely going to make it into the playoffs for the 2022/23 season. 

Each team member has taken on a role as outlined in the module guidelines. A slack channel has been created for team members to collaborate and update each other on the status of their contribution and ask for team member input when needed.  

## Resources

Tools: Python 3, Jupyter Notebook, Pg Admin4, PostgreSQL.

Data source: [cleaned_offense](cleaned_offense.csv)
  - The origin of this dataset was pulled from [NFL Table](https://www.nfl.com/stats/team-stats/offense/passing/2021/reg/all) by web scraping. Afterwards the data was loaded into a database where we validated it and made sure it's ready for our machine learning model connection.  The database was connected to cleaned_offenseive_stats.ipynb.


## Purpose

This analysis will entail the prediction of our machine learning and report a detailed outcome and the statistical findings. The teams in our data will be classified as being playoff contenders or not, so we have decided to go with a decision tree model.

Our mockup, as shown below, contains the steps for a decision tree model. We have preprocessed the data by dropping any null rows and any columns that do not contain data suitable for the model, including non-numeric data. The decision tree model will take our data (statistics) and run through each one until the team is classified as playoffs or not. We felt this was the most appropriate model because of the step by step approach that decision trees take. The training and testing data was split into the standard 75%/25% ratio. After training and testing our data, we will analyze the confusion matrix to ensure that the accuracy is sufficient for us to move forward with the model as is.

Our target accuracy is 70%. If the model does not meet our accuracy needs, then we can test on an updated model.

![](https://github.com/WalterMarikwa/UNCC_Final_Project_Capstone/blob/kf_branch/images/model_mockup.png)
---
## Results Part 1
- Data Preprocessing: all null rows were dropped. Columns with non-numeric data were dropped since they would not be compatible with the model.
- Mostly offensive statistics chosen for feature selection chosen by the team. We decided as a team that we would use offensive statistics as the basis of our model because we predicted that these statistics greatly impacted whether teams made it to the playoffs. The target was 'playoffs' 0/1. 0 for not making the playoffs and 1 for making the playoffs
- Data was split into standard 75%/25% training and testing sets
- After testing the model on all data for teams from 2016-2021, the model gave us greater than our target, yielding 72% accuracy. With such great results, we decided to test the model with only 2021 statistics. Please see [NFL_MachineLearning](NFL_MachineLearning.ipynb) for the actual model and cofusion matrix.

## Results Part 2
- Data Preprocessing: all null rows were dropped. Columns with non-numeric data were dropped since they would not be compatible with the model.
- We kept the features the same as part 1 to determine if the model could maintain the same level of accuracy.
- Data was split into standard 75%/25% training and testing sets
- Using only 2021 season statistics, the accuracy reduced to about 65%. While 65% is lower than our target, we were still satisfied with the result. The precision results for the model was 75%. Meaning that of all teams predicted to go to the playoffs, 75% of the time the model was correct. We believe that given more statistics (a better mix of offensive as well defensive statistics) the results would become even more accurate on a yearly basis. 


## Presentation

Our presentation dashboard was made using Tableau anf Google Slides. Visualizations were made from the cleaned CSV and from the results of our machine learning model. The visualizations supports the results of our machine model in predicting which NFL teams are most likely to reach the 2022 playoffs.

<p><a href="https://docs.google.com/presentation/d/e/2PACX-1vSg-U-9dwHk_k1wFdr9XPpzWFxm01Cicvt6cRvuIo4jBsmx1vR7aQ6D1YK1qfc-0--GXfYMBODCtxY-/pub?start=false&loop=false&delayms=30000">Project Presentation</a></p>
<p><a href="https://public.tableau.com/views/NFLPlayoffsPredictions/NFLPlayoffPredictions?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link">Tableau Story</a></p>

## Visualization of teams in playoffs from 2016-2021

<div class='tableauPlaceholder' id='viz1661017224194' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;NF&#47;NFLPlayoffsPredictions&#47;NFLPlayoffPredictions&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='NFLPlayoffsPredictions&#47;NFLPlayoffPredictions' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;NF&#47;NFLPlayoffsPredictions&#47;NFLPlayoffPredictions&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='en-US' /><param name='filter' value='publish=yes' /></object></div> 
