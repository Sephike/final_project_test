# final_project_test
UT McCombs Data Visualization Boot Camp Group Project
![Pic 1](https://github.com/Sephike/predict_user_score/blob/x_role/Images/video_game_controllers.jpg)
Image Source: Guinnessworldrecords

## Topic Selection
In selecting a topic, the team wanted to pick a dataset that represented a common interest amongst each team member.  To varying degrees, each team member is interested in the video game industry, which has many aspects to explore such as sales, genres, platforms, rankings, and ratings.  In particular, the video game industry is on track to hit $138 billion in revenue in 2021 according to J. Clement.  With this much revenue, there is a wealth of data to be mined within the video game industry.  

## Investigative Questions and Data Sources
The investigating question is to determine the main drivers behind global video game sales.  The starting dataset was sourced from Kaggle with data representing over 55,000 video games sales from 2019.  Depending on the output from the machine learning model, other follow up questions are listed.  

1. What is the main drivers behind North American sales? Genre, ESRB Rating?
2. Does the Metascore predict higher North American sales? 
3. What is the correlation between User Scores and the MetaScore? 

## Methodology and Technologies Used 
The starting data set will be imported into Postgres using SQL. The appropriate password and config files will be added to access the Postgres database. Python scripts and multiple libraries will be used in Jupyter Notebook to clean and analyze the dataset. Specifically, the Pandas library will be used to clean the dataset and Numpy may be used for some light statistical analysis. A basic linear regression or logistic model will be the initial machine learning model. Visual Studio Code may be used to clean or compare python scripts or to update the markdown. The final outputs will have an interactive display on [Tableau Public](https://public.tableau.com/profile/andrew.nuss#!/vizhome/UT_Austin_VG_Dashboard_Final/LandingPage) and communicated through [Google Slides](https://rb.gy/nbalj3). Using an entity relationship diagram [website](https://www.quickdatabasediagrams.com/) we made an erd to show our dataset columns and how we planned to join them.

![Final ERD](https://github.com/Sephike/predict_user_score/blob/main/Images/final_ERD.png)

## Data Exploration 
### Cleaned DataFrame
We had explored and [cleaned](Resources/2.Cleaned_Files) about six files in jupyter notebook before reaching the the three we merged together to make our final csv. Three of our files had been rejected due to high NaN values we could not properly utilize the files are [here](Resources/3.Rejected_Files). We also ran into many problems with importing files using [pgadmin](final_sql.sql), and this was a contributor to what data we used in the [end](Resources/final_vg_data.csv).

![Final sql Table List](https://github.com/Sephike/predict_user_score/blob/main/Images/final_SQL_table_list.PNG)

After final cleaning our three datasets in sql, and left joining them we were left with about 1400 rows of very clean and useful data. To prevent many uses such as duplicates of names and the potential bias that may give to a game, we dropped the duplicates. We started this process first by making all name columns upper cased, after we dropped the duplicates and resorted all the names appropiately.

## Machine Learning
### Preprocessing and Feature Selection
The description of the preliminary data preprocessing was to create the get_dummies() function, Which is used to convert categorical variable into dummy/indicator variables. After successfully dropping the columns Genre. From the model the Metascore data was divided by 10 to be in the same scale with the critic score and user score. 

### Simple statistical analysis
- View global sales across regional sales
- View how critic and user score might impact sales
- A pairplot was created using the seaborn library to show the correlation of each columns. 
![Machine Learning Model 2](https://github.com/Sephike/predict_user_score/blob/main/Images/Machine_Learning_Model_2.png)

### Splitting the Data
In the first two models splitting the data was not necessary. However, when looking at the Random Forest Regressor, we needed to split the x and y into training and testing sets. For the x variable, we used columns: E, E10, M, RP, T, Action, Adventure, Fighting, Misc, Platform, Puzzle, Racing, Role-Playing, Shooter, Simulation, Sports, and Strategy. For the y variable, we used NA Sales to determine if the genres and ESRB ratings changed sales in the highest grossing region. 

![Metascore Scaled](https://github.com/Sephike/predict_user_score/blob/main/Images/metascore_scaled.png)

A linear regression model was created to show the Metascore into Plot Scatter.

![User Score Metascore](https://github.com/Sephike/predict_user_score/blob/main/Images/User_score_Metascore.png)

### Model Choice
The desired output for the model is a number, making a regression model the best fit. We explored several linear regression models based on different variables. The two models that gave the most interesting results are listed below. In the early phase linear regression was a quick way to test different variables against each other. Using a more complex machine learning model, the next model explored was the Random Forest Regressor. 

### Limitations and Benefits
Using linear regression has a limitation of comparing two variables. In an early analysis, the benefit of linear regression is quickly comparing relationships between two variables. The benefit of using the random forest regressor is it allows to analyze more variables. However, the time it takes to dial in on the optimization of the model is the main limiting factor.

## Results
### Metascore vs NA Sales Linear Regression
The model presents the variance score: 1 is perfect prediction and shows the mean squared error.

![Mean Variance Score](https://github.com/Sephike/predict_user_score/blob/main/Images/mean_variance_score.png)

### Metascore vs Userscore Linear Regression

We made another linear regression looking at how to metascore compares to the userscore. The scores we got were not horrible but could have been much better, this is where we started to realize how limited our data was in terms or exploration.

### Random Forest Regressor
Last model we made we used a random forest regressor and split the data into X and y then to X_train, y_train, X_test, and y_test. We used the genre dummies and esrb rating dummies, to test if they made an impact on NA Sales. The data looked best using a n estimator of 10, which is not a strong number of iterations to rigorously test the data.

### Future models to Explore
Looking at the machine learning models avaiable, we would like to explore Cluster Centroid and or XGboost next.

## Recommendations
Looking at the accuracy of the models, the linear regression models had good mean squared error but a poor variance score. Because looking at two variables is limiting, using the random forest regressor added in ESRB rating and Genre expanded the model. Due to the low accuracy of the random forest model, it is recommended to add more columns such as: budget for games, developement time, and number of QA testing. In the data cleaning phase, more columns of data would allow for more experimenting, like dropping columns which could greatly improve accuarcy.
