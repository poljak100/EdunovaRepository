<?php

//ispisati brojeve od 1¸do 40 odvojeno zarezom
// nakon zadnjeg broja nesmije biti zarez

for($i=1;$i<=40;$i++){
echo $i;
if($i===40){
    break;
}
echo ',';

}