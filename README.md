# final_project_test
UT McCombs Data Visualization Boot Camp Group Project
![Pic 1](https://github.com/Sephike/predict_user_score/blob/x_role/Images/video_game_controllers.jpg)
Image Source: Guinnessworldrecords<sup>4</sup>

## Topic Selection
In selecting a topic, the team wanted to pick a dataset that represented a common interest amongst each team member.  To varying degrees, each team member is interested in the video game industry, which has many aspects to explore such as sales, genres, platforms, rankings, and ratings.  In particular, the video game industry is on track to hit $138 billion in revenue in 2021 according to J. Clement<sup>2</sup>.  With this much revenue, there is a wealth of data to be mined within the video game industry.  

## Investigative Questions and Data Sources
The investigating question is to determine the main drivers behind global video game sales.  The starting dataset was sourced from Kaggle<sup>1</sup> with data representing over 55,000 video games sales from 2019.  Depending on the output from the machine learning model, other follow up questions are listed.  

1. What is the main drivers behind global sales?  Platform, Genre, ESRB Rating, User Score, Critic Score?
2. Does the User Score predict higher global sales by Platform? 
3. What is the correlation between User Scores and the Critic Score by Genre? 
4. What is the correlation between User Scores and the Critic Score by ESRB Rating? 

## Methodology and Technologies Used
### Data Environment and Technologies 
1. GitBash 2.28.0 
2. Ipykernel 5.3.4
3. Jupyter Notebook 6.1.4 
4. Numpy 1.19.3
5. Pandas 1.1.4
6. PgAdmin 5.0 
7. Python 3.7.7

The starting data set will be imported into Postgres using SQL.  The appropriate password and config files will be added to access the Postgres database.  Python scripts and multiple libraries will be used in Jupyter Notebook to clean and analyze the dataset.  Specifically, the Pandas library will be used to clean the dataset and Numpy may be used for some light statistical analysis.  A basic linear regression or logistic model will be the initial machine learning model.  Visual Studio Code may be used to clean or compare python scripts or to update the markdown. The final outputs will have an interactive display on Tableau Public and communicated through Google Slides<sup>4</sup>. Using an entity relationship diagram [website](https://www.quickdatabasediagrams.com/) we made an erd to show our dataset columns and how we planned to join them.

## Database Integration
- Database stores static data for use during the project
- Database interfaces with the project in some format (e.g., scraping updates the database)
- Includes at least two tables (or collections, if using MongoDB)
- Includes at least one join using the database language (not including any joins in Pandas)
- Includes at least one connection string (using SQLAlchemy or PyMongo)

## Data Exploration 
### Cleaned DataFrame
![Pic 2](https://github.com/Sephike/predict_user_score/blob/square_role/Images/cleanedDF.png)
We had explored and cleaned about six files in jupyter notebook before reaching the the three we merged together to make our final csv. Three of our files had been rejected due to high NaN values we could not properly utilize. We also ran into many problems with importing files using pgadmin, and this was a contributor to what data we used in the end.

![Final sql Table List](https://github.com/Sephike/predict_user_score/blob/main/Images/final_SQL_table_list.PNG)

After final cleaning our three datasets in sql, and left joining them we were left with about 1400 rows of very clean and useful data. To prevent many uses such as duplicates of names and the potential bias that may give to a game we dropped the duplicates. We started this process first by making all name columns upper cased, after we dropped the duplicates and resorted all the names appropiately.

![Final 1st Join](https://github.com/Sephike/predict_user_score/blob/main/Images/final_1st_join.PNG)
![Final 2nd Join](https://github.com/Sephike/predict_user_score/blob/main/Images/final_2nd_join.PNG)

## Machine Learning
### Preprocessing and Feature Selection
The description of the preliminary data preprocessing was to create the get_dummies() function, Which is used to convert categorical variable into dummy/indicator variables. After successfully dropping the columns Genre. From the model the Metascore data was divided by 10 in order to be in the same scale with the critic score and user score. 

![Metascore Scaled](https://github.com/Sephike/predict_user_score/blob/main/Images/metascore_scaled.png)

A linear regression model was created to show the Metascore into Plot Scatter.

![User Score Metascore](https://github.com/Sephike/predict_user_score/blob/main/Images/User_score_Metascore.png)

A pairplot was created the dataFrame columns, to show the correlation of each columns. 

![Machine Learning Model 2](https://github.com/Sephike/predict_user_score/blob/main/Images/Machine_Learning_Model_2.png)

The model presents the variance score: 1 is perfect prediction and shows the mean squared error.

![Mean Variance Score](https://github.com/Sephike/predict_user_score/blob/main/Images/mean_variance_score.png)

### Simple statistical analysis
- View global sales across regional sales
- View how critic and user score might impact sales

## Analysis using a Machine Learning Model
- Description of preliminary data preprocessing
- Description of preliminary feature engineering and preliminary feature selection, including the decision-making process
- Description of how data was split into training and testing sets
- Explanation of model choice, including limitations and benefits
✓ Description of data preprocessing
✓ Description of feature engineering and the feature selection, including the team's decision-making process
✓ Description of how data was split into training and testing sets
✓ Explanation of model choice, including limitations and benefits
✓ Explanation of changes in model choice 
✓ Description of how the model was trained (or retrained if the team used an existing model)
✓ Description and explanation of model's confusion matrix, including final accuracy score

## Results and Links 
- Tableau Public links, Google Slides Link
- Images from the initial analysis
- Data (images or report) from the machine learning task
- At least one interactive element

## Recommendations

## Reference List
1. Alqunber, Abdulshaheed. (2019, April 12). Video games sales 2019. Kaggle. https://rb.gy/gtadhs

2. Clement, J. (2021, January 29). Value of the global video games market 2012-2021. Statista. https://rb.gy/apmgqy  

3. Marketing. (2021). Retro Video Games Newsletter. Slidesgo. https://rb.gy/if1nnk

4. Plant, Mike. (2018, December 21). Top 10 best-selling videogame consoles. Guinnessworldrecords. https://rb.gy/df11vn


## Team Communication Protocols
The team will work virtually using the Zoom and Slack technologies.  The team is expected to use individual branches to their commit work to GitHub, where the project is warehoused.  The branches will be merged when the team meets to review each other's work.   
