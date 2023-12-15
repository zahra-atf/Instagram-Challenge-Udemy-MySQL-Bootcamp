
-- Instagram Challenge #1

-- We want to reward our users who have been around the longest.
-- Find the 5 oldest users.

SELECT
	id, 
	username,
	created_at
FROM
	users
ORDER BY
	created_at
LIMIT 5;


-- Instagram Challenge #2

-- We need to figure out when to schedule an ad compgain to Facebook
-- What day of the week do most users register on?

SELECT
	DAYNAME(created_at) AS ad_day,
	COUNT(*) AS counts
FROM
	users
GROUP BY
	ad_day
ORDER BY
	counts DESC
LIMIT 2;


-- Instagram Challenge #3

-- We want to target our inactive users with an email campaign.
-- Find the users who have never posted a photo

SELECT
	users.id,
	username
FROM
	users
LEFT JOIN photos
ON
	users.id = photos.user_id
WHERE
	photos.id IS NULL;


-- Instagram Challenge #4

-- We're running a new contest to see who can get the most likes on a single photo.
-- Who won??

SELECT
	photos.id,
	image_url,
	username,
	COUNT(likes.user_id) AS total_like
FROM
	users
JOIN 
photos ON
	users.id = photos.user_id
JOIN likes ON
	photos.id = likes.photo_id
GROUP BY
	photos.id,
	username,
	likes.photo_id
ORDER BY
	total_like DESC
LIMIT 1;


-- Instagram Challenge #5

-- Our investors want to know how many times does the average user post?

SELECT
	(
	SELECT
		COUNT(id)
	FROM
		photos) / (
	SELECT
		COUNT(id)
	FROM
		users) AS avg_post;


-- Instagram Challenge #6

-- A brand wants to know which hashtags to use in a post
-- What are the top 5 most commonly used hashtags?
	
SELECT
	tag_name,
	COUNT(*) AS tag_total
FROM
	tags
JOIN photo_tags ON
	tags.id = photo_tags.tag_id
GROUP BY
	tag_id
ORDER BY
	tag_total DESC
LIMIT 5;


-- Instagram Challenge #7

-- We have a small problem with bots on our site
-- Find users who have liked every single photo on the site

SELECT
	username,
	user_id,
	COUNT(photo_id) AS total_like
FROM
	users
JOIN likes ON
	users.id = likes.user_id
GROUP BY
	user_id
HAVING
	total_like = (
	SELECT
		COUNT(photos.id)
	FROM
		photos);
	





























