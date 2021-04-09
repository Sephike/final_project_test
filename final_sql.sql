-- Create and import Critic Score file
CREATE TABLE Critic_Score (
	Name VARCHAR(300) NOT NULL,
   	Genre VARCHAR(50) NOT NULL,
	Publisher VARCHAR(50) NOT NULL,
	ESRB_Rating VARCHAR(12) NOT NULL,
	Developer VARCHAR(300) NOT NULL,	
	Critic_Score FLOAT NOT NULL,	
	Primary Key (Name)
);
SELECT * FROM Critic_Score

-- Create and import Metacritic file
CREATE TABLE  User_score (
	Metascore FLOAT NOT NULL,
   	Name VARCHAR(300) NOT NULL,
   	Console VARCHAR(50) NOT NULL,
	UserScore FLOAT NOT NULL,
	Date DATE NOT NULL,
	Primary Key (Name)
);

SELECT * FROM User_Score

-- Create and import Video Game Sales file
CREATE TABLE video_game_sales (
	Rank FLOAT NOT NULL,
   	Name VARCHAR(300) NOT NULL,
   	Year DATE NOT NULL,
	Genre VARCHAR(50) NOT NULL,
    NA_Sales FLOAT NOT NULL,	
	EU_Sales FLOAT NOT NULL,	
	JP_Sales FLOAT NOT NULL,	
	Other_Sales FLOAT NOT NULL,	
	Global_Sales FLOAT NOT NULL,
	Primary Key (Name)
);
SELECT * FROM video_game_sales

-- Joining video game sales and critic score
CREATE TABLE vg_critic_join AS(
SELECT video_game_sales.Rank,
     video_game_sales.Name,
	 video_game_sales.Year,
	 video_game_sales.Genre,
     video_game_sales.NA_Sales,
     video_game_sales.EU_Sales,
	 video_game_sales.JP_Sales,
	 video_game_sales.Other_Sales,
	 video_game_sales.Global_Sales,
	 critic_score.Critic_Score,
	 critic_score.ESRB_Rating
FROM video_game_sales
LEFT JOIN Critic_Score 
ON video_game_sales.Name = Critic_Score.Name
	);

SELECT * FROM vg_critic_join

-- Joining vg_critic_join and user score
CREATE TABLE final_vg_data AS(
SELECT vg_critic_join.Rank,
     vg_critic_join.Name,
	 vg_critic_join.Year,
	 vg_critic_join.Genre,
     vg_critic_join.NA_Sales,
     vg_critic_join.EU_Sales,
	 vg_critic_join.JP_Sales,
	 vg_critic_join.Other_Sales,
	 vg_critic_join.Global_Sales,
	 vg_critic_join.Critic_Score,
	 vg_critic_join.ESRB_Rating,
	 user_score.UserScore,
	 user_score.Metascore
FROM vg_critic_join
LEFT JOIN User_Score 
ON vg_critic_join.Name = User_Score.Name
	);
SELECT * FROM final_vg_data

