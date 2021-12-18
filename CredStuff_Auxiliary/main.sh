#!/bin/sh 
googler_call="python3 /home/your_user/Desktop/CredStuff_Auxiliary/googler/googler" #aqui vocẽ deve colocar onde está a tool googler em seu ambiente
anonfiles_search1="site:throwbin.io OR site:pastebin.com OR site:cdn-*anonfiles.com AND intext:@" 
anonfiles_search2=$anonfiles_search1$1
anonfiles_unfilter="--unfilter"
googler_count="--count $2"
echo $googler_call $anonfiles_search2 $googler_count $anonfiles_unfilter > ./temp/dork_test1.sh
chmod +x ./temp/dork_test1.sh
sh ./temp/dork_test1.sh | grep $1

	
