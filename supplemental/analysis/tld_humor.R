tlds <- c('.biz', '.org', '.wtf', '.diamonds', '.ninja')
means <- c(78,  37,      86,     214,         135)
stds <- c( 32,  14,      37,     64,          14)
n <- 87

id = c()
x = c()
df = data.frame(id, x)
for (i in 1:length(tlds)) {
  x <- rnorm(n = n, mean=means[i], sd=stds[i])
  id <- rep(tlds[i], n)
  df <- rbind(df, data.frame(id, x))
}

filename <- 'gtld_humor_response.png'
png(filename = filename, width = 800, height = 600, units = "px")
boxplot(x~id, data = df, main = "Observed gTLD Amusement Response",
        xlab = "gTLD", ylab = "millichortles per impression",
        res = 300)
dev.off()