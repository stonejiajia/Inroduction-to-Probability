# Vectors
## R style
```R
v = c(3,1,4,1,5,9)
```

| 3 |
| 1 |
| 4 |
| 1 |
| 5 |
| 9 |

```R
  v[c(1,3,5)]
```

| 3 |
| 4 |
| 5 |

```R
  v[-(2:4)]
```

| 3 |
| 5 |
| 9 |

十个数字里选取五个分别是？

```R
  n = 10; k = 5
  sample(n,k)
```

|  6 |
|  3 |
|  4 |
|  2 |
| 10 |

```R
  n = 100
  r = replicate(10^5, sum(sample(n)==(1:n)))
  sum(r>=1)/10^4
```

6.3405



## 生日问题
23人中，至少有一对生日是相同的概率

```R
  k = 23
  1 - prod((365 - k + 1):365)/365^k

```

0.507297234323985

```R
prod((360:365))
```
2268919806753600

```R
b = sample(1:365, 23, replace=TRUE)
table(b)
```

|  12 | 1 |
|  30 | 1 |
|  39 | 1 |
|  58 | 2 |
|  94 | 1 |
|  95 | 1 |
|  99 | 1 |
| 135 | 1 |
| 181 | 1 |
| 184 | 1 |
| 198 | 1 |
| 206 | 1 |
| 217 | 1 |
| 219 | 1 |
| 244 | 1 |
| 262 | 1 |
| 263 | 1 |
| 264 | 1 |
| 270 | 1 |
| 339 | 1 |
| 357 | 1 |
| 358 | 1 |

```R
  r = replicate(10^4, max(tabulate(sample(1:365,23,replace = TRUE))))
  sum(r > 2)/10^4
```

0.013

## Python style
```python
  import matplotlib.pyplot as plt
  %matplotlib inline
  import pandas as pd
  import numpy as np
  import seaborn as sns

  a = np.random.choice(10, 5)
  #a
  b = np.random.choice(10, 5, replace=True)
  b
```

array([6, 9, 3, 3, 3])




```python
n = 23
k = np.arange(350,366)
k

```

array([350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362,
       363, 364, 365])



```python
np.prod(k)
```

2268919806753600

```python
  k = 23
  a = [i for i in range(365-k+1, 366,1)]
  a
  def prod(list):
      p = 1
      for i in list:
          p = p * i
      return p
  1 - prod(a)/365**k


```

0.5072972343239854


| Markdown | HTML | Rendered |
| -- | -- | -- |
| `# Some Header` | `<h1>Some Header</h1>` | <h1>Some Header</h1> |


