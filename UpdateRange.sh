IP_Trans=python ./serialize/main.py;
AS_http=
EU_http=
NA_http=
SA_http=
AF_http=
OC_http=
AN_http=

AS_file_src=./Asia/AS
EU_file_src=./Europe/EU
NA_file_src=./NorthAmerica/NA
SA_file_src=./SouthAmerica/SA
AF_file_src=./Africa/AF
OC_file_src=./Oceania/OC
AN_file_src=./Antarctica/AN

AS_file_dst=./Asia/AS.cidr
EU_file_dst=./Europe/EU.cidr
NA_file_dst=./NorthAmerica/NA.cidr
SA_file_dst=./SouthAmerica/SA.cidr
AF_file_dst=./Africa/AF.cidr
OC_file_dst=./Oceania/OC.cidr
AN_file_dst=./Antarctica/AN.cidr

folder(){
  if [ ! -d "./Asia" ]; then
    mkdir /Asia
  fi
  if [ ! -d "./Europe" ]; then
    mkdir /Europe
  fi
  if [ ! -d "./NorthAmerica" ]; then
    mkdir /NorthAmerica
  fi
  if [ ! -d "./SouthAmerica" ]; then
    mkdir /SouthAmerica
  fi
  if [ ! -d "./Africa" ]; then
    mkdir /Africa
  fi
  if [ ! -d "./Oceania" ]; then
    mkdir /Oceania
  fi
  if [ ! -d "./Antarctica" ]; then
    mkdir /Antarctica
  fi
}

serialize(){
  python serialize/main.py $AS_file_src $AS_file_dst
  python serialize/main.py $EU_file_src $EU_file_dst
  python serialize/main.py $NA_file_src $NA_file_dst
  python serialize/main.py $SA_file_src $SA_file_dst
  python serialize/main.py $AF_file_src $AF_file_dst
  python serialize/main.py $OC_file_src $OC_file_dst
  python serialize/main.py $AN_file_src $AN_file_dst
}