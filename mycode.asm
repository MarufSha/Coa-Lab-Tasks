.model small
.stack 100h 

.DATA  
msg DB "The 1st Number is: $"   
msg1 DB "The 2nd Number is: $"   
msg2 DB "The Sum of two Numbers are: $"  
.code  
main proc  
           
   mov ax,@data
   mov ds,ax
    
   lea dx,msg      ; 1st
   mov ah,9        ; Msg
   int 21h         ; Print
           
   mov ah, 1      ; Input
   int 21h        ; Taken
   
   mov bl, al     ; Storing Value inside bl
   int 21h
  
   mov ah,2       ;   Print 1st value Here
   
   mov dl,0ah     ;   Line
   int 21h        ;   Gap
   mov dl,0dh     ;   Is
   int 21h        ;   Here
              
   lea dx,msg1    ; 2nd
   mov ah,9       ; Msg
   int 21h        ; Print      
              
   mov ah, 1      ; Input
   int 21h        ; Taken            
              
   mov cl, al     ; Storing Value inside cl
   int 21h
  
   mov ah,2       ;   Print 2nd value Here           
              
   mov dl,0ah     ;   Line
   int 21h        ;   Gap
   mov dl,0dh     ;   Is
   int 21h        ;   Here      
   
   
   lea dx,msg2     ; 3rd
   mov ah,9        ; Msg
   int 21h         ; Print
       
              
   add bl,cl      ; Adding Two Numbers
   sub bl,48      ; Sub 48 to balance
   
   mov dl,bl      ;   Print
   mov ah,2       ;   The
   int 21h        ;   Sum
          
   main endp
end main