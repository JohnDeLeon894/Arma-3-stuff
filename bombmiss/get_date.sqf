// this script returns an array with added
dettime = _this select 0;// the time for bomb detination
cdate = _this select 1;//gets the date at the time of the original script call
cmin= date select 4;
cdate set [4, _detmin];

xdate = dateToNumber _cdate;

cdate = NumberToDate [date select 0, _xdate];

daReturn= cdate


