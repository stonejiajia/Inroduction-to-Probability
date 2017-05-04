Vectors
=======

R style
-------

    v = c(3,1,4,1,5,9)

    v[c(1,3,5)]

    v[-(2:4)]

十个数字里选取五个分别是？

    n = 10; k = 5
    sample(n,k)

    n = 100
    r = replicate(10^5, sum(sample(n)==(1:n)))
    sum(r>=1)/10^4

生日问题
--------

23人中，至少有一对生日是相同的概率

    k = 23
    1 - prod((365 - k + 1):365)/365^k

    prod((360:365))

    b = sample(1:365, 23, replace=TRUE)
    table(b)

    r = replicate(10^4, max(tabulate(sample(1:365,23,replace = TRUE))))
    sum(r > 2)/10^4

Python style
------------

``` {.ipython .rundoc-block rundoc-language="ipython" rundoc-session="yes" rundoc-exports="both"}
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

``` {.example}
array([6, 9, 3, 3, 3])
```

``` {.ipython .rundoc-block rundoc-language="ipython" rundoc-session="yes" rundoc-exports="both"}
n = 23  
k = np.arange(350,366)
k

```

``` {.example}
array([350, 351, 352, 353, 354, 355, 356, 357, 358, 359, 360, 361, 362,
       363, 364, 365])
```

``` {.ipython .rundoc-block rundoc-language="ipython" rundoc-session="yes" rundoc-exports="both"}
np.prod(k)
```

``` {.example}
2268919806753y600
```

``` {.ipython .rundoc-block rundoc-language="ipython" rundoc-session="yes" rundoc-exports="both"}
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

``` {.example}
0.5072972343239854
```

``` {.ipython .rundoc-block rundoc-language="ipython" rundoc-session="yes" rundoc-exports="both" rundoc-results="output"}
import sys
print(sys.path)
```

``` {.example}
['', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python35.zip', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python3.5', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python3.5/plat-darwin', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python3.5/lib-dynload', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python3.5/site-packages', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python3.5/site-packages/Sphinx-1.4.6-py3.5.egg', '/Users/stone20091652/.pyenv/versions/anaconda3-4.2.0/lib/python3.5/site-packages/aeosa', '/Users/stone20
```
