list_alldir(){  
    for file2 in `ls $1`  
    do  
        if [ x"$file2" != x"." -a x"$file2" != x".." ];then  
            if [ -d "$1/$file2" ];then  
                echo "$1/$file2" 
                loc  "$1/$file2"  
                # list_alldir "$1/$file2"  
            fi  
        fi  
    done  
}
list_alldir .
