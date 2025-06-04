#!/bin/bash
PERSON1=Ramesh
PERSON2=Suresh
person3=mahesh

CHECK(){
    if [ $? -e 0 ]
    then 
        echo "calling from script-2"
    fi 
}