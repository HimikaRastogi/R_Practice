# Box office Star Wars: In Millions (!) 
# Construct matrix 
box_office_all <- c(461, 314.4, 290.5, 247.9, 309.3, 165.8)
movie_names <- c("A New Hope","The Empire Strikes Back","Return of the Jedi")
col_titles <- c("US","non-US")
star_wars_matrix <- matrix(box_office_all, nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles))
ticket_prices_matrix <- matrix(c(5, 5, 6, 6, 7, 7), nrow = 3, byrow = TRUE, dimnames = list(movie_names, col_titles)) 

# Estimated number of visitors
visitors <- star_wars_matrix / ticket_prices_matrix

# Average number of US visitors
average_us_visitors <- mean((star_wars_matrix[,1]) / (ticket_prices_matrix[,1]))

# Average number of non-US visitors
average_non_us_visitors <- mean((star_wars_matrix[,2]) / (ticket_prices_matrix[,2]))

# Assign to the variable 'theory' what this chapter is about!
theory <- "R uses factors for categorical variables!"

gender_vector <- c("Male", "Female", "Female", "Male", "Male")

# Define factor_gender_vector using 'factor()'
factor_gender_vector <- factor(gender_vector)

animals_vector <- c("Elephant", "Giraffe", "Donkey", "Horse")
temperature_vector <- c("High", "Low", "High","Low", "Medium")

factor_animals_vector <- factor(animals_vector)
factor_animals_vector
factor_temperature_vector <- factor(temperature_vector, order = TRUE, levels = c("Low", "Medium", "High"))
factor_temperature_vector

speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast") 

# Add code below to order and give level to the factor
factor_speed_vector <-  factor(speed_vector, ordered=TRUE, levels = c("Slow","Fast","Ultra-fast"))
factor_speed_vector
summary(factor_speed_vector) 

speed_vector <- c("Fast", "Slow", "Slow", "Fast", "Ultra-fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("Slow", "Fast", "Ultra-fast"))

# Your code below
compare_them <- factor_speed_vector[2] > factor_speed_vector[5] 

# Is data analyst 2 faster than data analyst 5?
compare_them