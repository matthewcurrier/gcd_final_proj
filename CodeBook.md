CodeBook
========

Description of data set
-----------------------

The data here is the result of joining many different files into a
single data set, and then performing a summarization and aggregation of
that data set. This data set, and the associated study, involved human
activity recognition using smartphones. The original data can be
downloaded from from
[here](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
There were numerous measurements taken as a part of this study, 561 to
be exact, but only some of these variables were of interest. In
particular, measurements that involved a mean or standard deviation were
deemed important, and therefore isolated.

### Aggregation

The final data set is an aggregation of the cleaned up data set. The two
variables uses for aggregation were:

1.  subject\_id
2.  activity\_name

### Summarization

The data was summarized according to mean. The dplyr package was used to
summarize this data, spefically the summarize\_each function.

Experimental design
-------------------

The original experimental design is best summarized in the zip file's
original README doc.

> The experiments have been carried out with a group of 30 volunteers
> within an age bracket of 19-48 years. Each person performed six
> activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
> STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
> waist. Using its embedded accelerometer and gyroscope, we captured
> 3-axial linear acceleration and 3-axial angular velocity at a constant
> rate of 50Hz. The experiments have been video-recorded to label the
> data manually. The obtained dataset has been randomly partitioned into
> two sets, where 70% of the volunteers was selected for generating the
> training data and 30% the test data.

> The sensor signals (accelerometer and gyroscope) were pre-processed by
> applying noise filters and then sampled in fixed-width sliding windows
> of 2.56 sec and 50% overlap (128 readings/window). The sensor
> acceleration signal, which has gravitational and body motion
> components, was separated using a Butterworth low-pass filter into
> body acceleration and gravity. The gravitational force is assumed to
> have only low frequency components, therefore a filter with 0.3 Hz
> cutoff frequency was used. From each window, a vector of features was
> obtained by calculating variables from the time and frequency domain.
> See 'features\_info.txt' for more details.

Variables and characters
------------------------

<table>
<thead>
<tr class="header">
<th align="right">X</th>
<th align="left">vars</th>
<th align="left">types</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="right">1</td>
<td align="left">subject_id</td>
<td align="left">integer</td>
</tr>
<tr class="even">
<td align="right">2</td>
<td align="left">activity_name</td>
<td align="left">character</td>
</tr>
<tr class="odd">
<td align="right">3</td>
<td align="left">tBodyAcc-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">4</td>
<td align="left">tBodyAcc-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">5</td>
<td align="left">tBodyAcc-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">6</td>
<td align="left">tBodyAcc-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">7</td>
<td align="left">tBodyAcc-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">8</td>
<td align="left">tBodyAcc-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">9</td>
<td align="left">tGravityAcc-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">10</td>
<td align="left">tGravityAcc-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">11</td>
<td align="left">tGravityAcc-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">12</td>
<td align="left">tGravityAcc-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">13</td>
<td align="left">tGravityAcc-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">14</td>
<td align="left">tGravityAcc-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">15</td>
<td align="left">tBodyAccJerk-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">16</td>
<td align="left">tBodyAccJerk-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">17</td>
<td align="left">tBodyAccJerk-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">18</td>
<td align="left">tBodyAccJerk-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">19</td>
<td align="left">tBodyAccJerk-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">20</td>
<td align="left">tBodyAccJerk-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">21</td>
<td align="left">tBodyGyro-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">22</td>
<td align="left">tBodyGyro-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">23</td>
<td align="left">tBodyGyro-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">24</td>
<td align="left">tBodyGyro-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">25</td>
<td align="left">tBodyGyro-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">26</td>
<td align="left">tBodyGyro-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">27</td>
<td align="left">tBodyGyroJerk-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">28</td>
<td align="left">tBodyGyroJerk-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">29</td>
<td align="left">tBodyGyroJerk-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">30</td>
<td align="left">tBodyGyroJerk-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">31</td>
<td align="left">tBodyGyroJerk-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">32</td>
<td align="left">tBodyGyroJerk-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">33</td>
<td align="left">tBodyAccMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">34</td>
<td align="left">tBodyAccMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">35</td>
<td align="left">tGravityAccMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">36</td>
<td align="left">tGravityAccMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">37</td>
<td align="left">tBodyAccJerkMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">38</td>
<td align="left">tBodyAccJerkMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">39</td>
<td align="left">tBodyGyroMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">40</td>
<td align="left">tBodyGyroMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">41</td>
<td align="left">tBodyGyroJerkMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">42</td>
<td align="left">tBodyGyroJerkMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">43</td>
<td align="left">fBodyAcc-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">44</td>
<td align="left">fBodyAcc-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">45</td>
<td align="left">fBodyAcc-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">46</td>
<td align="left">fBodyAcc-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">47</td>
<td align="left">fBodyAcc-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">48</td>
<td align="left">fBodyAcc-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">49</td>
<td align="left">fBodyAcc-meanFreq()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">50</td>
<td align="left">fBodyAcc-meanFreq()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">51</td>
<td align="left">fBodyAcc-meanFreq()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">52</td>
<td align="left">fBodyAccJerk-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">53</td>
<td align="left">fBodyAccJerk-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">54</td>
<td align="left">fBodyAccJerk-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">55</td>
<td align="left">fBodyAccJerk-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">56</td>
<td align="left">fBodyAccJerk-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">57</td>
<td align="left">fBodyAccJerk-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">58</td>
<td align="left">fBodyAccJerk-meanFreq()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">59</td>
<td align="left">fBodyAccJerk-meanFreq()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">60</td>
<td align="left">fBodyAccJerk-meanFreq()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">61</td>
<td align="left">fBodyGyro-mean()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">62</td>
<td align="left">fBodyGyro-mean()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">63</td>
<td align="left">fBodyGyro-mean()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">64</td>
<td align="left">fBodyGyro-std()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">65</td>
<td align="left">fBodyGyro-std()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">66</td>
<td align="left">fBodyGyro-std()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">67</td>
<td align="left">fBodyGyro-meanFreq()-X</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">68</td>
<td align="left">fBodyGyro-meanFreq()-Y</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">69</td>
<td align="left">fBodyGyro-meanFreq()-Z</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">70</td>
<td align="left">fBodyAccMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">71</td>
<td align="left">fBodyAccMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">72</td>
<td align="left">fBodyAccMag-meanFreq()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">73</td>
<td align="left">fBodyBodyAccJerkMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">74</td>
<td align="left">fBodyBodyAccJerkMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">75</td>
<td align="left">fBodyBodyAccJerkMag-meanFreq()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">76</td>
<td align="left">fBodyBodyGyroMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">77</td>
<td align="left">fBodyBodyGyroMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">78</td>
<td align="left">fBodyBodyGyroMag-meanFreq()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">79</td>
<td align="left">fBodyBodyGyroJerkMag-mean()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">80</td>
<td align="left">fBodyBodyGyroJerkMag-std()</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">81</td>
<td align="left">fBodyBodyGyroJerkMag-meanFreq()</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">82</td>
<td align="left">angle(tBodyAccMean,gravity)</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">83</td>
<td align="left">angle(tBodyAccJerkMean),gravityMean)</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">84</td>
<td align="left">angle(tBodyGyroMean,gravityMean)</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">85</td>
<td align="left">angle(tBodyGyroJerkMean,gravityMean)</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">86</td>
<td align="left">angle(X,gravityMean)</td>
<td align="left">numeric</td>
</tr>
<tr class="odd">
<td align="right">87</td>
<td align="left">angle(Y,gravityMean)</td>
<td align="left">numeric</td>
</tr>
<tr class="even">
<td align="right">88</td>
<td align="left">angle(Z,gravityMean)</td>
<td align="left">numeric</td>
</tr>
</tbody>
</table>
