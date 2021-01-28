# SUPPLEMENTARY CODE FOR THE MASTER PROJECT: 
# An Extreme Value Theory Approach to Financial Risk Modeling

# The yearly MADEX data, from 1992 to 2020, was downloaded from Casablanca Stock Exchange's official website.
# This script passes the yearly MADEX data through important data preprocessing steps.

import pandas as pd
from google.colab import files

# MADEX 1992
data1992 = pd.read_html("MADEX 1992.aspx", decimal=',', thousands='.', header = 0)
df1992 = pd.concat(data1992)
df1992.columns = ['Séance', 'Instrument', 'Variation']
MADEX1992 = df1992.to_csv("MADEX 1992.csv", index=False)
MADEX1992 = pd.read_csv("MADEX 1992.csv")

# MADEX 1993
data1993 = pd.read_html("MADEX 1993.aspx", decimal=',', thousands='.', header = 0)
df1993 = pd.concat(data1993)
df1993.columns = ['Séance', 'Instrument', 'Variation']
MADEX1993 = df1993.to_csv("MADEX 1993.csv", index=False)
MADEX1993 = pd.read_csv("MADEX 1993.csv")

# MADEX 1992/1993
MADEX92 = pd.read_csv("MADEX 1992.csv")
MADEX93 = pd.read_csv("MADEX 1993.csv")
MADEX9293 = MADEX92.append(MADEX93)

# MADEX 1994
data1994 = pd.read_html("MADEX 1994.aspx", decimal=',', thousands='.', header = 0)
df1994 = pd.concat(data1994)
df1994.columns = ['Séance', 'Instrument', 'Variation']
MADEX1994 = df1994.to_csv("MADEX 1994.csv", index=False)
MADEX1994 = pd.read_csv("MADEX 1994.csv")

# MADEX 1995
data1995 = pd.read_html("MADEX 1995.aspx", decimal=',', thousands='.', header = 0)
df1995 = pd.concat(data1995)
df1995.columns = ['Séance', 'Instrument', 'Variation']
MADEX1995 = df1995.to_csv("MADEX 1995.csv", index=False)
MADEX1995 = pd.read_csv("MADEX 1995.csv")

# MADEX 1994/1995
MADEX94 = pd.read_csv("MADEX 1994.csv")
MADEX95 = pd.read_csv("MADEX 1995.csv")
MADEX9495 = MADEX94.append(MADEX95)

# MADEX 1996
data1996 = pd.read_html("MADEX 1996.aspx", decimal=',', thousands='.', header = 0)
df1996 = pd.concat(data1996)
df1996.columns = ['Séance', 'Instrument', 'Variation']
MADEX1996 = df1996.to_csv("MADEX 1996.csv", index=False)
MADEX1996 = pd.read_csv("MADEX 1996.csv")

# MADEX 1997
data1997 = pd.read_html("MADEX 1997.aspx", decimal=',', thousands='.', header = 0)
df1997 = pd.concat(data1997)
df1997.columns = ['Séance', 'Instrument', 'Variation']
MADEX1997 = df1997.to_csv("MADEX 1997.csv", index=False)
MADEX1997 = pd.read_csv("MADEX 1997.csv")

# MADEX 1996/1997
MADEX96 = pd.read_csv("MADEX 1996.csv")
MADEX97 = pd.read_csv("MADEX 1997.csv")
MADEX9697 = MADEX96.append(MADEX97)

# MADEX 1998
data1998 = pd.read_html("MADEX 1998.aspx", decimal=',', thousands='.', header = 0)
df1998 = pd.concat(data1998)
df1998.columns = ['Séance', 'Instrument', 'Variation']
MADEX1998 = df1998.to_csv("MADEX 1998.csv", index=False)
MADEX1998 = pd.read_csv("MADEX 1998.csv")

# MADEX 1999
data1999 = pd.read_html("MADEX 1999.aspx", decimal=',', thousands='.', header = 0)
df1999 = pd.concat(data1999)
df1999.columns = ['Séance', 'Instrument', 'Variation']
MADEX1999 = df1999.to_csv("MADEX 1999.csv", index=False)
MADEX1999 = pd.read_csv("MADEX 1999.csv")

# MADEX 1998/1999
MADEX98 = pd.read_csv("MADEX 1998.csv")
MADEX99 = pd.read_csv("MADEX 1999.csv")
MADEX9899 = MADEX98.append(MADEX99)

# MADEX 2000
data2000 = pd.read_html("MADEX 2000.aspx", decimal=',', thousands='.', header = 0)
df2000 = pd.concat(data2000)
df2000.columns = ['Séance', 'Instrument', 'Variation']
MADEX2000 = df2000.to_csv("MADEX 2000.csv", index=False)
MADEX2000 = pd.read_csv("MADEX 2000.csv")

# MADEX 2001
data2001 = pd.read_html("MADEX 2001.aspx", decimal=',', thousands='.', header = 0)
df2001 = pd.concat(data2001)
df2001.columns = ['Séance', 'Instrument', 'Variation']
MADEX2001 = df2001.to_csv("MADEX 2001.csv", index=False)
MADEX2001 = pd.read_csv("MADEX 2001.csv")

# MADEX 2000/2001
MADEX00 = pd.read_csv("MADEX 2000.csv")
MADEX01 = pd.read_csv("MADEX 2001.csv")
MADEX0001 = MADEX00.append(MADEX01)

# MADEX 2002
data2002 = pd.read_html("MADEX 2002.aspx", decimal=',', thousands='.', header = 0)
df2002 = pd.concat(data2002)
df2002.columns = ['Séance', 'Instrument', 'Variation']
MADEX2002 = df2002.to_csv("MADEX 2002.csv", index=False)
MADEX2002 = pd.read_csv("MADEX 2002.csv")

# MADEX 2003
data2003 = pd.read_html("MADEX 2003.aspx", decimal=',', thousands='.', header = 0)
df2003 = pd.concat(data2003)
df2003.columns = ['Séance', 'Instrument', 'Variation']
MADEX2003 = df2003.to_csv("MADEX 2003.csv", index=False)
MADEX2003 = pd.read_csv("MADEX 2003.csv")

# MADEX 2002/2003
MADEX02 = pd.read_csv("MADEX 2002.csv")
MADEX03 = pd.read_csv("MADEX 2003.csv")
MADEX0203 = MADEX02.append(MADEX03)

# MADEX 2004
data2004 = pd.read_html("MADEX 2004.aspx", decimal=',', thousands='.', header = 0)
df2004 = pd.concat(data2004)
df2004.columns = ['Séance', 'Instrument', 'Variation']
MADEX2004 = df2004.to_csv("MADEX 2004.csv", index=False)
MADEX2004 = pd.read_csv("MADEX 2004.csv")

# MADEX 2005
data2005 = pd.read_html("MADEX 2005.aspx", decimal=',', thousands='.', header = 0)
df2005 = pd.concat(data2005)
df2005.columns = ['Séance', 'Instrument', 'Variation']
MADEX2005 = df2005.to_csv("MADEX 2005.csv", index=False)
MADEX2005 = pd.read_csv("MADEX 2005.csv")

# MADEX 2004/2005
MADEX04 = pd.read_csv("MADEX 2004.csv")
MADEX05 = pd.read_csv("MADEX 2005.csv")
MADEX0405 = MADEX04.append(MADEX05)

# MADEX 2006
data2006 = pd.read_html("MADEX 2006.aspx", decimal=',', thousands='.', header = 0)
df2006 = pd.concat(data2006)
df2006.columns = ['Séance', 'Instrument', 'Variation']
MADEX2006 = df2006.to_csv("MADEX 2006.csv", index=False)
MADEX2006 = pd.read_csv("MADEX 2006.csv")

# MADEX 2007
data2007 = pd.read_html("MADEX 2007.aspx", decimal=',', thousands='.', header = 0)
df2007 = pd.concat(data2007)
df2007.columns = ['Séance', 'Instrument', 'Variation']
MADEX2007 = df2007.to_csv("MADEX 2007.csv", index=False)
MADEX2007 = pd.read_csv("MADEX 2007.csv")

# MADEX 2006/2007
MADEX06 = pd.read_csv("MADEX 2006.csv")
MADEX07 = pd.read_csv("MADEX 2007.csv")
MADEX0607 = MADEX06.append(MADEX07)

# MADEX 2008
data2008 = pd.read_html("MADEX 2008.aspx", decimal=',', thousands='.', header = 0)
df2008 = pd.concat(data2008)
df2008.columns = ['Séance', 'Instrument', 'Variation']
MADEX2008 = df2008.to_csv("MADEX 2008.csv", index=False)
MADEX2008 = pd.read_csv("MADEX 2008.csv")

# MADEX 2009
data2009 = pd.read_html("MADEX 2009.aspx", decimal=',', thousands='.', header = 0)
df2009 = pd.concat(data2009)
df2009.columns = ['Séance', 'Instrument', 'Variation']
MADEX2009 = df2009.to_csv("MADEX 2009.csv", index=False)
MADEX2009 = pd.read_csv("MADEX 2009.csv")

# MADEX 2008/2009
MADEX08 = pd.read_csv("MADEX 2008.csv")
MADEX09 = pd.read_csv("MADEX 2009.csv")
MADEX0809 = MADEX08.append(MADEX09)

# MADEX 2010
data2010 = pd.read_html("MADEX 2010.aspx", decimal=',', thousands='.', header = 0)
df2010 = pd.concat(data2010)
df2010.columns = ['Séance', 'Instrument', 'Variation']
MADEX2010 = df2010.to_csv("MADEX 2010.csv", index=False)
MADEX2010 = pd.read_csv("MADEX 2010.csv")

# MADEX 2011
data2011 = pd.read_html("MADEX 2011.aspx", decimal=',', thousands='.', header = 0)
df2011 = pd.concat(data2011)
df2011.columns = ['Séance', 'Instrument', 'Variation']
MADEX2011 = df2011.to_csv("MADEX 2011.csv", index=False)
MADEX2011 = pd.read_csv("MADEX 2011.csv")

# MADEX 2010/2011
MADEX10 = pd.read_csv("MADEX 2010.csv")
MADEX11 = pd.read_csv("MADEX 2011.csv")
MADEX1011 = MADEX10.append(MADEX11)

# MADEX 2012
data2012 = pd.read_html("MADEX 2012.aspx", decimal=',', thousands='.', header = 0)
df2012 = pd.concat(data2012)
df2012.columns = ['Séance', 'Instrument', 'Variation']
MADEX2012 = df2012.to_csv("MADEX 2012.csv", index=False)
MADEX2012 = pd.read_csv("MADEX 2012.csv")

# MADEX 2013
data2013 = pd.read_html("MADEX 2013.aspx", decimal=',', thousands='.', header = 0)
df2013 = pd.concat(data2013)
df2013.columns = ['Séance', 'Instrument', 'Variation']
MADEX2013 = df2013.to_csv("MADEX 2013.csv", index=False)
MADEX2013 = pd.read_csv("MADEX 2013.csv")

# MADEX 2012/2013
MADEX12 = pd.read_csv("MADEX 2012.csv")
MADEX13 = pd.read_csv("MADEX 2013.csv")
MADEX1213 = MADEX12.append(MADEX13)

# MADEX 2014
data2014 = pd.read_html("MADEX 2014.aspx", decimal=',', thousands='.', header = 0)
df2014 = pd.concat(data2014)
df2014.columns = ['Séance', 'Instrument', 'Variation']
MADEX2014 = df2014.to_csv("MADEX 2014.csv", index=False)
MADEX2014 = pd.read_csv("MADEX 2014.csv")

# MADEX 2015
data2015 = pd.read_html("MADEX 2015.aspx", decimal=',', thousands='.', header = 0)
df2015 = pd.concat(data2015)
df2015.columns = ['Séance', 'Instrument', 'Variation']
MADEX2015 = df2015.to_csv("MADEX 2015.csv", index=False)
MADEX2015 = pd.read_csv("MADEX 2015.csv")

# MADEX 2014/2015
MADEX14 = pd.read_csv("MADEX 2014.csv")
MADEX15 = pd.read_csv("MADEX 2015.csv")
MADEX1415 = MADEX14.append(MADEX15)

# MADEX 2016
data2016 = pd.read_html("MADEX 2016.aspx", decimal=',', thousands='.', header = 0)
df2016 = pd.concat(data2016)
df2016.columns = ['Séance', 'Instrument', 'Variation']
MADEX2016 = df2016.to_csv("MADEX 2016.csv", index=False)
MADEX2016 = pd.read_csv("MADEX 2016.csv")

# MADEX 2017
data2017 = pd.read_html("MADEX 2017.aspx", decimal=',', thousands='.', header = 0)
df2017 = pd.concat(data2017)
df2017.columns = ['Séance', 'Instrument', 'Variation']
MADEX2017 = df2017.to_csv("MADEX 2017.csv", index=False)
MADEX2017 = pd.read_csv("MADEX 2017.csv")

# MADEX 2016/2017
MADEX16 = pd.read_csv("MADEX 2016.csv")
MADEX17 = pd.read_csv("MADEX 2017.csv")
MADEX1617 = MADEX16.append(MADEX17)

# MADEX 2018
data2018 = pd.read_html("MADEX 2018.aspx", decimal=',', thousands='.', header = 0)
df2018 = pd.concat(data2018)
df2018.columns = ['Séance', 'Instrument', 'Variation']
MADEX2018 = df2018.to_csv("MADEX 2018.csv", index=False)
MADEX2018 = pd.read_csv("MADEX 2018.csv")

# MADEX 2019
data2019 = pd.read_html("MADEX 2019.aspx", decimal=',', thousands='.', header = 0)
df2019 = pd.concat(data2019)
df2019.columns = ['Séance', 'Instrument', 'Variation']
MADEX2019 = df2019.to_csv("MADEX 2019.csv", index=False)
MADEX2019 = pd.read_csv("MADEX 2019.csv")

# MADEX 2018/2019
MADEX18 = pd.read_csv("MADEX 2018.csv")
MADEX19 = pd.read_csv("MADEX 2019.csv")
MADEX1819 = MADEX18.append(MADEX19)

# MADEX 2020
data2020 = pd.read_html("MADEX 2020.aspx", decimal=',', thousands='.', header = 0)
df2020 = pd.concat(data2020)
df2020.columns = ['Séance', 'Instrument', 'Variation']
MADEX2020 = df2020.to_csv("MADEX 2020.csv", index=False)
MADEX2020 = pd.read_csv("MADEX 2020.csv")

# MADEX 1992/1995
MADEX9295 = MADEX9293.append(MADEX9495)

# MADEX 1992/1997
MADEX9297 = MADEX9295.append(MADEX9697)

# MADEX 1992/1999
MADEX9299 = MADEX9297.append(MADEX9899)

# MADEX 1992/2001
MADEX9201 = MADEX9299.append(MADEX0001)

# MADEX 1992/2003
MADEX9203 = MADEX9201.append(MADEX0203)

# MADEX 1992/2005
MADEX9205 = MADEX9203.append(MADEX0405)

# MADEX 1992/2007
MADEX9207 = MADEX9205.append(MADEX0607)

# MADEX 1992/2009
MADEX9209 = MADEX9207.append(MADEX0809)

# MADEX 1992/2011
MADEX9211 = MADEX9209.append(MADEX1011)

# MADEX 1992/2013
MADEX9213 = MADEX9211.append(MADEX1213)

# MADEX 1992/2015
MADEX9215 = MADEX9213.append(MADEX1415)

# MADEX 1992/2017
MADEX9217 = MADEX9215.append(MADEX1617)

# MADEX 1992/2019
MADEX9219 = MADEX9217.append(MADEX1819)

# MADEX 1992/2020
MADEX9220 = MADEX9219.append(MADEX2020, ignore_index=True)

# MADEX to CSV
MADEX = MADEX9220.to_csv('MADEX.csv', index=False)
files.download('MADEX.csv')