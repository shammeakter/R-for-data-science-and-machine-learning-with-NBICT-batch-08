# Demonstration of CLT

# Generate 10000 numbers of uniform distribution

r<- runif(10000)

hist(r)

meanr <- mean(r)
sdr <- sd(r)

# Draw three  random samples from the distribution

samples1 <- sample(r,4)
samples2 <- sample(r,4)
samples3 <- sample(r,4)


mean(samples1)
mean(samples2)
mean(samples3)


# it is impossible to calculate sample like above 
# that"s why we use R

#Run a for loop

cl4 <- mean(sample(r,4))

for (i in 1:1000) {
  cl4 <- c(cl4, mean(sample(r,4)))
}

#insert this data to histogram
hist(cl4 )

cl10 <- mean(sample(r,10))

# take 10 sample among 1000 population

for (i in 1:1000) {
  cl10 <- c(cl10, mean(sample(r,10)))
}

#insert this data to histogram
hist(cl10 )

# take 10 sample among 1000 population

cl100 <- mean(sample(r,100))

for (i in 1:1000) {
  cl100 <- c(cl10, mean(sample(r,100)))
}

#insert this data to histogram
hist(cl100)
