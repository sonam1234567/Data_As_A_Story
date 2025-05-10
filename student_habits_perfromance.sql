SELECT * FROM student_habits_perfromance.shp order by study_hours_per_day desc;

select student_id,age,gender,netflix_hours + social_media_hours as playtime,study_hours_per_day + sleep_hours as productive_time,part_time_job,diet_quality,exercise_frequency,mental_health_rating,exam_score,sleep_hours,study_hours_per_day from student_habits_perfromance.shp order by playtime;

select student_id,gender,study_hours_per_day,exam_score from student_habits_perfromance.shp where exam_score = 100  order by study_hours_per_day desc ;

-- The query below gives us the average study hours by students whose exam_score is 100. Study hours should be 6 hours a day.
select avg(study_hours_per_day) from student_habits_perfromance.shp where exam_score = 100;

-- The sleep hour should be 7 hours a day.
select avg(sleep_hours) from student_habits_perfromance.shp where exam_score = 100;

select avg(social_media_hours) from student_habits_perfromance.shp where exam_score = 100;

select avg(netflix_hours) from student_habits_perfromance.shp where exam_score = 100;

-- Exercise should be 4 times a week.
select avg(exercise_frequency) from student_habits_perfromance.shp where exam_score = 100;

-- Netflix and social media hour should be 4 max hours.
select avg(social_media_hours + netflix_hours) from student_habits_perfromance.shp where exam_score = 100;

select avg(sleep_hours + study_hours_per_day) from student_habits_perfromance.shp where exam_score = 100;

select avg(social_media_hours) from student_habits_perfromance.shp where exam_score = 100 and diet_quality = 'good';