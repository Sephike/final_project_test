# final_project_test
UT McCombs Data Visualization Boot Camp Group Project
![Pic 1](https://github.com/Sephike/predict_user_score/blob/x_role/Images/video_game_controllers.jpg)
Image Source: Guinnessworldrecords

## Quick Select
[Cleaning Data Sources](Resources/Cleaning_data_sources.ipynb)

[Final Machine Learning File](Resources/Machine_Learning_Model_final.ipynb)

[Final Video Game CSV](Resources/final_vg_data.csv)

[Tableau Public](https://public.tableau.com/profile/andrew.nuss#!/vizhome/UT_Austin_VG_Dashboard_Final/LandingPage)

[Google Slides](https://rb.gy/nbalj3)

[Entity Relationship Diagram](https://www.quickdatabasediagrams.com/)

[All Starter Files](Resources/1.Starter_Files)

[All Cleaned Files](Resources/2.Cleaned_Files)

[All Rejected Files](Resources/3.Rejected_Files)

[Final SQL](final_sql.sql)

[Technologies](technology.md)

[Speaker Notes](Speaker_Notes.txt)

## Topic Selection
In selecting a topic, the team wanted to pick a dataset that represented a common interest amongst each team member.  To varying degrees, each team member is interested in the video game industry, which has many aspects to explore such as sales, genres, platforms, rankings, and ratings.  In particular, the video game industry is on track to hit $138 billion in revenue in 2021 according to J. Clement.  With this much revenue, there is a wealth of data to be mined within the video game industry.  

## Investigative Questions and Data Sources
The investigating question is to determine the main drivers behind video game sales.  The starting dataset was sourced from Kaggle, which ultimately was came from VgChartz.com and Metacritic.com.  From running machine learning code, the team hopes to answer the following questions.

1. What is the main driver behind North American sales? Genre, ESRB Rating?
2. Does the Metascore predict higher North American sales? 
3. What is the correlation between User Scores and the MetaScores? 

## Methodology and Technologies Used 
Visual Studio Code was used to clean or compare python scripts as needed and was used to update the markdown. Python scripts and multiple libraries were used in Jupyter Notebook to clean and analyze the dataset. Specifically, the Pandas library was used to clean the dataset. After the data files were cleaned, they were imported into Postgres using SQL, and then combined with SQL joins.  The appropriate password and config files were added for Jpyter Notebook to access the Postgres database.  Using several libraries, basic linear regressions were the initial machine learning models to gain insights.

To summarize the findings, the joined dataset was exported from PgAmin and imported into Tableau Public.  The final outputs have an interactive display on [Tableau Public](https://public.tableau.com/profile/andrew.nuss#!/vizhome/UT_Austin_VG_Dashboard_Final/LandingPage) and is communicated through [Google Slides](https://rb.gy/nbalj3). Using an entity relationship diagram [website](https://www.quickdatabasediagrams.com/), the ERD shows the dataset columns and how the joins were made.  

![Final ERD](https://github.com/Sephike/predict_user_score/blob/main/Images/final_ERD.png)

## Data Exploration 
### Cleaned DataFrame
About six files were explored and [cleaned](Resources/2.Cleaned_Files) in jupyter notebook before reaching the the three final files ready to be merged.  Three of the files were [rejected](Resources/3.Rejected_Files) after dropping NaN values and leaving an insufficient amount of data to analyze. After running into issues while attempitng to import the files using [pgadmin](final_sql.sql), three files were suitable for [analysis](Resources/final_vg_data.csv).

![Final sql Table List](https://github.com/Sephike/predict_user_score/blob/main/Images/final_SQL_table_list.PNG)

To prevent potential bias, the duplicates of the game's name were dropped. To make the joins successful, the name columns were made as all uppercased letters.  After the final cleaning of the three datasets, SQL was used to import and left join the files, leaving about 1400 rows of clean and useful data. 

## Machine Learning
### Preprocessing and Feature Selection
The description of the preliminary data preprocessing was to create the get_dummies() function, which was used to convert the categorical variable into dummy/indicator variables. After successfully dropping the Genre columns from the model, the Metascore data was then divided by 10 to be in the same scale with the critic score and user score. 

### Simple statistical analysis
- View global sales across regional sales
- View how critic and user score might impact sales
- A pairplot was created using the seaborn library to show the correlation of each columns. 
![Machine Learning Model 2](https://github.com/Sephike/predict_user_score/blob/main/Images/Machine_Learning_Model_2.png)

### Model Choice
The desired output for the model was a number, making a regression model the best fit. After exploring several linear regression models based on different variables, the two models that gave the most interesting results are listed below. In the early phase, linear regression was a quick way to test different variables against each other. Using a more complex machine learning model, the next model explored was the Random Forest Regressor and XGBoost.

### Splitting the Data
In the linear regression models, the x and y variables were split into training and testing sets.  Metascore was the x for two of the linear regression models and crossed it against the y variables represented by the North American Sales for the first one and Userscore for the second one.  For the Random Forest Regressor and the XGBoost models, x and y were split into training and testing sets. The x variable used these columns: E, E10, M, RP, T, Action, Adventure, Fighting, Misc, Platform, Puzzle, Racing, Role-Playing, Shooter, Simulation, Sports, and Strategy. The y variable used NA Sales to determine if the genres and ESRB ratings changed sales in the highest grossing region. 

![Metascore Scaled](https://github.com/Sephike/predict_user_score/blob/main/Images/metascore_scaled.png)

A linear regression model was created to show the Metascore into Plot Scatter.

![User Score Metascore](https://github.com/Sephike/predict_user_score/blob/main/Images/User_score_Metascore.png)


### Limitations and Benefits
Using linear regression has a limitation of comparing two variables. In an early analysis, the benefit of linear regression is quickly comparing relationships between two variables. The benefit of using the random forest regressor is it allows to analyze more variables. However, the time it takes to dial in on the optimization of the model is the main limiting factor.  XGBoost has an efficient algorithm, but it requires a stronger math background needed to interpret the results. 

## Results
### Metascore vs NA Sales Linear Regression
The model presents the variance score: 1 is perfect prediction and shows the mean squared error.

![Mean Variance Score for Metascore and NA Sales](https://github.com/Sephike/predict_user_score/blob/main/Images/mean_variance_score.png)

### Metascore vs Userscore Linear Regression

For the second linear regression model comparing the Metascore and the Userscore, the scores were improved, but would not be accepted as a good model due to the low variance.  

![Mean Variance Score for Metascore and Userscore](https://github.com/Sephike/predict_user_score/blob/main/Images/linear_meta_user.png)

### Random Forest Regressor
For the Random Forest Regressor, the data was split into X and y, then X_train, y_train, X_test, and y_test. The genre dummies and esrb rating dummies were used to test if they made an impact on NA Sales. The data looked best using a n estimator of 10, which is not a strong number of iterations to rigorously test the data.  The results of n = 100 are shown below. 

![Random Forest Regressor Results](Images/random_forest_score.png)


### XGBoost 
![XGBoost Results](Images/xgboost_results.PNG)


### Future models to Explore
Looking at the machine learning models available, the next model that fits the data and would be a good model to explore is the Cluster Centroid model.  

## Recommendations
Looking at the accuracy of the models, the linear regression models had good mean squared error but a poor variance score. Because looking at two variables is limiting, using the random forest regressor added in ESRB rating and Genre expanded the model. Due to the low accuracy of the random forest model, it is recommended to add more columns such as: budget for games, developement time, and number of QA testing. In the data cleaning phase, more columns of data would allow for more experimenting, like dropping columns which could greatly improve accuarcy.
