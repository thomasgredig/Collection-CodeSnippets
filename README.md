# collection-snippets

Collection of code snippets

# R

## Ordering of Factors

Factors usually order alphabetically, so you may have to order manually. For example, if you would like to order something in ascending order, you could use `reorder`:

```r
ggplot(d1, aes(reorder(x,y),y)) +
  geom_point(size=3, col='red') +
  theme_bw()
```

Here is an example graph from [factor-ordering-ggplot2.R](R/factor-ordering-ggplot2.R):

![Changing the order of the x-axis](images/factor-ordering-ggplot2.png)

## Retrieve last element of list

```r
strsplit(k, ';') -> k2
sapply(k2,tail,1)
```

## Fill list

If `n4` is a list and we want to convert it to  a matrix `n5`, we must first add empty elements to make each list element equally long, this can be done with the assignment function for `length`:

```r
n4.len = max(sapply(n4,length))
n4 = lapply(n4, 'length<-', n4.len)
matrix(unlist(n4),ncol=(n4.len)) -> n5
```


## Loading Functions


load all functions, except main.R

```r
for(q1 in dir('R', pattern='[^(main)].*\\.R$')) { source(file.path('R',q1)) }
```



# LaTeX

## Using SI units

```latex
\usepackage[output-open-uncertainty = \pm,output-close-uncertainty = ]{siunitx}
\sisetup{detect-weight=true, detect-family=true}
\DeclareSIUnit\mu{m.u.}
```

## Long Subscripts

For long subscripts, use explicit `\mathrm`:

```LaTeX
B_{\mathrm{eff}} = B_0 \left( 1-\sigma \right)
```
![Beff = B0 (1-sigma)](images/Beff.png)
