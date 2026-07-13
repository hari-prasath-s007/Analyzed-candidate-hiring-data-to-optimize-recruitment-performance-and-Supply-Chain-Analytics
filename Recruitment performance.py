# ---
# jupyter:
#   jupytext:
#     text_representation:
#       extension: .py
#       format_name: percent
#       format_version: '1.3'
#       jupytext_version: 1.19.4
#   kernelspec:
#     display_name: Python 3 (ipykernel)
#     language: python
#     name: python3
# ---

# %%
###################################################Import Libraries#####################################################
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

# %%
#################################################Load the Dataset#######################################################
df = pd.read_excel(r"C:\Users\Hari\Downloads\Recruitment_Analytics_Dataset_1001_Records.xlsx")

# %%
################################################View the Data##########################################################
df.head()

# %%
df.tail()

# %%
df.sample(5)

# %%
####################################################Check Dataset Information#################################################
df.info()

# %%
###################################################Check Data Types#####################################################
df.dtypes

# %%
#########################################################Check Shape########################################################
df.shape

# %%
########################################################Check Missing Values#################################################
df.isnull().sum()

# %%
#######################################################Statistical Summary###################################################
df.describe()

# %%
####################################################Check Unique Values#####################################################
df["Department"].unique()

# %%
df["Source"].unique()

# %%
#######################################################Count Values###########################################################
df["Department"].value_counts()

# %%
df["Source"].value_counts()

# %%
#########################################################Convert Apply_Date to Date###########################################
df["Apply_Date"] = pd.to_datetime(df["Apply_Date"])

# %%
####################################################Create New Columns################################################
##################Application Month
df["Month"] = df["Apply_Date"].dt.month_name()

# %%
#########################Application Year
df["Year"] = df["Apply_Date"].dt.year

# %%
####################Salary Category
df["Salary_Category"] = np.where(
    df["Salary"] >= 700000,
    "High",
    "Low"
)

# %%
###########################################################Average Salary######################################################
df["Salary"].mean()

# %%
####################################################Highest Salary#########################################################
df["Salary"].max()

# %%
###################################################Lowest Salary########################################################
df["Salary"].min()

# %%
############################################################Group By Department###############################################
df.groupby("Department")["Salary"].mean()

# %%
#########################################################Hiring Source Analysis###############################################
df.groupby("Source")["Application_ID"].count()

# %%
###########################################################Recruiter Performance##############################################
df.groupby("Recruiter")["Joining_Status"].count()

# %%
####################################################Gender Distribution###############################################
df["Gender"].value_counts()

# %%
#######################################################City-wise Candidates#############################################
df.groupby("City")["Candidate_ID"].count()

# %%
######################################################Department-wise Salary##############################################
df.groupby("Department")["Salary"].agg(
    ["count","mean","max","min"]
)

# %%
###################################################Top 10 Highest Salary Candidates#########################################
df.nlargest(10,"Salary")

# %%
################################################Youngest Candidates#########################################################
df.nsmallest(10,"Age")

# %%
#####################################################Oldest Candidates#######################################################
df.nlargest(10,"Age")

# %%
###################################################Filter Joined Employees####################################################
joined = df[df["Joining_Status"]=="Joined"]

# %%
#################################################Filter IT Department#########################################################
it = df[df["Department"]=="IT"]

# %%
##################################################Sort Salary#################################################################
df.sort_values("Salary",ascending=False)

# %%
############################################Correlation (Numeric Columns)##################################################
df[["Age","Salary"]].corr()

# %%
#######################################################Export Cleaned Dataset##################################################
df.to_excel("Recruitment_Cleaned.xlsx",index=False)
print("Recruitment_Cleaned.xlsx file sucessfully download")

# %%
########################################################Simple Visualizations################################################
#########################Applications by Source
df["Source"].value_counts().plot(kind="bar")
plt.title("Applications by Source")
plt.show()

# %%
##################Department Distribution
df["Department"].value_counts().plot(kind="pie", autopct="%1.1f%%")
plt.show()

# %%
###########################Salary Histogram
df["Salary"].plot(kind="hist", bins=20)
plt.title("Salary Distribution")
plt.show()

# %%
