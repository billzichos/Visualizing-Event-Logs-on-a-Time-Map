df <- read.csv("application_event_logs.csv", header = FALSE, skip = 1, col.names = c("Level", "DateTime", "Source", "EventID", "TaskCategory", "Description"), colClasses = c("character", "character", "character", "integer", "character", "character"), sep = ",", quote = "\"")

df$DateTime <- as.POSIXlt(df$DateTime, tz = "EST", format = "%m/%d/%Y %H:%M:%S %p")
df$Level <- as.factor(df$Level)

summary(df)
