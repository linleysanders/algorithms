
# coding: utf-8

# # Lede Algorithms -- Assignment 1
# 
# In this assignment you will use a little algebra to figure out how to take the average of averages.

# In[1]:


import pandas as pd
import matplotlib.pyplot as plt
import requests

get_ipython().run_line_magic('matplotlib', 'inline')


# First, read in the titanic.csv data set.

# In[2]:


df = pd.read_csv("titanic.csv")
df.head()


# Compute the average survival rate (mean of the `survived` column)

# In[3]:


df['survived'].mean()


# Now compute the average survival rates of the male and female 1st, 2nd, and 3rd class passengers (six groups in total)

# In[31]:


df.groupby(by='gender')['survived'].count()


# In[32]:


df.groupby(by='gender')['survived'].value_counts()


# ## Male Survival Rate: 16.70%
# ## Female Survival Rate:  66.30%

# In[35]:


142/850


# In[34]:


307/463


# In[37]:


df.groupby(by='pclass')['survived'].count()


# In[36]:


df.groupby(by='pclass')['survived'].value_counts()


# ## First Class Survival Rate: 59.93%
# ## Second Class Survival Rate: 42.5% 
# ## Third Class Survival Rate: 19.26%

# In[38]:


193/322


# In[39]:


119/280


# In[40]:


137/711


# Compute the average of these six averages. Is it the same as the the overall average?

# In[43]:


#It's not the same as the overall average—it is higher
(34.19+16.70+66.30+59.93+42.5+19.26)/(6)


# How would you compute the overall average from the average of averages? Start with the formulas
# 
# $$mean = \frac{\sum_{i=1}^N x_i}{N}$$
# 
# for the overall mean, where $x_i$ is data value $i$ and $N$ is the total number of values, and
# 
# $$mean_k = \frac{\sum_{i=1}^{N_k} xk_i}{N_k}$$
# 
# is the mean of group $k$, where $xk_i$ is value $i$ of group $k$ and $N_k$ is the number of values in group $k$, and
# 
# $$N = \sum_{i=1}^M N_k$$
# 
# relates the total number of values $N$ to the number of values in each of the $M$ groups.
# 
# Your task is to derive a formula that computes $mean$ using only $mean_k$, the $N_k$, and $N$. Note: this question is not asking you to write code! Rather, you must answer two questions:
# 
# - What is the correct formula?
# - How can we derive this formula starting from the formulas above?

# ## Answer / Response: 
# 
# The first formula is the calculation overall for mean. The second formula is the calculation for a group (a column), as the extra variable K. Big N is equal to the sum of the values, and Nk would give the total number of people in a column. I think the solution would be to take 1/6 of each percentage and 

# Now use this formula to calculate the overall mean. Does it match?
