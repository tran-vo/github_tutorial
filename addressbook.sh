#!bin/sh
 touch record.txt
 
 add (){
    echo "========ADD========"
    read -p "Name :" name
    read -p "Surname :" sname
    read -p "Email :" email
    read -p "Phone :" phone
    read -p "Confirm(y/n) :" confirm
    if [ $confirm == "y" ]
    then
    echo "$name:$sname:$email:$phone" >> record.txt
    echo "User $name added successful"
    
    fi
    
    echo " "
    read -p "Return to menu"
    
  }
  
  search (){
    echo "==========SEARCH========"
    read -p "Enter search keyword: " key
    
    echo $(cat record.txt | grep $key)
     
    read -p "return to menu"
  }
    
   remove (){
     
     
    echo "========REMOVE========="
    while :
    do 
        read -p "Enter search keyword: " key
        
        echo $(cat record.txt  | grep $key)
        
        var=$(cat record.txt | grep $key | wc -l)
        
        if [ $var -ne 1 ]
           then 
           echo "Must select only one record"
           echo "1. Use diffirent keyword"
           echo "2. Exit"
           read rchoice
           if [$rchoice -eq 2 ]
               then 
               break
           fi
       else
           echo "Do you want to delete this record ?(y/n)"
           read rconfirm
           if  [$rconfirm == "y" ]
           then
                cat record.txt | grep -v $key >> record.txt.tmp
                mv record.txt.tmp record.txt
                break;
           fi
        fi
     done
     
     
     
     }
     edit (){
         
         
         
         echo "========EDIT========"
         while :
         do
          read -p "Enter search keyword: "key
          
          echo $(cat record.txt | grep $key)
          var=$(cat record.txt | grep $key | wc -l)
           
        if [ $var -ne 1 ]
           then 
           echo "Must select only one record"
           echo "1. Use diffirent keyword"
           echo "2. Exit"
           read rchoice
           if [$rchoice -eq 2 ]
               then 
               break
           fi
      else 
          echo "Edit user info, press Enter to skip"
          read -p "Name[$(cat record.txt | grep $key | cut -d ":"  -f 1)]" name
          read -p "Surname[$(cat record.txt | grep $key | cut -d ":" -f 2)]" sname
          read -p "Email[$(cat record.txt | grep $key | cut -d ":" -f 3)]" email
          read -p "phone[$(cat record.txt | grep $key | cut -d ":" -f 4)]" phone
          
          if [ -z "$name" ]
             then 
                var1=$(cat record.txt | grep $key | cut -d ":" -f 1)
             else
                var1=$name
          fi
          
          if [ -z "$sname" ]
             then
                var2=$(cat record.txt | grep $key | cut -d ";" -f 1)
             else
                var2=$name
          fi
          
          if [ -z "$email" ]
             then
                var3=$(cat record.txt | grep $key | cut -d ":" -f 3)
             else
                var3=$email
          fi
          
          if [ -z "$phone" ]
             then 
                var4=$(cat record.txt | grep $kep |cut -d ":" -f 4)
             else
                var4=$phone
          fi
          echo "Confirm edit(y/n)"
          read econfirm
          if [ $econfirm == "y" ]
          then
              cat record.txt | grep -v $key >> record.txt.tmp
              echo "$var1:$var2:$var3:$var4" ..record.txt.tmp
              mv record.txt.tmp record.txt
              break;
          fi
      fi
    done
    
    
    }
    
    
    while :
    do
    echo "-----------------------------------------------------------------------"
    echo "-----------------------------------------------------------------------"
    echo "wellcome to address book"
    echo "1. Search"
    echo "2. Add"
    echo "3. Remove"
    echo "4. Edit"
    echo "5. Exit"
    echo "-----------------------------------------------------------------------"
    echo "-----------------------------------------------------------------------"
    read -p "select an option: " choice
    
    case "$choice" in 
         "1") search
         ;;
         "2") add
         ;;
         "3") remove
         ;;
         "4") edit
         ;;
         "5") break
         ;;
   esac
   done
                
