## factors, order them non-alphabetically
library(ggplot2)
library(cowplot)
path.FIGS = '../images'

x = seq(from=1, to=12, by=1)
l1 = length(x)
y = 1:l1
d = data.frame(x,y)
d$z = 1:nrow(d)
d = rbind(d, data.frame(x='A',y=max(y), z=max(d$z)+1))
s = order(runif(l1+1))

d1 = d[s,]
d1


p1= ggplot(d1, aes(x,y)) +
  geom_point(size=3, col='red') +
  ggtitle('before reordering') +
  theme_bw()

p2 = ggplot(d1, aes(reorder(x,z),y)) +
  geom_point(size=3, col='red') +
  ggtitle('after reordering') +
  theme_bw()

plot_grid(p1,p2)
ggsave2(file.path(path.FIGS,'factor-ordering-ggplot2.png'),
        width=6,height=4,dpi=200)
