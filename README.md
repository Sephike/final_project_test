# final_project_test
UT McCombs Data Visualization Boot Camp Group Project
![Pic 1](https://github.com/Sephike/predict_user_score/blob/x_role/Images/video_game_controllers.jpg)
Image Source: Guinnessworldrecords<sup>3</sup>

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
6. Python 3.7.7

The starting data set will be imported into Postgres using SQL.  The appropriate password and config files will be added to access the Postgres database.  Python scripts and multiple libraries will be used in Jupyter Notebook to clean and analyze the dataset.  Specifically, the Pandas library will be used to clean the dataset and Numpy may be used for some light statistical analysis.  A basic linear regression or logistic model will be the initial machine learning model.  Visual Studio Code may be used to clean or compare python scripts or to update the markdown.  The final outputs will have an interactive display on Tableau Public and communicated through Google Slides.

### Data Exploration
✓ Takes in data in from the provisional
database
✓ Output label(s) for input data
✓ Simple statistical analysis

### Analysis using a Machine Learning Model
✓ Description of data preprocessing
✓ Description of feature engineering and the feature selection, including the team's decision-making process
✓ Description of how data was split into training and testing sets
✓ Explanation of model choice, including limitations and benefits
✓ Explanation of changes in model choice 
✓ Description of how the model was trained (or retrained if the team used an existing model)
✓ Description and explanation of model's confusion matrix, including final accuracy score

### Results and Links 
- Tableau Public links, Google Slides Link
- Images from the initial analysis
- Data (images or report) from the machine learning task
- At least one interactive element

### Recommendations

## Reference List
1. Alqunber, Abdulshaheed. (2019, April 12). Video games sales 2019. Kaggle. https://rb.gy/gtadhs

2. Clement, J. (2021, January 29). Value of the global video games market 2012-2021. Statista. https://rb.gy/apmgqy  

3. Plant, Mike. (2018, December 21). Top 10 best-selling videogame consoles. Guinnessworldrecords. https://rb.gy/df11vn

### Team Communication Protocols
The team will work virtually using the Zoom and Slack technologies.  The team is expected to use individual branches to their commit work to GitHub, where the project is warehoused.  The branches will be merged when the team meets to review each other's work.   
