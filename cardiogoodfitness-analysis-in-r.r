{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "56fc3b2f",
   "metadata": {
    "_execution_state": "idle",
    "_uuid": "051d70d956493feee0c6d64651c6a088724dca2a",
    "execution": {
     "iopub.execute_input": "2025-02-28T14:59:32.353443Z",
     "iopub.status.busy": "2025-02-28T14:59:32.351496Z",
     "iopub.status.idle": "2025-02-28T14:59:33.923856Z",
     "shell.execute_reply": "2025-02-28T14:59:33.922535Z"
    },
    "papermill": {
     "duration": 1.582398,
     "end_time": "2025-02-28T14:59:33.926153",
     "exception": false,
     "start_time": "2025-02-28T14:59:32.343755",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mAttaching core tidyverse packages\u001b[22m ──────────────────────── tidyverse 2.0.0 ──\n",
      "\u001b[32m✔\u001b[39m \u001b[34mdplyr    \u001b[39m 1.1.4     \u001b[32m✔\u001b[39m \u001b[34mreadr    \u001b[39m 2.1.5\n",
      "\u001b[32m✔\u001b[39m \u001b[34mforcats  \u001b[39m 1.0.0     \u001b[32m✔\u001b[39m \u001b[34mstringr  \u001b[39m 1.5.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mggplot2  \u001b[39m 3.5.1     \u001b[32m✔\u001b[39m \u001b[34mtibble   \u001b[39m 3.2.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mlubridate\u001b[39m 1.9.3     \u001b[32m✔\u001b[39m \u001b[34mtidyr    \u001b[39m 1.3.1\n",
      "\u001b[32m✔\u001b[39m \u001b[34mpurrr    \u001b[39m 1.0.2     \n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "── \u001b[1mConflicts\u001b[22m ────────────────────────────────────────── tidyverse_conflicts() ──\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mfilter()\u001b[39m masks \u001b[34mstats\u001b[39m::filter()\n",
      "\u001b[31m✖\u001b[39m \u001b[34mdplyr\u001b[39m::\u001b[32mlag()\u001b[39m    masks \u001b[34mstats\u001b[39m::lag()\n",
      "\u001b[36mℹ\u001b[39m Use the conflicted package (\u001b[3m\u001b[34m<http://conflicted.r-lib.org/>\u001b[39m\u001b[23m) to force all conflicts to become errors\n"
     ]
    },
    {
     "data": {
      "text/html": [
       "'cardiogoodfitness'"
      ],
      "text/latex": [
       "'cardiogoodfitness'"
      ],
      "text/markdown": [
       "'cardiogoodfitness'"
      ],
      "text/plain": [
       "[1] \"cardiogoodfitness\""
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# This R environment comes with many helpful analytics packages installed\n",
    "# It is defined by the kaggle/rstats Docker image: https://github.com/kaggle/docker-rstats\n",
    "# For example, here's a helpful package to load\n",
    "\n",
    "library(tidyverse) # metapackage of all tidyverse packages\n",
    "\n",
    "# Input data files are available in the read-only \"../input/\" directory\n",
    "# For example, running this (by clicking run or pressing Shift+Enter) will list all files under the input directory\n",
    "\n",
    "list.files(path = \"../input\")\n",
    "\n",
    "# You can write up to 20GB to the current directory (/kaggle/working/) that gets preserved as output when you create a version using \"Save & Run All\" \n",
    "# You can also write temporary files to /kaggle/temp/, but they won't be saved outside of the current session"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "id": "0b4a9752",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T14:59:33.963708Z",
     "iopub.status.busy": "2025-02-28T14:59:33.939240Z",
     "iopub.status.idle": "2025-02-28T15:00:35.380589Z",
     "shell.execute_reply": "2025-02-28T15:00:35.379261Z"
    },
    "papermill": {
     "duration": 61.450001,
     "end_time": "2025-02-28T15:00:35.382299",
     "exception": false,
     "start_time": "2025-02-28T14:59:33.932298",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "Installing package into ‘/usr/local/lib/R/site-library’\n",
      "(as ‘lib’ is unspecified)\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "corrplot 0.95 loaded\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘gridExtra’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:dplyr’:\n",
      "\n",
      "    combine\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "\n",
      "Attaching package: ‘reshape2’\n",
      "\n",
      "\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      "The following object is masked from ‘package:tidyr’:\n",
      "\n",
      "    smiths\n",
      "\n",
      "\n"
     ]
    }
   ],
   "source": [
    "install.packages(\"ggplot2\")\n",
    "install.packages(\"gridExtra\") \n",
    "install.packages(\"corrplot\") \n",
    "install.packages(\"reshape2\")\n",
    "\n",
    "\n",
    "library(corrplot)\n",
    "library(ggplot2)\n",
    "library(gridExtra)\n",
    "library(reshape2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "id": "a6930430",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.413593Z",
     "iopub.status.busy": "2025-02-28T15:00:35.395390Z",
     "iopub.status.idle": "2025-02-28T15:00:35.442558Z",
     "shell.execute_reply": "2025-02-28T15:00:35.440652Z"
    },
    "papermill": {
     "duration": 0.056789,
     "end_time": "2025-02-28T15:00:35.444836",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.388047",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [],
   "source": [
    "data <- read.csv(\"/kaggle/input/cardiogoodfitness/CardioGoodFitness.csv\")"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "7e36e144",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.460788Z",
     "iopub.status.busy": "2025-02-28T15:00:35.459038Z",
     "iopub.status.idle": "2025-02-28T15:00:35.487351Z",
     "shell.execute_reply": "2025-02-28T15:00:35.485788Z"
    },
    "papermill": {
     "duration": 0.038911,
     "end_time": "2025-02-28T15:00:35.489930",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.451019",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 6 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Product</th><th scope=col>Age</th><th scope=col>Gender</th><th scope=col>Education</th><th scope=col>MaritalStatus</th><th scope=col>Usage</th><th scope=col>Fitness</th><th scope=col>Income</th><th scope=col>Miles</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th><th scope=col>&lt;int&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>TM195</td><td>18</td><td>Male  </td><td>14</td><td>Single   </td><td>3</td><td>4</td><td>29562</td><td>112</td></tr>\n",
       "\t<tr><th scope=row>2</th><td>TM195</td><td>19</td><td>Male  </td><td>15</td><td>Single   </td><td>2</td><td>3</td><td>31836</td><td> 75</td></tr>\n",
       "\t<tr><th scope=row>3</th><td>TM195</td><td>19</td><td>Female</td><td>14</td><td>Partnered</td><td>4</td><td>3</td><td>30699</td><td> 66</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>TM195</td><td>19</td><td>Male  </td><td>12</td><td>Single   </td><td>3</td><td>3</td><td>32973</td><td> 85</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>TM195</td><td>20</td><td>Male  </td><td>13</td><td>Partnered</td><td>4</td><td>2</td><td>35247</td><td> 47</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>TM195</td><td>20</td><td>Female</td><td>14</td><td>Partnered</td><td>3</td><td>3</td><td>32973</td><td> 66</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 6 × 9\n",
       "\\begin{tabular}{r|lllllllll}\n",
       "  & Product & Age & Gender & Education & MaritalStatus & Usage & Fitness & Income & Miles\\\\\n",
       "  & <chr> & <int> & <chr> & <int> & <chr> & <int> & <int> & <int> & <int>\\\\\n",
       "\\hline\n",
       "\t1 & TM195 & 18 & Male   & 14 & Single    & 3 & 4 & 29562 & 112\\\\\n",
       "\t2 & TM195 & 19 & Male   & 15 & Single    & 2 & 3 & 31836 &  75\\\\\n",
       "\t3 & TM195 & 19 & Female & 14 & Partnered & 4 & 3 & 30699 &  66\\\\\n",
       "\t4 & TM195 & 19 & Male   & 12 & Single    & 3 & 3 & 32973 &  85\\\\\n",
       "\t5 & TM195 & 20 & Male   & 13 & Partnered & 4 & 2 & 35247 &  47\\\\\n",
       "\t6 & TM195 & 20 & Female & 14 & Partnered & 3 & 3 & 32973 &  66\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 6 × 9\n",
       "\n",
       "| <!--/--> | Product &lt;chr&gt; | Age &lt;int&gt; | Gender &lt;chr&gt; | Education &lt;int&gt; | MaritalStatus &lt;chr&gt; | Usage &lt;int&gt; | Fitness &lt;int&gt; | Income &lt;int&gt; | Miles &lt;int&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | TM195 | 18 | Male   | 14 | Single    | 3 | 4 | 29562 | 112 |\n",
       "| 2 | TM195 | 19 | Male   | 15 | Single    | 2 | 3 | 31836 |  75 |\n",
       "| 3 | TM195 | 19 | Female | 14 | Partnered | 4 | 3 | 30699 |  66 |\n",
       "| 4 | TM195 | 19 | Male   | 12 | Single    | 3 | 3 | 32973 |  85 |\n",
       "| 5 | TM195 | 20 | Male   | 13 | Partnered | 4 | 2 | 35247 |  47 |\n",
       "| 6 | TM195 | 20 | Female | 14 | Partnered | 3 | 3 | 32973 |  66 |\n",
       "\n"
      ],
      "text/plain": [
       "  Product Age Gender Education MaritalStatus Usage Fitness Income Miles\n",
       "1 TM195   18  Male   14        Single        3     4       29562  112  \n",
       "2 TM195   19  Male   15        Single        2     3       31836   75  \n",
       "3 TM195   19  Female 14        Partnered     4     3       30699   66  \n",
       "4 TM195   19  Male   12        Single        3     3       32973   85  \n",
       "5 TM195   20  Male   13        Partnered     4     2       35247   47  \n",
       "6 TM195   20  Female 14        Partnered     3     3       32973   66  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "head(data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "25e89060",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.505992Z",
     "iopub.status.busy": "2025-02-28T15:00:35.504410Z",
     "iopub.status.idle": "2025-02-28T15:00:35.524854Z",
     "shell.execute_reply": "2025-02-28T15:00:35.523119Z"
    },
    "papermill": {
     "duration": 0.030203,
     "end_time": "2025-02-28T15:00:35.526563",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.496360",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "'data.frame':\t180 obs. of  9 variables:\n",
      " $ Product      : chr  \"TM195\" \"TM195\" \"TM195\" \"TM195\" ...\n",
      " $ Age          : int  18 19 19 19 20 20 21 21 21 21 ...\n",
      " $ Gender       : chr  \"Male\" \"Male\" \"Female\" \"Male\" ...\n",
      " $ Education    : int  14 15 14 12 13 14 14 13 15 15 ...\n",
      " $ MaritalStatus: chr  \"Single\" \"Single\" \"Partnered\" \"Single\" ...\n",
      " $ Usage        : int  3 2 4 3 4 3 3 3 5 2 ...\n",
      " $ Fitness      : int  4 3 3 3 2 3 3 3 4 3 ...\n",
      " $ Income       : int  29562 31836 30699 32973 35247 32973 35247 32973 35247 37521 ...\n",
      " $ Miles        : int  112 75 66 85 47 66 75 85 141 85 ...\n"
     ]
    }
   ],
   "source": [
    "str(data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "0a3688c6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.542527Z",
     "iopub.status.busy": "2025-02-28T15:00:35.541021Z",
     "iopub.status.idle": "2025-02-28T15:00:35.558095Z",
     "shell.execute_reply": "2025-02-28T15:00:35.556703Z"
    },
    "papermill": {
     "duration": 0.026931,
     "end_time": "2025-02-28T15:00:35.560405",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.533474",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "   Product               Age           Gender            Education    \n",
       " Length:180         Min.   :18.00   Length:180         Min.   :12.00  \n",
       " Class :character   1st Qu.:24.00   Class :character   1st Qu.:14.00  \n",
       " Mode  :character   Median :26.00   Mode  :character   Median :16.00  \n",
       "                    Mean   :28.79                      Mean   :15.57  \n",
       "                    3rd Qu.:33.00                      3rd Qu.:16.00  \n",
       "                    Max.   :50.00                      Max.   :21.00  \n",
       " MaritalStatus          Usage          Fitness          Income      \n",
       " Length:180         Min.   :2.000   Min.   :1.000   Min.   : 29562  \n",
       " Class :character   1st Qu.:3.000   1st Qu.:3.000   1st Qu.: 44059  \n",
       " Mode  :character   Median :3.000   Median :3.000   Median : 50596  \n",
       "                    Mean   :3.456   Mean   :3.311   Mean   : 53720  \n",
       "                    3rd Qu.:4.000   3rd Qu.:4.000   3rd Qu.: 58668  \n",
       "                    Max.   :7.000   Max.   :5.000   Max.   :104581  \n",
       "     Miles      \n",
       " Min.   : 21.0  \n",
       " 1st Qu.: 66.0  \n",
       " Median : 94.0  \n",
       " Mean   :103.2  \n",
       " 3rd Qu.:114.8  \n",
       " Max.   :360.0  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "summary(data)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "id": "e155222f",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.575343Z",
     "iopub.status.busy": "2025-02-28T15:00:35.573992Z",
     "iopub.status.idle": "2025-02-28T15:00:35.589039Z",
     "shell.execute_reply": "2025-02-28T15:00:35.587602Z"
    },
    "papermill": {
     "duration": 0.024027,
     "end_time": "2025-02-28T15:00:35.590986",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.566959",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<dl>\n",
       "\t<dt>$Product</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'TM195'</li><li>'TM498'</li><li>'TM798'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$Gender</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Male'</li><li>'Female'</li></ol>\n",
       "</dd>\n",
       "\t<dt>$MaritalStatus</dt>\n",
       "\t\t<dd><style>\n",
       ".list-inline {list-style: none; margin:0; padding: 0}\n",
       ".list-inline>li {display: inline-block}\n",
       ".list-inline>li:not(:last-child)::after {content: \"\\00b7\"; padding: 0 .5ex}\n",
       "</style>\n",
       "<ol class=list-inline><li>'Single'</li><li>'Partnered'</li></ol>\n",
       "</dd>\n",
       "</dl>\n"
      ],
      "text/latex": [
       "\\begin{description}\n",
       "\\item[\\$Product] \\begin{enumerate*}\n",
       "\\item 'TM195'\n",
       "\\item 'TM498'\n",
       "\\item 'TM798'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$Gender] \\begin{enumerate*}\n",
       "\\item 'Male'\n",
       "\\item 'Female'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\item[\\$MaritalStatus] \\begin{enumerate*}\n",
       "\\item 'Single'\n",
       "\\item 'Partnered'\n",
       "\\end{enumerate*}\n",
       "\n",
       "\\end{description}\n"
      ],
      "text/markdown": [
       "$Product\n",
       ":   1. 'TM195'\n",
       "2. 'TM498'\n",
       "3. 'TM798'\n",
       "\n",
       "\n",
       "\n",
       "$Gender\n",
       ":   1. 'Male'\n",
       "2. 'Female'\n",
       "\n",
       "\n",
       "\n",
       "$MaritalStatus\n",
       ":   1. 'Single'\n",
       "2. 'Partnered'\n",
       "\n",
       "\n",
       "\n",
       "\n",
       "\n"
      ],
      "text/plain": [
       "$Product\n",
       "[1] \"TM195\" \"TM498\" \"TM798\"\n",
       "\n",
       "$Gender\n",
       "[1] \"Male\"   \"Female\"\n",
       "\n",
       "$MaritalStatus\n",
       "[1] \"Single\"    \"Partnered\"\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sapply(data[, sapply(data, is.character)], unique)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "68b346e8",
   "metadata": {
    "papermill": {
     "duration": 0.005845,
     "end_time": "2025-02-28T15:00:35.602951",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.597106",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "We can observe:\n",
    "\n",
    "1. The minimum Age is 18 and the maximum is 50 with a mean of 28.79 and a median of 26.00.The age graph is right-skewed.\n",
    "2. The minimum Education level is 12 and the maximum is 21, with mean being 15.57.\n",
    "3. Usage ranges from 2 to 7.\n",
    "4. Fitness ranges from 1 to 5, with a mean of 3.3.\n",
    "5. Income ranges from 29562 to 104581 per year, with a mean of 53720.\n",
    "6. There are 3 products, 2 genders and 2 types of Martial status.\n",
    "\n",
    "**We need to find the features that perfectly fit each model.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "ab20ae32",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.618611Z",
     "iopub.status.busy": "2025-02-28T15:00:35.617031Z",
     "iopub.status.idle": "2025-02-28T15:00:35.633261Z",
     "shell.execute_reply": "2025-02-28T15:00:35.631874Z"
    },
    "papermill": {
     "duration": 0.026184,
     "end_time": "2025-02-28T15:00:35.635126",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.608942",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "0"
      ],
      "text/latex": [
       "0"
      ],
      "text/markdown": [
       "0"
      ],
      "text/plain": [
       "[1] 0"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "sum(is.na(data))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "id": "1750b3a5",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:35.650570Z",
     "iopub.status.busy": "2025-02-28T15:00:35.649104Z",
     "iopub.status.idle": "2025-02-28T15:00:36.435324Z",
     "shell.execute_reply": "2025-02-28T15:00:36.433757Z"
    },
    "papermill": {
     "duration": 0.796032,
     "end_time": "2025-02-28T15:00:36.437145",
     "exception": false,
     "start_time": "2025-02-28T15:00:35.641113",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data, aes(x = Product, y = Age, fill = Product)) +\n",
    "  geom_boxplot() +\n",
    "  theme_minimal() +\n",
    "  ggtitle(\"Age Distribution by Product\") +\n",
    "  xlab(\"Treadmill Product\") +\n",
    "  ylab(\"Age\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3401b5ab",
   "metadata": {
    "papermill": {
     "duration": 0.006313,
     "end_time": "2025-02-28T15:00:36.450289",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.443976",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**TM195 and TM498 are usually preferred by people of 26-27 years of age, while TM798 is preferred by slightly older people (around 29).**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "fb16248c",
   "metadata": {
    "papermill": {
     "duration": 0.006502,
     "end_time": "2025-02-28T15:00:36.463474",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.456972",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# We have 2 categorical columns and 6 numerical ones. Let's begin by analyzing categorical columns. # "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "id": "523debd6",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.479773Z",
     "iopub.status.busy": "2025-02-28T15:00:36.478346Z",
     "iopub.status.idle": "2025-02-28T15:00:36.492931Z",
     "shell.execute_reply": "2025-02-28T15:00:36.490956Z"
    },
    "papermill": {
     "duration": 0.025061,
     "end_time": "2025-02-28T15:00:36.495142",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.470081",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Female   Male \n",
       "    76    104 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(data$Gender)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "id": "70742c29",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.511872Z",
     "iopub.status.busy": "2025-02-28T15:00:36.510364Z",
     "iopub.status.idle": "2025-02-28T15:00:36.523730Z",
     "shell.execute_reply": "2025-02-28T15:00:36.522360Z"
    },
    "papermill": {
     "duration": 0.023368,
     "end_time": "2025-02-28T15:00:36.525518",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.502150",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "Partnered    Single \n",
       "      107        73 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(data$MaritalStatus)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "id": "f5b7ffea",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.542565Z",
     "iopub.status.busy": "2025-02-28T15:00:36.541134Z",
     "iopub.status.idle": "2025-02-28T15:00:36.554004Z",
     "shell.execute_reply": "2025-02-28T15:00:36.552706Z"
    },
    "papermill": {
     "duration": 0.02374,
     "end_time": "2025-02-28T15:00:36.556204",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.532464",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "\n",
       "TM195 TM498 TM798 \n",
       "   80    60    40 "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(data$Product)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "id": "146a0713",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.573375Z",
     "iopub.status.busy": "2025-02-28T15:00:36.571984Z",
     "iopub.status.idle": "2025-02-28T15:00:36.596847Z",
     "shell.execute_reply": "2025-02-28T15:00:36.583964Z"
    },
    "papermill": {
     "duration": 0.036037,
     "end_time": "2025-02-28T15:00:36.599211",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.563174",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "       \n",
       "        Partnered Single\n",
       "  TM195        48     32\n",
       "  TM498        36     24\n",
       "  TM798        23     17"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(data$Product,data$MaritalStatus)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "id": "ee174f6d",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.615200Z",
     "iopub.status.busy": "2025-02-28T15:00:36.613648Z",
     "iopub.status.idle": "2025-02-28T15:00:36.627862Z",
     "shell.execute_reply": "2025-02-28T15:00:36.626493Z"
    },
    "papermill": {
     "duration": 0.024053,
     "end_time": "2025-02-28T15:00:36.629847",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.605794",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "       \n",
       "        Female Male\n",
       "  TM195     40   40\n",
       "  TM498     29   31\n",
       "  TM798      7   33"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(data$Product,data$Gender)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "341f8074",
   "metadata": {
    "papermill": {
     "duration": 0.006646,
     "end_time": "2025-02-28T15:00:36.643726",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.637080",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Partnered individuals tend to purchase more treadmills in general than single individuals, and males prefer the TM798 more than females.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "id": "38d224a1",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.663009Z",
     "iopub.status.busy": "2025-02-28T15:00:36.661263Z",
     "iopub.status.idle": "2025-02-28T15:00:36.677836Z",
     "shell.execute_reply": "2025-02-28T15:00:36.676144Z"
    },
    "papermill": {
     "duration": 0.027843,
     "end_time": "2025-02-28T15:00:36.679894",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.652051",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       ", ,  = Female\n",
       "\n",
       "       \n",
       "        Partnered Single\n",
       "  TM195        27     13\n",
       "  TM498        15     14\n",
       "  TM798         4      3\n",
       "\n",
       ", ,  = Male\n",
       "\n",
       "       \n",
       "        Partnered Single\n",
       "  TM195        21     19\n",
       "  TM498        21     10\n",
       "  TM798        19     14\n"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "table(data$Product,data$MaritalStatus,data$Gender)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7319eb00",
   "metadata": {
    "papermill": {
     "duration": 0.00677,
     "end_time": "2025-02-28T15:00:36.694233",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.687463",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Let's visualize this for a better idea.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "id": "ba48b90e",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:36.711553Z",
     "iopub.status.busy": "2025-02-28T15:00:36.710072Z",
     "iopub.status.idle": "2025-02-28T15:00:37.159415Z",
     "shell.execute_reply": "2025-02-28T15:00:37.157662Z"
    },
    "papermill": {
     "duration": 0.460456,
     "end_time": "2025-02-28T15:00:37.161490",
     "exception": false,
     "start_time": "2025-02-28T15:00:36.701034",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQd\nAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSE\nHQBAJIQdAEAkhB0AQCSEHQBAJIQdAEAkhB0AQCSEHQBAJDJSPYBVUFFRUVZWtqYerd6aeiDW\nAfPmzVul9c1+TFZ19jcElZWVqR5C3VlTB0BGRkZ2dvYaeShIofUp7JLJZFVVVapHwbrIgbEh\nM/u/lkwmUz2EurOmDgAHEnFYn8IuMzMzMzMz1aNgXVRQUJDqIZAyZv/XZs+eneoh1B0HANTm\nPXYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAA\nkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYA\nAJEQdgAAkchI9QAA6lYikZrtJpOp2S6wIXHGDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4A\nIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIO\nACASwg4AIBLCDgAgEsIOACASwg4AIBLCDgAgEsIOACASwg4AIBIZqR4AwAbgpTfDy2/V2dYK\n62xLwDrGGTsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7\nAIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgI\nOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBI\nCDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCA\nSAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBICDsA\ngEgIOwCASAg7AIBICDsAgEgIOwCASAg7AIBIZKR6AFUv3X/TE2Pf+X5OevuO2x57ynGt8lI+\n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\nZ+uaFdrmrrvfq5aWkZFetZr/Qtu421+O6NSw+ufSmVPeeeGxh2644Jmn3v/h8wcK0lfui4fr\n0NTXL+h1yfvnjX5kx8KsVI8FYB0l7CC07XX+lYt+XjDv3WHX3p2/8V+uvHLp57rWNYO+nD5o\nde+72cFnX3lC+5qbyap5F+3ceshrD/UeO/yB3ZutidGtSfOnvPbkky8ct6Ay1QMBWHd5KRZW\nQVXFzDrNimR5WUXdfZtzIq3e6SMPCSG8f/c3v/5tXe87AKtO2MEKjGhX3KD18LKZbxy12xb5\n2Q3nViZDCHO/HXta9702bVyUXa9h+857XHzrv6oWv9cnj9944G5dGtWvl5GV+5vWvz3mnOtm\n1Eq0N++/vOvv2hTkZBX/pm33U6+ZWr7Yve/v0Kh+iwvf/PsZzevn52alFzVpddT5d1eF8NbI\n/p032yg3O7/lFtsNum989cqXtSyqeY/dGpBICyFUllUuZ99/fP3BI/fZoXFRfla9+pv/vuvg\nkS/VfoDl79o5mxQWbnJO7SXvXbxNIpH4ZtEWJ/9n9GHdfldckJNXv/H2+xz50JvTanaz5YEv\nhBAObpS3xCMAUMNLsbBiVRUzjtl67+m7HH3ZdX/NTUvMm/TPrTsc9l2i2ZHH9WnTKP39lx4a\ndOK+/3x1xLt3HVu9/vdPndTxwJsL2+3a+5T+DbMqxv/n0buvPPW1Sa0/u2ffEMIHN3bf9uQH\ncoo79+hzZqOKHx6745xtX26xxBbnTx2988k/H3nawO02yX78pqGjhx4z4as7Pn5+/hlnXNCz\n8utrL71+8NG/67rvzJ3X7LvNqkpu6P1wCKH9Eb+MZ4l9n/bWVZvv3L8ku80Rx5zUqqDklcdG\nXXTc7q98+dKzQ3ZdyV1bjinjLmm720XJRr/veUL/JukzHr3j9u47jZk94eteLQt73PVo8+fP\nPGbwexc8+PhuTdqtyb0GiEkSqKV87jshhCZbP1Gz5M7NGyYSib2uf7tmyaAtizPzOrz6U0nN\nkn+csXUI4ZIvZ1bfvGvLRhk5m35bWlGzwunNCnKL908mkxUlnzfJSs/baP+PZpdX/2ruD8+3\ny8sMIRzx6fTqJfe1Lw4hnPX8xOqbJdOfDCGkZ2887ufS6iVf3LtHCOGwj39KJpOXblY/v2nv\n6uXDWhXlNty3ZqNL3Kxtxmd/CSE026vPuYuc3ve4XdsVhRAKNztoxoKqZex71WFN8jLzOoyd\nPK/6duWCaWd2bpRIyxk7q2xldu3s5gUFzc+uPZJ3B3UJIXxdWpGsKuvaICe3eO9P5pYv2vGX\nGmamNd3+vuqbX/9zjxDCIz/NX+oeAZBMJr0UCyshkX33CVtX/1gx/+Mh42e073vXDsU5Nb//\n44XXhhAeuPmz6puHjJvw46Txm2anV99MVs0rSyaTlfNDCNPeOW9qeeX/3XXjlgULP2lbr9ke\no/r98gmGapl57a/cY+Pqn3Ma7luQntao4zU7FWVXL2m84y4hhJIFS7z8u8omPnPb5Ytcc8vd\nn5RsdEC/v7338YMNMmp9JLbWvpf89OiDU+e36zNil6Z51UvSMhoNuPfYZFXpRc/8sJK7tixz\nJg5/7ufSba64tn29zEU7vus/b75hYK9G/+NuAmw4vBQLK5aVv3WTzIX/Ciqd8XRlMvnh1dsm\nrl5ytVkfzqr+Ia+o4Yw3x9w1ZuzHn3357XfffPLB+xNnluUUhRDC1Fe+CSF077JYrLQ+rnO4\n6sPaS9IyimvfzEiE7MYNam4m0tbM5Vd2vOWT/5ywgvBabN9/HhNCaNWzZe0V8jfpGcJVk/89\nZWqbb8JK7NqyzP78xRDCTntsVHvhLr367rIydwYghCDsYGUk0ur9ciMtK4Sw1Tl31pxRq5Fd\nf+GZrUfO3PPQ4S8267zH/rtvv99Oe585uNPE47udPDWEENIy0kIIaYtfJC4tp0FYVy2272Ep\nH9FNJDJCCMmK5OrtWrJq4WNWlVWFELIS69z18wDWI8IOVk1Owz+mJ06rmNlur712rFlYUfLp\nI4+/37RTXgihfM5/Dx/+4iZ/vOXbJ4+vWWHEoh8a79IyhDfuf2/6oV2b1/x2yvNv1s3g/0c5\nDfYK4Y6vR38TujSpWTj3h1EhhI323Kjx5iu5a4tdNeXHtxZ+KUXh5l1CePY/b/wUWhTW/PaF\n/n1HTW8w4vbL1vCeAETKe+xg1WTktBm0RcPPRx3z/JT5NQvvO+lPPXr0+C4thBAq5n9amUw2\n3Hqbmt/On/zq1RPnVJ/uavTboU2y0v99zKkT5i385q7yWe+feM47dboPqyu30cF/bpz36a29\nXptWWr0kWTFj6JG3J9KyL9xvk5XZtbz0tNIZT/206N2BpdP/2++FidU/F7Y4r1N+1ut/Pevr\n0spFd3+t57W3PflGk9qPkKy76/oBrH+csYNVdtq/brpt8yP3ad3xoO4HbNO24UcvPDDq2c+2\nOnbU0U3yQgh5jbt3Le734pX7nZx51jbN8776+L+33/J466Y55d+/c93oh3r1OOTZq/7c6a8P\ndW65w9FH7d0k/PjkyFGztj8ijLkz1bu1MtJufmLgv3casFvrbY7pdVDL/JKXHx3xzPif9xjw\n/J5F2SG0XOGuHXD05hdf8manPXqec9QeC6Z8OnLYtT82ygo/VIQQEun1H7unX9uDrt2qza7H\nHbVX08yZ/7jtlsmV9W58+Njq+2YWZIYQ/n797WUdtj2i+3ap2H2AdV6qP5YL65alXu4kp2jP\nJVabOWHMCQfu2rQoPyuvYfutd77otqcXXSEkmUwm53733DF7b9esuF5h01a77XvUEx/PmPbW\nFZs1yMvKb/xDWUUymfzv6Et379wqPzujoNEmB590w5y548PilzvJLtyp9uYaZKRtuvezNTdn\nf3dJCGH/96Ym/7fLnex4yyfL/6+x1H2fNG50927bFhfmZuQUtO6y+8UjXqz92+XvWlXlvBvO\n6NGuRdPMRCKE0GynnuNe3SdUX+4kmUwmk188fcsBu3QszMvMrtegyx6Hj3p1cs0jl899b78u\nm+WkZ/zmtxcvf9gAG6xE0gsbQJ2rKpv9w7SKTZs3TPVAAKIi7AAAIuHDEwAAkRB2AACREHYA\nAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJEQdgAAkRB2AACREHYAAJH4f6ohAkPR\niQcPAAAAAElFTkSuQmCC"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data, aes(x = Product, fill = interaction(MaritalStatus, Gender))) +\n",
    "  geom_bar(position = \"dodge\") +\n",
    "  theme_minimal() +\n",
    "  ggtitle(\"Comparison of Customer Groups Across Products\") +\n",
    "  xlab(\"Treadmill Product\") +\n",
    "  ylab(\"Count\") +\n",
    "  labs(fill = \"Marital Status & Gender\") +\n",
    "  scale_fill_manual(values = c(\"Single.Female\" = \"pink\", \"Single.Male\" = \"blue\",\n",
    "                               \"Partnered.Female\" = \"red\", \"Partnered.Male\" = \"darkblue\"))\n",
    "\n"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "482a8bb7",
   "metadata": {
    "papermill": {
     "duration": 0.008729,
     "end_time": "2025-02-28T15:00:37.178436",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.169707",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**We can deduce that partnered females in general prefer the TM195. However, more analysis needs to be made to get more accurate results.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3e5fb158",
   "metadata": {
    "papermill": {
     "duration": 0.009075,
     "end_time": "2025-02-28T15:00:37.195527",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.186452",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Analyzing Numerical columns"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "ce4c2033",
   "metadata": {
    "papermill": {
     "duration": 0.008926,
     "end_time": "2025-02-28T15:00:37.216340",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.207414",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**We begin by drawing a correlation heat map.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "id": "af8624b7",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:37.242248Z",
     "iopub.status.busy": "2025-02-28T15:00:37.240226Z",
     "iopub.status.idle": "2025-02-28T15:00:37.340847Z",
     "shell.execute_reply": "2025-02-28T15:00:37.338654Z"
    },
    "papermill": {
     "duration": 0.117423,
     "end_time": "2025-02-28T15:00:37.343352",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.225929",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nMMcOMAGzjG/OwXmPrDyV2G3hr4M7323VrLXvq2FPiZo3ZnC3Tg8PGDYv3s7TiZvnSE+2Fmu9\nYdfSGnm1qc/UNubbGbpN2Jh5vp0HO5nbpMZvS3boRVpmbO/31aBWnd//sev4DfP7NTq9pccD\ng8f1+Y3Jdrmep5Ml4N2SY3b2al0rQGXskVWwWrtFW057ulNeY3H1SBG5eGkMYOPcIZXCLxfC\nyrSf6tnuwTfEHV1eMyzoOuN2jEI52VOOB2qqcN0Z+pVjdbqux0fNFJG73mVYPbdjxA64eakX\ntzUpX2/G6l33du87duKoXl2bnt/9fbeGt725ZL+nu+YdClbKKyJPjvvix+/mPdWiQuOnhkRF\nNJj6za+nT+577rZ8R797eXt8mqf7CO/zz5bvl3zz/aHEdOPT0FJtN+766lrjdvU6dAq3qGt8\nJb+jBRYfdWfkmW0v93yhsXOszngo9fwBEQmvEubRDiIHPJ0sAS82o0VxZQkev+6Y88qE5sWU\nUt0++NmDvfIiiWeWV8hjNf4tslgjnhk2L/bS2Mnml6uKyMqYZM/2EN4lOWbH0/UzpvwH5a/2\n4dazzoec43Yvzt6uO1Ln9B3EBDtd19MSD41/Z0DXp1+a/u0e40r8ic/zB2giUqnnt87bHGkx\nvaoV0KwFtseleqinyCmCHXCTmGV8E+wpJyYP639fkxaPPN3/15MJuq4nnto8etig96bN33Mu\nOdNtUS3z22wFWts911V4neTojXUK2DRLyKN93x0/4qVIq8USVHzmVdlOREpXyKeUGrD2pAd7\nmxsknVtfv/Dl3YXuG7jIuH5o6aD8AZpmCe3+xrjlK5Z9Nm9S83JhIvLIZOqwXoBgB9ykxHNL\nRKTOqD+NTzOnulObnxGRJ7ec8mgHc52Ek6tblc0rIkopEekyZkuWGw6fTtJ1PTV+X9+WxZVS\n/Vf+64luwkvZ+1bJr1kLTNmQEdf+HFtXRK7Odo1LhGoB4c+M/dFD/cxF3rqjoDWkysg5X65Y\nPKt1hXARadx/ofHQ+b++ubd8uDPzWUNvG/H5b57tLXKIYAfcJGYZu+SGO5ssH9LOYo1o3KJh\nkTwBSlm7vsf7LlwQe/hdEak9Yrvzynv1i4RXeOjqcTvdkRJLEVbX05P+UUoN2n4m49PkI0/V\nKJg52+l6+v5tP07/YOriZT/+E0sF1msQ7AAXxB39fuCsy+8cE+4qpJS1x/ONMqc6Xddj9rwi\n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\nHNqx6dvH7i4iIj0W+nWtxm8R7HK71PgdBaxagK3Ux1MG1ykRYvxIl23Q+ePvr9ikY8OoLhal\nLNbIl4bP+P3AwT+3rXiyUVGlLLNOxOu6PqtOYYu1YJqv/+bmsMenXPd7vDrbLR/SzmKNaNyi\nYZE8AUpZu77np7vYX/99V792thOR0hXyKaUGrD15S3uc+5z48VkRaTNnf9LZDTnMdn7iOq8u\nR/qFz346ruv6hkF3i0ihur32xWc6fi31zP0RwQUqjbnFHc6Frn8us67r6z98JcJqccY+S1Cx\n1z5c78kew3MIdl5gxVMVReSemX877PHLZr7jjHfFarWbsuRX51vE/uXjK4UGZtoRIKDbqIwZ\ntesfrWCxRnqq/7eG8eZxe9fxOcx2Xx+L03X91/lDKxcOE5FSNZuPX+Gnv93eMNUZss12jUuE\nagHhz4z100B8pfRuRUODwhrGpjtumO38p6p4/VT3essSmiXv3ONxuiP5nXYVRCQ48u73Zn6x\na99fP/+wqEONCKXUaxuzzr3zQzk4l1lPjNq7ZPYHffu+NnbKrC1Ridf6UvB5BDsvkHzhpzwW\nLSisobHFWpZ4V7BKizHzf0p26Lqupyed/WXl4lHDRk6ZOWfdpROx0hL/rhUaWPK+Tz34LdwC\nyTE/GgNIN8x2i19rLCJhZZ5z3pUU678TEK//vjvsiT4Hki4PL2Uz5uRIifWn8SdHetzMCZ8e\nT8r+Wz6x9nkRafvJfl3Xr5Pt/LACW/6h7FOdiNR9YVbGI460L4Z1DdTU5WEna8TLk/xr2MmR\nHvfjwSs2gORcZriKYOcdPm9fWkQeWnx5T92EUysKBV4eeA8r22DYR8vjMg0D7PludWyaI3r/\nus5V81tDqm644PsrPZ3FwRtlO/tzxfOKyKd+v14sJ++7LUZdUfT323qinunpsoaWfWHYrGPZ\nrGm1P1EsNCi8sbFL4rWynf9IS9z7UPlwESl09wuZl0tnk+ouid63ZeaoN7o++ez/3h7x0+G4\nW9xhz3LYE965v6w1uOJnf1+eLc25zHAVwc47JJ5ZHKBUcET7VIeu63rS2Y1NIoM1S94h3+5e\n/tGwBuUyZtTmKVZr2akEXdcPffGiRSmlWZVSoSWbfbXn/A3+Al+Rw2xnbGvy/AF/eVqu5Sbe\nd3W/rCcazu18N0hTImKx5RURa0jp596ZeST+inh3cl0vEWn3acb5TmS71Pi/srzGrv/q0nX/\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "numerical_data <- data[, c(\"Age\",\"Education\",\"Income\",\"Usage\",\"Fitness\",\"Miles\")]\n",
    "cor_matrix <- cor(numerical_data, use=\"complete.obs\")\n",
    "\n",
    "corrplot(cor_matrix, method = \"color\", type = \"upper\", order = \"hclust\",\n",
    "         tl.col = \"black\", tl.srt = 45)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "98eb703c",
   "metadata": {
    "papermill": {
     "duration": 0.00814,
     "end_time": "2025-02-28T15:00:37.360025",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.351885",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**We can see high correlation between Miles, Usage,Fitness,and Income. We will perform further analysis for better results.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "id": "5a932d56",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:37.379302Z",
     "iopub.status.busy": "2025-02-28T15:00:37.377970Z",
     "iopub.status.idle": "2025-02-28T15:00:37.638252Z",
     "shell.execute_reply": "2025-02-28T15:00:37.636603Z"
    },
    "papermill": {
     "duration": 0.272622,
     "end_time": "2025-02-28T15:00:37.640489",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.367867",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\nbEYsBcOEpqC+HHMmYtEkeI/AHhE5FS+MEhEVnteF5TNx3AxEkkgZ8OoI+zDMg6VjX8CDlbNw\n/AxEUw7pEZEjMdgREY0WRaDcjyPkMYkRURWn9YjIYYo6QDERERERjR4GOyIiIiKHYLAjIiIi\ncggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKH\nYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggG\nOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAj\nIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIi\nIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIi\ncggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKH\nYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggG\nOyIiIiKHYLAjIiIicggGOyIiIiKHYLAjIiIicggGOyIiIiKHEFLKUrdhoFgsZprmqFZhWZai\nKEKIUa1ljJBS2rYNYLx1WVXVUjekSGzbllIKIRRlvHxVs21bCDFO3s8ALMsCd2Hnyu3CABzQ\nZZ/P53a7S92KcU0rdQPy8Hq9ox03E4mEpmnj5M1n23YsFgPg8Xh0XS91c4rBNM1kMhkIBErd\nkCJJpVLZbFZVVb/fX+q2FEkikdB13eVylbohxSCljEajALxer6aNxYN2wRmGkU6nx88unEwm\nDcPQNM0Bu7ADsumRbiweI4pw5BJCqKo6TlJO7nQdAE3TxkmXc8ZPZzOZDAAhxPjpMndhZ8t9\ntx8nnQWQO9c+rnZhGj3j5cINERERkeMx2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw\n2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMd\nERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BER\nERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERER\nkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5\nBIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw\n2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMd\nERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BERERE5BIMdERERkUMw2BER\nERE5BIMdERERkUMw2BERERE5hFbqBhARHa6uBLa0oqUbSQMeHdVBTKvGhPCo19sRx5YWtMWQ\nzMKroyqIGbWoCY56vYejNYqtrWiPIWXA50J1EDNrURkY9XpbomhsRWsUGRM+HbVhzKhFhX9f\naQSNbftKXaj0KxN8SsW+ZZsjaGxD277S2lC/Zfd2o7EN7bGe0glhzKhBuX9wE4jGBQY7IjqC\nWTZebMSrTehOwJJQFdgSAgh5MbceJ86Ge3QOcqaNNZvxxi50J2HbUBVYNhSBl7djwSSsnAnX\n2Du4Ghae2Yy3diGSBGwoKmwJIbB2OxZOwvJZ0EbnEk7GxH824e3diKYgAUXAsqEKvLQNS6Zg\nSQOe24y39yCaghRQAMuGAjXg8i1LYckUPLMRG/buX9bObed9yz6zCRv2IpIExP41l/txzFQc\nOw0qL0rR+COklMWpaduzq3//wHPrN+4OT5pzwRXXnLGw4sDLjJpIJOJyubxebwnbUDS2bXd2\ndgIIhUIul6vUzSkGwzCi0WhlZWWpG1Ik8Xg8nU7ruh4Oj/5JqrEhEom43W6X2/PIW3htBwRQ\nGdyfS2wbnUlkDMydiHMWFz5j2RIPvoE3d0IRqAxAU3umWxKdcRgW5tbhnCXQ1WHXMvLq9u3C\n4XBY1/VDW4lp4f7XsX4PdBUVAahi33QbHTHYEgsn4cxFhU9CWRP3vY4Ne+DWUeGDsm/9vfVq\nCjIWPP1Ls6bdGrFVVVMVZCx4dZT79rfNsNARByQUBVkLXh1lfUpNG+0xCIGjG3D6fAiBsS8W\ni2UymXG1C9PoKdLXmfa1v7rmv/9QufTsr3z7a++em/7Jzde+mTSKUzUROZ38voQAACAASURB\n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\ndiSzPT8V6nWhrgzHzRjdz/W93XhhK3Z27qtXgVdHfQWOm45JBf3FxIL8pFjOrk680IjdnUgZ\nPW32uTC5AstmYGJZgZqbT1M7XmhEczdS2Z6f9PW5MKUKx81AbQhNHXhha79Sj2ZPCGZOme+t\nDWN7G17chr3dSPcu68aUShw/EzVBbGvDS7lSA5YNTYHXhWnVWDYdNaFR7FFh8SfFqIAY7JyP\nwc7xxnmwy+lKoCWKtAG3hsoAqkNFugbXEUdbDGkDHh1VAVQGCv/jpAUMdgAk0BFDexxpAx4N\n1SFU5h94qsAk0BZFRxwZEx4dtSGU+/uXxtAR6ymt8BqaHauoqMi7bE2o3wDRUqI1is4EMia8\nOmr6r/mIwGBHBcTHkonICcr9pfk4rwwUKRgVigCqgqgKHnjOgtdbExryLJoAaoKo2deqbFbG\n4yNeVqA2jFomIiIARfutWCIiIiIabQx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2\nRERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdE\nRETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERE\nRA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETk\nEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7B\nYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2\nRERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdE\nRETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERERA7BYEdERETkEAx2RERE\nRA7BYEdERETkEAx2RERERA4hpJSlbsNAyWTSsqxRrSKbzaqqqqrqqNYyRkgps9ksAF3XFWVc\nRHnbtg3DcLvdpW5IkZimaVmWoii6rpe6LUViGIaqquPk/Qwgk8lgnO3Cpmm6XK5SN6RIDMOw\nbdsZu7DH43FAL45oWqkbkIeiKKMdN4UQQohxcojs3Zjjp8s546ezQojcf8ZPlzGe3s+9u7Ci\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "ggplot(data, aes(x = Income, y = Usage, color = Product)) +\n",
    "  geom_point(alpha = 0.6, size = 3) +\n",
    "  theme_minimal() +\n",
    "  ggtitle(\"Usage vs Income by Product\") +\n",
    "  xlab(\"Income\") +\n",
    "  ylab(\"Usage (Frequency)\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "f80a4104",
   "metadata": {
    "papermill": {
     "duration": 0.009718,
     "end_time": "2025-02-28T15:00:37.659924",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.650206",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Lower Income and usage is often associated with TM195 and TM498 models, while higher income and usage is often associated with TM798.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "id": "b295d0cd",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:37.682405Z",
     "iopub.status.busy": "2025-02-28T15:00:37.680995Z",
     "iopub.status.idle": "2025-02-28T15:00:37.700701Z",
     "shell.execute_reply": "2025-02-28T15:00:37.699353Z"
    },
    "papermill": {
     "duration": 0.033325,
     "end_time": "2025-02-28T15:00:37.702791",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.669466",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "  Product Income.Min. Income.1st Qu. Income.Median Income.Mean Income.3rd Qu.\n",
      "1   TM195    29562.00       38658.00      46617.00    46418.03       53439.00\n",
      "2   TM498    31836.00       44911.50      49459.50    48973.65       53439.00\n",
      "3   TM798    48556.00       58204.75      76568.50    75441.57       90886.00\n",
      "  Income.Max. Miles.Min. Miles.1st Qu. Miles.Median Miles.Mean Miles.3rd Qu.\n",
      "1    68220.00   38.00000      66.00000     85.00000   82.78750      94.00000\n",
      "2    67083.00   21.00000      64.00000     85.00000   87.93333     106.00000\n",
      "3   104581.00   80.00000     120.00000    160.00000  166.90000     200.00000\n",
      "  Miles.Max.\n",
      "1  188.00000\n",
      "2  212.00000\n",
      "3  360.00000\n"
     ]
    }
   ],
   "source": [
    "aggregate_summary <- aggregate(cbind(Income, Miles) ~ Product, data = data, FUN = summary)\n",
    "\n",
    "print(aggregate_summary)"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "180974c1",
   "metadata": {
    "papermill": {
     "duration": 0.009517,
     "end_time": "2025-02-28T15:00:37.722483",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.712966",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**This Further proves that TM798 is suitable for higher income. However, someone aiming for the cheapest model should usually go for the TM195.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "id": "6e030c9a",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:37.745935Z",
     "iopub.status.busy": "2025-02-28T15:00:37.744494Z",
     "iopub.status.idle": "2025-02-28T15:00:37.786139Z",
     "shell.execute_reply": "2025-02-28T15:00:37.784009Z"
    },
    "papermill": {
     "duration": 0.055866,
     "end_time": "2025-02-28T15:00:37.788123",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.732257",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 3 × 7</caption>\n",
       "<thead>\n",
       "\t<tr><th scope=col>Product</th><th scope=col>Miles</th><th scope=col>Fitness</th><th scope=col>Income</th><th scope=col>Usage</th><th scope=col>Education</th><th scope=col>Age</th></tr>\n",
       "\t<tr><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><td>TM195</td><td> 82.78750</td><td>2.9625</td><td>46418.03</td><td>3.087500</td><td>15.03750</td><td>28.55</td></tr>\n",
       "\t<tr><td>TM498</td><td> 87.93333</td><td>2.9000</td><td>48973.65</td><td>3.066667</td><td>15.11667</td><td>28.90</td></tr>\n",
       "\t<tr><td>TM798</td><td>166.90000</td><td>4.6250</td><td>75441.57</td><td>4.775000</td><td>17.32500</td><td>29.10</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 3 × 7\n",
       "\\begin{tabular}{lllllll}\n",
       " Product & Miles & Fitness & Income & Usage & Education & Age\\\\\n",
       " <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t TM195 &  82.78750 & 2.9625 & 46418.03 & 3.087500 & 15.03750 & 28.55\\\\\n",
       "\t TM498 &  87.93333 & 2.9000 & 48973.65 & 3.066667 & 15.11667 & 28.90\\\\\n",
       "\t TM798 & 166.90000 & 4.6250 & 75441.57 & 4.775000 & 17.32500 & 29.10\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 3 × 7\n",
       "\n",
       "| Product &lt;chr&gt; | Miles &lt;dbl&gt; | Fitness &lt;dbl&gt; | Income &lt;dbl&gt; | Usage &lt;dbl&gt; | Education &lt;dbl&gt; | Age &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|\n",
       "| TM195 |  82.78750 | 2.9625 | 46418.03 | 3.087500 | 15.03750 | 28.55 |\n",
       "| TM498 |  87.93333 | 2.9000 | 48973.65 | 3.066667 | 15.11667 | 28.90 |\n",
       "| TM798 | 166.90000 | 4.6250 | 75441.57 | 4.775000 | 17.32500 | 29.10 |\n",
       "\n"
      ],
      "text/plain": [
       "  Product Miles     Fitness Income   Usage    Education Age  \n",
       "1 TM195    82.78750 2.9625  46418.03 3.087500 15.03750  28.55\n",
       "2 TM498    87.93333 2.9000  48973.65 3.066667 15.11667  28.90\n",
       "3 TM798   166.90000 4.6250  75441.57 4.775000 17.32500  29.10"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate_numerical <- aggregate(cbind(Miles, Fitness,Income,Usage,Education,Age) ~ Product, data = data, FUN = mean)\n",
    "\n",
    "aggregate_numerical"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "c6d1a862",
   "metadata": {
    "papermill": {
     "duration": 0.009773,
     "end_time": "2025-02-28T15:00:37.807928",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.798155",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Let's visualize this using bar graphs.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "id": "42eb862b",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:37.831188Z",
     "iopub.status.busy": "2025-02-28T15:00:37.829597Z",
     "iopub.status.idle": "2025-02-28T15:00:38.636888Z",
     "shell.execute_reply": "2025-02-28T15:00:38.634926Z"
    },
    "papermill": {
     "duration": 0.822157,
     "end_time": "2025-02-28T15:00:38.639900",
     "exception": false,
     "start_time": "2025-02-28T15:00:37.817743",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "image/png": "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\n5v4fJqvWzKSI2I6L/zO5ZmTOqW+a1r0xs3oA/w8XndIwWkREVOt5EYlMbtS0fkzhCap0a376\n21dN6hLDhR0069jbf9sSukSn/ikiIqe2LJi46LuzmaYiS846/uYnRzIeXTmxS1yIiNRrVOOX\n/g8s3Zc6tmHMqd3pMY3bt2/fRMrB5Wdk9+vKyb9Gd5WTG0rM6OEGoct/OdN40jM3tK0sIskp\nT67v++Ab/2Y+VjfKHzLSh9Zv3/7i/4tp+9fMy6r78oOdfJiRv6EXFM/Ijl5QcXqBB9Ghimdk\nR4fyTodyt1T8Nt1U566bRUTRRwyoHPblL2dFJLRyl/8MrjOzzyseD8t/RNUeWFWOv/l3ZsGQ\n/au+jWs2LPRCy8U06Tt5xpznn51YZMbMv/YrutCucflnwvWG6u2jjHv+d1REdqTnxbaKseak\nnziV6v0LDUrMSETSDn4w+9PcqU/eUXhG5xmpNlX0hgv/6OhCdYpi9eIlFO5kZKdaM+Y99d6N\nkyfEBSnixxn5G3pBAb/dZ+gFAYQOVcBvd7+A7lDuFnaxQYo5w2z/++oa4Uc/Omr/u/btNVIP\nzi+PyPyFzjisdcIPK3fnf1TNK7afbjv44v0ihqjEevXqJSfXLjJfSNVKqi1nW0b+v1yqNe3X\nDFPmX+dE5NdM88nvFt5514ARwwbe0X/o8vU7vZFIgZIyspmOz5q6+vqJM1LCLjmh6ywjRQl5\nuFvNP+a9+MPuQyf+OfjuwieDo5reVyvSW/mUnFGBQ/99+mB87/uaxto/+m9G/oZecIH/7jP0\nggBCh7rAf3e/QO5Q7hZ2wxIjD74+5588q4jUvCXx3w0v24ef2HSyPMLyKw0Gdjr3+6s5NlVE\nMo+99a+t6sBaESXOFVV7WPMow/ypi378be/+37e98vS4sxab2PKspqOZ+uBKCe1fWv3Oe6tX\nPNK7wcevTFm5N7X887jIdUafzJ2a2nr0sCsS3MxIRNoNHVvHsnvOpLEjRj/61ubjvR5+0MsX\n4rizjWym47PePnDbxNsCIiN/Qy9wnZH4wT5DLwggdCjXGYkf7H6B26HcXejIFcNzTn+QnFDr\nr1xr8sBh2afebDdkwnMzHrn5hT/imhQ9XawxEdXvrq07u/Jwuojs/8938S2HGi+9INQhRR8x\nddH0tnGnls+dMuWZlzIbDb2rUpguJEpvSHznnXfmjrm1coTREJnQqd+EW+NDv3z1j/LP4yIX\n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"
     },
     "metadata": {
      "image/png": {
       "height": 420,
       "width": 420
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "data_long <- melt(aggregate_numerical, id.vars = \"Product\")\n",
    "\n",
    "ggplot(data_long, aes(x = Product, y = value, fill = Product)) +\n",
    "  geom_bar(stat = \"identity\", position = \"dodge\") +\n",
    "  facet_wrap(~variable, scales = \"free\") +  \n",
    "  theme_minimal() +\n",
    "  ggtitle(\"Mean Customer Characteristics by Treadmill Product\") +\n",
    "  xlab(\"Treadmill Product\") +\n",
    "  ylab(\"Mean Value\") +\n",
    "  theme(legend.position = \"none\")"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "b16ad952",
   "metadata": {
    "papermill": {
     "duration": 0.051225,
     "end_time": "2025-02-28T15:00:38.707363",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.656138",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**Individuals with higher expected miles, level of fitness, Income, Usage and even education prefer TM798.**"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "id": "aabe4a57",
   "metadata": {
    "execution": {
     "iopub.execute_input": "2025-02-28T15:00:38.732498Z",
     "iopub.status.busy": "2025-02-28T15:00:38.730798Z",
     "iopub.status.idle": "2025-02-28T15:00:38.786766Z",
     "shell.execute_reply": "2025-02-28T15:00:38.785552Z"
    },
    "papermill": {
     "duration": 0.070577,
     "end_time": "2025-02-28T15:00:38.788517",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.717940",
     "status": "completed"
    },
    "tags": []
   },
   "outputs": [
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Product</th><th scope=col>MaritalStatus</th><th scope=col>Gender</th><th scope=col>Miles</th><th scope=col>Fitness</th><th scope=col>Income</th><th scope=col>Usage</th><th scope=col>Education</th><th scope=col>Age</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>1</th><td>TM195</td><td>Partnered</td><td>Female</td><td>74.92593</td><td>2.851852</td><td>46153.78</td><td>2.851852</td><td>14.88889</td><td>28.33333</td></tr>\n",
       "\t<tr><th scope=row>4</th><td>TM195</td><td>Single   </td><td>Female</td><td>78.84615</td><td>2.923077</td><td>45742.38</td><td>3.000000</td><td>15.53846</td><td>28.69231</td></tr>\n",
       "\t<tr><th scope=row>7</th><td>TM195</td><td>Partnered</td><td>Male  </td><td>80.19048</td><td>2.857143</td><td>50028.00</td><td>3.285714</td><td>15.42857</td><td>31.38095</td></tr>\n",
       "\t<tr><th scope=row>10</th><td>TM195</td><td>Single   </td><td>Male  </td><td>99.52632</td><td>3.263158</td><td>43265.84</td><td>3.263158</td><td>14.47368</td><td>25.63158</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 9\n",
       "\\begin{tabular}{r|lllllllll}\n",
       "  & Product & MaritalStatus & Gender & Miles & Fitness & Income & Usage & Education & Age\\\\\n",
       "  & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t1 & TM195 & Partnered & Female & 74.92593 & 2.851852 & 46153.78 & 2.851852 & 14.88889 & 28.33333\\\\\n",
       "\t4 & TM195 & Single    & Female & 78.84615 & 2.923077 & 45742.38 & 3.000000 & 15.53846 & 28.69231\\\\\n",
       "\t7 & TM195 & Partnered & Male   & 80.19048 & 2.857143 & 50028.00 & 3.285714 & 15.42857 & 31.38095\\\\\n",
       "\t10 & TM195 & Single    & Male   & 99.52632 & 3.263158 & 43265.84 & 3.263158 & 14.47368 & 25.63158\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 9\n",
       "\n",
       "| <!--/--> | Product &lt;chr&gt; | MaritalStatus &lt;chr&gt; | Gender &lt;chr&gt; | Miles &lt;dbl&gt; | Fitness &lt;dbl&gt; | Income &lt;dbl&gt; | Usage &lt;dbl&gt; | Education &lt;dbl&gt; | Age &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|\n",
       "| 1 | TM195 | Partnered | Female | 74.92593 | 2.851852 | 46153.78 | 2.851852 | 14.88889 | 28.33333 |\n",
       "| 4 | TM195 | Single    | Female | 78.84615 | 2.923077 | 45742.38 | 3.000000 | 15.53846 | 28.69231 |\n",
       "| 7 | TM195 | Partnered | Male   | 80.19048 | 2.857143 | 50028.00 | 3.285714 | 15.42857 | 31.38095 |\n",
       "| 10 | TM195 | Single    | Male   | 99.52632 | 3.263158 | 43265.84 | 3.263158 | 14.47368 | 25.63158 |\n",
       "\n"
      ],
      "text/plain": [
       "   Product MaritalStatus Gender Miles    Fitness  Income   Usage    Education\n",
       "1  TM195   Partnered     Female 74.92593 2.851852 46153.78 2.851852 14.88889 \n",
       "4  TM195   Single        Female 78.84615 2.923077 45742.38 3.000000 15.53846 \n",
       "7  TM195   Partnered     Male   80.19048 2.857143 50028.00 3.285714 15.42857 \n",
       "10 TM195   Single        Male   99.52632 3.263158 43265.84 3.263158 14.47368 \n",
       "   Age     \n",
       "1  28.33333\n",
       "4  28.69231\n",
       "7  31.38095\n",
       "10 25.63158"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Product</th><th scope=col>MaritalStatus</th><th scope=col>Gender</th><th scope=col>Miles</th><th scope=col>Fitness</th><th scope=col>Income</th><th scope=col>Usage</th><th scope=col>Education</th><th scope=col>Age</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>2</th><td>TM498</td><td>Partnered</td><td>Female</td><td>94.00000</td><td>2.933333</td><td>49724.80</td><td>3.333333</td><td>15.20000</td><td>30.00000</td></tr>\n",
       "\t<tr><th scope=row>5</th><td>TM498</td><td>Single   </td><td>Female</td><td>80.21429</td><td>2.785714</td><td>48920.36</td><td>2.928571</td><td>15.21429</td><td>28.14286</td></tr>\n",
       "\t<tr><th scope=row>8</th><td>TM498</td><td>Partnered</td><td>Male  </td><td>87.23810</td><td>2.904762</td><td>49378.29</td><td>2.857143</td><td>15.28571</td><td>30.38095</td></tr>\n",
       "\t<tr><th scope=row>11</th><td>TM498</td><td>Single   </td><td>Male  </td><td>91.10000</td><td>3.000000</td><td>47071.80</td><td>3.300000</td><td>14.50000</td><td>25.20000</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 9\n",
       "\\begin{tabular}{r|lllllllll}\n",
       "  & Product & MaritalStatus & Gender & Miles & Fitness & Income & Usage & Education & Age\\\\\n",
       "  & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t2 & TM498 & Partnered & Female & 94.00000 & 2.933333 & 49724.80 & 3.333333 & 15.20000 & 30.00000\\\\\n",
       "\t5 & TM498 & Single    & Female & 80.21429 & 2.785714 & 48920.36 & 2.928571 & 15.21429 & 28.14286\\\\\n",
       "\t8 & TM498 & Partnered & Male   & 87.23810 & 2.904762 & 49378.29 & 2.857143 & 15.28571 & 30.38095\\\\\n",
       "\t11 & TM498 & Single    & Male   & 91.10000 & 3.000000 & 47071.80 & 3.300000 & 14.50000 & 25.20000\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 9\n",
       "\n",
       "| <!--/--> | Product &lt;chr&gt; | MaritalStatus &lt;chr&gt; | Gender &lt;chr&gt; | Miles &lt;dbl&gt; | Fitness &lt;dbl&gt; | Income &lt;dbl&gt; | Usage &lt;dbl&gt; | Education &lt;dbl&gt; | Age &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|\n",
       "| 2 | TM498 | Partnered | Female | 94.00000 | 2.933333 | 49724.80 | 3.333333 | 15.20000 | 30.00000 |\n",
       "| 5 | TM498 | Single    | Female | 80.21429 | 2.785714 | 48920.36 | 2.928571 | 15.21429 | 28.14286 |\n",
       "| 8 | TM498 | Partnered | Male   | 87.23810 | 2.904762 | 49378.29 | 2.857143 | 15.28571 | 30.38095 |\n",
       "| 11 | TM498 | Single    | Male   | 91.10000 | 3.000000 | 47071.80 | 3.300000 | 14.50000 | 25.20000 |\n",
       "\n"
      ],
      "text/plain": [
       "   Product MaritalStatus Gender Miles    Fitness  Income   Usage    Education\n",
       "2  TM498   Partnered     Female 94.00000 2.933333 49724.80 3.333333 15.20000 \n",
       "5  TM498   Single        Female 80.21429 2.785714 48920.36 2.928571 15.21429 \n",
       "8  TM498   Partnered     Male   87.23810 2.904762 49378.29 2.857143 15.28571 \n",
       "11 TM498   Single        Male   91.10000 3.000000 47071.80 3.300000 14.50000 \n",
       "   Age     \n",
       "2  30.00000\n",
       "5  28.14286\n",
       "8  30.38095\n",
       "11 25.20000"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<table class=\"dataframe\">\n",
       "<caption>A data.frame: 4 × 9</caption>\n",
       "<thead>\n",
       "\t<tr><th></th><th scope=col>Product</th><th scope=col>MaritalStatus</th><th scope=col>Gender</th><th scope=col>Miles</th><th scope=col>Fitness</th><th scope=col>Income</th><th scope=col>Usage</th><th scope=col>Education</th><th scope=col>Age</th></tr>\n",
       "\t<tr><th></th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;chr&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th><th scope=col>&lt;dbl&gt;</th></tr>\n",
       "</thead>\n",
       "<tbody>\n",
       "\t<tr><th scope=row>3</th><td>TM798</td><td>Partnered</td><td>Female</td><td>215.0000</td><td>5.000000</td><td>84972.25</td><td>5.250000</td><td>17.50000</td><td>29.00000</td></tr>\n",
       "\t<tr><th scope=row>6</th><td>TM798</td><td>Single   </td><td>Female</td><td>133.3333</td><td>4.000000</td><td>58516.00</td><td>4.666667</td><td>18.33333</td><td>24.33333</td></tr>\n",
       "\t<tr><th scope=row>9</th><td>TM798</td><td>Partnered</td><td>Male  </td><td>176.3158</td><td>4.631579</td><td>81431.37</td><td>4.842105</td><td>17.42105</td><td>30.00000</td></tr>\n",
       "\t<tr><th scope=row>12</th><td>TM798</td><td>Single   </td><td>Male  </td><td>147.5714</td><td>4.642857</td><td>68216.43</td><td>4.571429</td><td>16.92857</td><td>28.92857</td></tr>\n",
       "</tbody>\n",
       "</table>\n"
      ],
      "text/latex": [
       "A data.frame: 4 × 9\n",
       "\\begin{tabular}{r|lllllllll}\n",
       "  & Product & MaritalStatus & Gender & Miles & Fitness & Income & Usage & Education & Age\\\\\n",
       "  & <chr> & <chr> & <chr> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl> & <dbl>\\\\\n",
       "\\hline\n",
       "\t3 & TM798 & Partnered & Female & 215.0000 & 5.000000 & 84972.25 & 5.250000 & 17.50000 & 29.00000\\\\\n",
       "\t6 & TM798 & Single    & Female & 133.3333 & 4.000000 & 58516.00 & 4.666667 & 18.33333 & 24.33333\\\\\n",
       "\t9 & TM798 & Partnered & Male   & 176.3158 & 4.631579 & 81431.37 & 4.842105 & 17.42105 & 30.00000\\\\\n",
       "\t12 & TM798 & Single    & Male   & 147.5714 & 4.642857 & 68216.43 & 4.571429 & 16.92857 & 28.92857\\\\\n",
       "\\end{tabular}\n"
      ],
      "text/markdown": [
       "\n",
       "A data.frame: 4 × 9\n",
       "\n",
       "| <!--/--> | Product &lt;chr&gt; | MaritalStatus &lt;chr&gt; | Gender &lt;chr&gt; | Miles &lt;dbl&gt; | Fitness &lt;dbl&gt; | Income &lt;dbl&gt; | Usage &lt;dbl&gt; | Education &lt;dbl&gt; | Age &lt;dbl&gt; |\n",
       "|---|---|---|---|---|---|---|---|---|---|\n",
       "| 3 | TM798 | Partnered | Female | 215.0000 | 5.000000 | 84972.25 | 5.250000 | 17.50000 | 29.00000 |\n",
       "| 6 | TM798 | Single    | Female | 133.3333 | 4.000000 | 58516.00 | 4.666667 | 18.33333 | 24.33333 |\n",
       "| 9 | TM798 | Partnered | Male   | 176.3158 | 4.631579 | 81431.37 | 4.842105 | 17.42105 | 30.00000 |\n",
       "| 12 | TM798 | Single    | Male   | 147.5714 | 4.642857 | 68216.43 | 4.571429 | 16.92857 | 28.92857 |\n",
       "\n"
      ],
      "text/plain": [
       "   Product MaritalStatus Gender Miles    Fitness  Income   Usage    Education\n",
       "3  TM798   Partnered     Female 215.0000 5.000000 84972.25 5.250000 17.50000 \n",
       "6  TM798   Single        Female 133.3333 4.000000 58516.00 4.666667 18.33333 \n",
       "9  TM798   Partnered     Male   176.3158 4.631579 81431.37 4.842105 17.42105 \n",
       "12 TM798   Single        Male   147.5714 4.642857 68216.43 4.571429 16.92857 \n",
       "   Age     \n",
       "3  29.00000\n",
       "6  24.33333\n",
       "9  30.00000\n",
       "12 28.92857"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "aggregate_all <- aggregate(cbind(Miles, Fitness,Income,Usage,Education,Age) ~ Product + MaritalStatus + Gender, data = data, FUN = mean)\n",
    "\n",
    "aggregate_TM195 <- subset(aggregate_all, Product == \"TM195\")\n",
    "\n",
    "aggregate_TM498 <- subset(aggregate_all, Product == \"TM498\")\n",
    "\n",
    "aggregate_TM798 <- subset(aggregate_all, Product == \"TM798\")\n",
    "\n",
    "aggregate_TM195\n",
    "\n",
    "aggregate_TM498\n",
    "\n",
    "aggregate_TM798"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "8350899d",
   "metadata": {
    "papermill": {
     "duration": 0.010997,
     "end_time": "2025-02-28T15:00:38.815305",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.804308",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "**As we can see in this analysis, the products are quite similar, however, a female who's planning to run more than 80 and less than 130 miles per week should take the TM498.**"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "3ce1532e",
   "metadata": {
    "papermill": {
     "duration": 0.011763,
     "end_time": "2025-02-28T15:00:38.838123",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.826360",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Conclusions"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "7b652236",
   "metadata": {
    "papermill": {
     "duration": 0.010762,
     "end_time": "2025-02-28T15:00:38.859741",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.848979",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. Partnered Individuals tend to purchase more treadmills than single individuals in general.\n",
    "2. Partnered females specifically prefer the TM195, and partnered males tend to purchase the TM498, while single males prefer the TM195 or TM798 depending on income and fitness goals. Additionally, females with miles between 80 and 130 prefer the TM498\n",
    "3. The highest rates of purchases for the TM798 model is by males, and customers with higher income, usage, miles, education, fitness, and age tend to purchase this model in general.\n",
    "4. Someone opting for the cheapest model should purchase the TM195."
   ]
  },
  {
   "cell_type": "markdown",
   "id": "823cc3ee",
   "metadata": {
    "papermill": {
     "duration": 0.011036,
     "end_time": "2025-02-28T15:00:38.881605",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.870569",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "# Recommendations"
   ]
  },
  {
   "cell_type": "markdown",
   "id": "733423f3",
   "metadata": {
    "papermill": {
     "duration": 0.01087,
     "end_time": "2025-02-28T15:00:38.903513",
     "exception": false,
     "start_time": "2025-02-28T15:00:38.892643",
     "status": "completed"
    },
    "tags": []
   },
   "source": [
    "1. Increase advertisments for partnered individuals.\n",
    "2. middle-class females, especially partnered females should be recommended the TM498.\n",
    "3. Higher-class customers with great fitness level and dedicated high-mileage runner should purchase the TM798 model. This could be advertised for gym owners or well renowned fitness influencers.\n",
    "4. People with lower income and moderate fitness goals who aim for an average of 3 uses per week (a regular run) should purchase the TM195 model. Advertisments could be placed on regular running tracks along the beach or a forest for this specific model."
   ]
  }
 ],
 "metadata": {
  "kaggle": {
   "accelerator": "none",
   "dataSources": [
    {
     "datasetId": 375151,
     "sourceId": 728976,
     "sourceType": "datasetVersion"
    }
   ],
   "dockerImageVersionId": 30749,
   "isGpuEnabled": false,
   "isInternetEnabled": true,
   "language": "r",
   "sourceType": "notebook"
  },
  "kernelspec": {
   "display_name": "R",
   "language": "R",
   "name": "ir"
  },
  "language_info": {
   "codemirror_mode": "r",
   "file_extension": ".r",
   "mimetype": "text/x-r-source",
   "name": "R",
   "pygments_lexer": "r",
   "version": "4.4.0"
  },
  "papermill": {
   "default_parameters": {},
   "duration": 70.695779,
   "end_time": "2025-02-28T15:00:39.036549",
   "environment_variables": {},
   "exception": null,
   "input_path": "__notebook__.ipynb",
   "output_path": "__notebook__.ipynb",
   "parameters": {},
   "start_time": "2025-02-28T14:59:28.340770",
   "version": "2.6.0"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
