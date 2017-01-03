library(data.table)

# List all unique company names
unique(data$company_name)
#Removing space between company names
data$company_name = gsub(" ","",data$company_name)


# subseting data into smaller data sets according to company name
list_comp = split(data, data$company_name)
list2env(list_comp, envir= .GlobalEnv)

# aggregate data according to industry sector
IT = rbind(Apple,Google,Microsoft,Facebook,Oracle,Intel,IBM) 
Finance = rbind(WellsFargo,JPMorganChase,Visa,BankofAmerica,HSBC,Citi,MasterCard) 
Consumer = rbind(Nestle,`P&G`,CocaCola,`Anheuser-Busch`,Toyota,Samsung,Philips)
Health = rbind(`Johnson&Johnson`,NovartisPharmaceuticals,PfizerInc.,Merck,GileadSciences,UnitedHealthGroup,Amgen)
Services = rbind(Amazon,Walmart,TheHomeDepot,TheWaltDisneyCompany,Comcast,CVSHealth,Mcdonalds)
OilandGas = rbind(ExxonMobil,Shell,ChevronStationsInc.,BP,Schlumberger,ConocoPhillips)
Telecom = rbind(`AT&T`,Verizon,Vodafone)
Industrial = rbind(`3M`,UPS,Siemens,Honeywell,BOEING)

#segregating industry by experience level
x=table(IT$experience_level)


