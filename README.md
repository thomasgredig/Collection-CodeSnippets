# collection-snippets

Collection of code snippets

## R


load all functions, except main.R

```r
for(q1 in dir('R', pattern='[^(main)].*\\.R$')) { source(file.path('R',q1)) }
```
