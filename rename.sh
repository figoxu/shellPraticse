initTestFiles(){
    touch 1.css.gz
    touch 2.css.gz
    touch 3.css.gz
}

renamefiles(){
    for i in `ls|grep css.gz`;
    do
    j=` echo $i| sed  's/.css.gz/.cssgz/g' `
    mv $i $j
    done
}

initTestFiles
renamefiles