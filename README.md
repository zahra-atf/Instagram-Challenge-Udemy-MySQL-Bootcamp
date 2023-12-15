## Instagram-Challenge-Udemy-MySQL-Bootcamp

# Social Media Database Schema

This repository contains the database schema for a social media platform. The schema is designed to handle user information, photos, comments, likes, follows, tags, and their relationships. Below is a breakdown of the tables and their structures:

## Tables

### Users
- **Columns**:
    - `id`: Unique identifier for each user (Auto Incremented)
    - `username`: User's unique username (255 characters, Not Null, Unique)
    - `created_at`: Timestamp for user creation (Default: Current Timestamp)

### Photos
- **Columns**:
    - `id`: Unique identifier for each photo (Auto Incremented)
    - `image_url`: URL pointing to the image (255 characters, Not Null)
    - `user_id`: Foreign key referencing the Users table (Not Null)
    - `created_at`: Timestamp for photo creation (Default: Current Timestamp)

### Comments
- **Columns**:
    - `id`: Unique identifier for each comment (Auto Incremented)
    - `comment_text`: Text content of the comment (255 characters, Not Null)
    - `photo_id`: Foreign key referencing the Photos table (Not Null)
    - `user_id`: Foreign key referencing the Users table (Not Null)
    - `created_at`: Timestamp for comment creation (Default: Current Timestamp)

### Likes
- **Columns**:
    - `user_id`: Foreign key referencing the Users table (Not Null)
    - `photo_id`: Foreign key referencing the Photos table (Not Null)
    - `created_at`: Timestamp for like creation (Default: Current Timestamp)
    - **Primary Key**: Composite key using user_id and photo_id to prevent duplicate likes

### Follows
- **Columns**:
    - `follower_id`: Foreign key referencing the Users table (Not Null)
    - `followee_id`: Foreign key referencing the Users table (Not Null)
    - `created_at`: Timestamp for follow relationship creation (Default: Current Timestamp)
    - **Primary Key**: Composite key using follower_id and followee_id to prevent duplicate follows

### Tags
- **Columns**:
    - `id`: Unique identifier for each tag (Auto Incremented)
    - `tag_name`: Name of the tag (255 characters, Unique)
    - `created_at`: Timestamp for tag creation (Default: Current Timestamp)

### Photo_Tags
- **Columns**:
    - `photo_id`: Foreign key referencing the Photos table (Not Null)
    - `tag_id`: Foreign key referencing the Tags table (Not Null)
    - **Primary Key**: Composite key using photo_id and tag_id to relate photos with tags

## Relationships
- **Users**:
    - Photos: One-to-Many relationship (One user can have many photos)
    - Comments: One-to-Many relationship (One user can make many comments)
    - Likes: One-to-Many relationship (One user can like many photos)
    - Follows: Many-to-Many relationship (Users can follow other users)

- **Photos**:
    - Comments: One-to-Many relationship (One photo can have many comments)
    - Likes: One-to-Many relationship (One photo can have many likes)
    - Tags: Many-to-Many relationship (Photos can have multiple tags)

This repository contains SQL solutions for various analytics challenges faced by Instagram. Each challenge provides SQL queries to solve specific problems. Below is a brief overview of each challenge and its corresponding SQL solution:

#### Challenge #1: Finding Oldest Users
Identifies the 5 oldest users based on their registration date.

![challenge1](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/dca86077-b91c-41a9-99a5-1cdc9cde7836)

#### Challenge #2: Determining Popular Registration Days
Finds the day of the week when most users tend to register on the platform.

![challenge2](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/32e055e7-29bc-4d6e-8812-29b88ae0271f)

#### Challenge #3: Targeting Inactive Users
Identifies users who have never posted a photo on the platform.

![challenge3](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/28db1eba-de92-4525-ae4c-8bd0bf27c21f)

#### Challenge #4: Contest Winner - Most Liked Photo
Determines the user who received the most likes on a single photo.

![challenge4](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/4c47bb34-2e3a-4e3c-a3a7-3a7a8b6a7abe)

#### Challenge #5: Average User Posts
Calculates the average number of posts per user on the platform.

![challenge5](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/b06e9117-eec6-4acc-94c8-d47acd6accbf)

#### Challenge #6: Top 5 Commonly Used Hashtags
Finds the top 5 most commonly used hashtags in posts.

![challeng6](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/a46f10de-686f-4d6c-9541-8fc88976cfd5)

#### Challenge #7: Identifying Potential Bots
Identifies users who have liked every single photo on the platform, potentially indicating bot behavior.

![challeng7](https://github.com/zahra-atf/Instagram-Challenge-Udemy-MySQL-Bootcamp/assets/21101529/20c3ba10-be69-499d-b71f-88de1d90f8eb)

