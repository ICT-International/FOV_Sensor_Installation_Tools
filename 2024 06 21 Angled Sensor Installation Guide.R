##Calculator for the position of clear space and obstacle free observation for Field of View sensors
#Ed Lefley
#ICT International
#Date: 2024 06 21

#Intended for use with any sensor where there is the potential to be angled or mounted vertically above the area of interest.
#This can be used with NDVI sensor, infrared temperature sensors, etc that have a specified field of view and require a clear area to measure.

#Field of View; preset as 30 degrees
FOV <- 30

#Height of mounting, in metres
HM <- 2

##Mounting at an angle, looking outward from a pole or similar

#Mounting of angle, relative to vertical. 45 default
MA <- 45

#Calculate the distance from mounting point:
DMP <- (tan((MA-(FOV/2))*pi/180)*HM)

#Far edge of measurement area
FMA <- (tan((MA+(FOV/2))*pi/180)*HM)

##Mounting directly above the area to be measured
#Calculate the distance from the mounting point
VDMP <- ((tan((FOV/2)*pi/180))*HM)

###Clear ground is x metres away, so what height does the sensor need to be?

##Rearrange DMP to suggest mounting height (SMH)

#Set clear area distance away, in metres (equivalent to DMP)
CA <- 2

#Suggested mounting height SMH in metres
SMH = tan((90-(MA-FOV/2))*pi/180)*CA