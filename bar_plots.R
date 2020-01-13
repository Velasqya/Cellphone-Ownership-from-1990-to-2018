# code to make different bar plots to compare the behavior of the data 
# on cellphone ownership worldwide in the last 10 years.



library(ggplot2)


plot_base <- ggplot(data = cellown_top10, mapping = aes(x = country_name, y = value, "Millions"))


plot_base_clean <- plot_base + theme_bw() + 
theme(panel.grid.major = element_blank(), panel.grid.minor = element_blank(),
        panel.border = element_blank(),
        axis.line = element_line())

plot_base_clean

plot_base_clean + geom_bar(stat = "identity")

plot_2008 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2008), stat = "identity", aes(fill = country_name))

plot_2009 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2009), stat = "identity", aes(fill = country_name))

plot_2010 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2010), stat = "identity", aes(fill = country_name))

plot_2011 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2011), stat = "identity", aes(fill = country_name))

plot_2012 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2012), stat = "identity", aes(fill = country_name))

plot_2013 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2013), stat = "identity", aes(fill = country_name))

plot_2014 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2014), stat = "identity", aes(fill = country_name))

plot_2015 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2015), stat = "identity", aes(fill = country_name))

plot_2016 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2016), stat = "identity", aes(fill = country_name))

plot_2017 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2017), stat = "identity", aes(fill = country_name))

plot_2018 <- plot_base_clean + 
  geom_bar(data = subset(cellown_top10, year == 2018), stat = "identity", aes(fill = country_name))


plot_grid(plot_2008,plot_2009,plot_2010,plot_2011,plot_2012,plot_2013,
labes = c("2008","2009","2010","2011","2012","2013"),ncol=3,nrow=3)
