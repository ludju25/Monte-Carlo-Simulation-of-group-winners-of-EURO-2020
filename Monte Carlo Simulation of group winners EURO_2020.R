#Grupe na prvenstvu od A do F

#Group A: Italy, Wales, Switzerland, Turkey
#Group B: Belgium, Russia, Finland, Denmark
#Group C: Netherlands, Ukraine, Austria, Republic of North Macedonia
#Group D: England, Czech Republic, Croatia, Scotland
#Group E: Sweden, Slovakia, Spain, Poland
#Group F: France, Germany, Portugal, Hungary

#Želimo prognozirati ishod svake grupe tj. koja æe reprezentacija osvojiti grupu

set.seed(2)

vjerojatnostA <- c(6/10, 1/10, 1/10, 2/10) 

vjerojatnostB <- c(5/10, 2/10, 1/10, 2/10)

vjerojatnostC <- c(7/10, 1.5/10, 1/10, 0.5/10)

vjerojatnostD <- c(5/10, 1.5/10, 3/10, 0.5/10)

vjerojatnostE <- c(1/10, 0.5/10, 7/10, 1.5/10)

vjerojatnostF <- c(4/10, 3/10, 2/10, 1/10)

Group_A <- c("Italy", "Wales", "Switzerland", "Turkey")

Group_B <- c("Belgium", "Russia", "Finland", "Denmark")

Group_C <- c("Netherlands", "Ukraine", "Austria", "Republic of North Macedonia")

Group_D <- c("England", "Czech Republic", "Croatia", "Scotland")

Group_E <- c("Sweden", "Slovakia", "Spain", "Poland")

Group_F <- c("France", "Germany", "Portugal", "Hungary")


plasmanA <- sample(Group_A, 
                   replace=TRUE, 
                   size= 1000)
plasmanA_vjerojatnost <- sample(Group_A, 
                                prob= vjerojatnostA, 
                                replace=TRUE, 
                                size= 1000)

plasmanB <- sample(Group_B, 
                   replace=TRUE, 
                   size= 1000)
plasmanB_vjerojatnost <- sample(Group_B, 
                                prob= vjerojatnostB, 
                                replace=TRUE, 
                                size= 1000)

plasmanC <- sample(Group_C, 
                   replace=TRUE, 
                   size= 1000)
plasmanC_vjerojatnost <- sample(Group_C, 
                                prob= vjerojatnostC, 
                                replace=TRUE, 
                                size= 1000)

plasmanD <- sample(Group_D, 
                   replace=TRUE, 
                   size= 1000)
plasmanD_vjerojatnost <- sample(Group_D, 
                                prob= vjerojatnostD, 
                                replace=TRUE, 
                                size= 1000)

plasmanE <- sample(Group_E, 
                   replace=TRUE, 
                   size= 1000)
plasmanE_vjerojatnost <- sample(Group_E, 
                                prob= vjerojatnostE, 
                                replace=TRUE, 
                                size= 1000)

plasmanF <- sample(Group_F, 
                   replace=TRUE, 
                   size= 1000)
plasmanF_vjerojatnost <- sample(Group_F, 
                                prob= vjerojatnostF, 
                                replace=TRUE, 
                                size= 1000)

barplot(table(plasmanA),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group A")

barplot(table(plasmanA_vjerojatnost),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group A with probability")

barplot(table(plasmanB),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group B")

barplot(table(plasmanB_vjerojatnost),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group B with probability")

barplot(table(plasmanC),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group C")

barplot(table(plasmanC_vjerojatnost),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group C with probability")

barplot(table(plasmanD),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group D")

barplot(table(plasmanD_vjerojatnost),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group D with probability")

barplot(table(plasmanE),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group E")

barplot(table(plasmanE_vjerojatnost),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group E with probability")

barplot(table(plasmanF),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group F")

barplot(table(plasmanF_vjerojatnost),  
        ylim = c( 0, 1000 ),
        ylab= "Number of group winnings",
        xlab= "Names",
        col = "yellow",
        col.main = "red",
        col.lab = "blue" ,
        main = "Group F with probability")

EP <- data.frame(
        country = c("Italy", "Wales", "Switzerland", "Turkey",
                    "Belgium", "Russia", "Finland", "Denmark",
                    "Netherlands", "Ukraine", "Austria", "Republic of North Macedonia",
                    "England", "Czech Republic", "Croatia", "Scotland",
                    "Sweden", "Slovakia", "Spain", "Poland",
                    "France", "Germany", "Portugal", "Hungary"),
        group = c(rep("A", 4), rep("B", 4), rep("C", 4), rep("D", 4), rep("E", 4), rep("F", 4)),
        stringsAsFactors = FALSE
)


print(EP)

write.csv(EP, file= "EP.csv", row.names = FALSE)
