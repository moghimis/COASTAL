#!/bin/bash
# moghimis@gmail.com 
# Script to compile COASTAL NEMS application


export ROOTDIR=`pwd`
export CHOSEN_MODULE=hera/coastal_app            #TODO: use full path like others below 
export CONF_FILE=$ROOTDIR/conf/configure.coastal_app.hera
export EXTERNALS_NEMS=$ROOTDIR/conf/externals.nems.hera
export ESMF_VERSION_DEFINE=$ROOTDIR/conf/ESMFVersionDefine_ESMF_NUOPC.h

rm -rf ADCIRC-INSTALL  ATMESH ATMESH-INSTALL HWRFDATA HWRFDATA-INSTALL WW3DATA WW3DATA-INSTALL


./NEMS/NEMSAppBuilder   app=HWRF2ADC  reuse:no rebuild:yes +ADCIRC  +HWRFDATA  +WW3DATA  +ATMESH  &> NEMSAppBuilder.log &
#./NEMS/NEMSAppBuilder   app=HWRF2ADC  reuse:no rebuild:yes +ADCIRC   +ATMESH  #&> NEMSAppBuilder.log


#make nems COMP=,adcirc,ww3data,hwrfdata, ADCIRC_DIR=/scratch4/COASTAL/coastal/save/Saeed.Moghimi/models/NEMS/tests/NSEModel_new_NEMS_try02/branches/WW3ADC/ADCIRC-INSTALL WW3DATA_DIR=/scratch4/COASTAL/coastal/save/Saeed.Moghimi/models/NEMS/tests/NSEModel_new_NEMS_try02/branches/WW3ADC/WW3DATA-INSTALL HWRFDATA_DIR=/scratch4/COASTAL/coastal/save/Saeed.Moghimi/models/NEMS/tests/NSEModel_new_NEMS_try02/branches/WW3ADC/HWRFDATA-INSTALL

#echo " >>>  HELP  >>>>>>>>>>>>>>>>>>>>>>>>"
#./NEMS/NEMSAppBuilder   --help


