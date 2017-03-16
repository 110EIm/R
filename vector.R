# Vector
c(1, 2, 3)
# c(1, 2, 3 c(1, 2, 3)) # Vector can't be overlapped

# Numeral Vector using start:end
x <- 1:10
x
x <- 5:10
x
seq(1, 10, 2)

# Create vector
seq_along(c('a', 'b', 'c'))
seq_len(3)

# Give Name
x <- c(1, 3, 4)
names(x) <- c('kim', 'seo', 'park')
x

# Access Vector data
x <- c('a', 'b', 'c')
x[1]
x[3]

# Ignore specific variable
x <- c('a', 'b', 'c')
x[-1]
x[-2]

# Access 
x <- c('a', 'b', 'c')
x[c(1, 2)]
x[c(1, 3)]

x <- c('a', 'b', 'c')
x[1:2]
x[1:3]

# Set names
x <- c(1, 3, 4)
names(x) <- c('kim', 'seo', 'park')
x

# Access by name
x['seo']
x[c('seo', 'park')]
names(x)[2]