-- In this dataset we have 16 columns and 1000 rows.
SELECT count(*) as No_of_row FROM student_habits_perfromance.shp;
SELECT count(*) as No_of_Column FROM information_schema.columns WHERE table_name ='shp';

-- Now here we write a query to see what values does each column consists of so we can use those columns to gather informations.
SELECT  *, row_number() over() as Unique_id FROM student_habits_perfromance.shp order by study_hours_per_day desc;

-- In order to get the total number of students on the basis of gender we run the below query.
select gender,count(gender) from student_habits_perfromance.shp group by gender;

-- Getting the minimum values.
select min(age),min(study_hours_per_day),min(social_media_hours),min(netflix_hours),min(attendance_percentage),min(sleep_hours),min(exercise_frequency),min(mental_health_rating),min(exam_score) from student_habits_perfromance.shp;

-- Getting the maximum values.
select max(age),max(study_hours_per_day),max(social_media_hours),max(netflix_hours),max(attendance_percentage),max(sleep_hours),max(exercise_frequency),max(mental_health_rating),max(exam_score) from student_habits_perfromance.shp;

-- Getting the average values.
select avg(age),avg(study_hours_per_day),avg(social_media_hours),avg(netflix_hours),avg(attendance_percentage),avg(sleep_hours),avg(exercise_frequency),avg(mental_health_rating),avg(exam_score) from student_habits_perfromance.shp;

-- Getting the average (age,study_hours_per_day,socail_media_hours,netflix_hours,attendance_percentage,sleep_hours,exercise_frequency,mental_health_rating,exam_score) on the basis of gender.
select gender,avg(age),avg(study_hours_per_day),avg(social_media_hours),avg(netflix_hours),avg(attendance_percentage),avg(sleep_hours),avg(exercise_frequency),avg(mental_health_rating),avg(exam_score) from student_habits_perfromance.shp group by gender;

-- Getting the max (age,study_hours_per_day,socail_media_hours,netflix_hours,attendance_percentage,sleep_hours,exercise_frequency,mental_health_rating,exam_score) on the basis of gender.
select gender,max(age),max(study_hours_per_day),max(social_media_hours),max(netflix_hours),max(attendance_percentage),max(sleep_hours),max(exercise_frequency),max(mental_health_rating),max(exam_score) from student_habits_perfromance.shp group by gender;

-- Getting the min (age,study_hours_per_day,socail_media_hours,netflix_hours,attendance_percentage,sleep_hours,exercise_frequency,mental_health_rating,exam_score) on the basis of gender.
select gender,min(age),min(study_hours_per_day),min(social_media_hours),min(netflix_hours),min(attendance_percentage),min(sleep_hours),min(exercise_frequency),min(mental_health_rating),min(exam_score) from student_habits_perfromance.shp group by gender;


-- Here we 
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