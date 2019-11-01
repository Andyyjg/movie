String getPlayerName(List casts){
  var str='';
  for(var i=0;i<casts.length;i++){
    if(i<casts.length-1){
      str+=(casts[i]['name']+',');
    }
    else{
      str+=casts[i]['name'];
    }

  }
  if(str.length>10){
    return str.substring(0,10)+'...';
  }
  return str;
}