.data
myI db 0
myJ db 0

.code
main proc
         
mov ax,@data
mov ds,ax
         
mov bx,0
mov ax,0   
mov cx,0
mov cl,5   
mov dh,cl
mov al,2
inc dh

label1:
mov cl,10  
mov myJ,0 

   label2:  
   mov bl,0
   mov al,2
   mul myJ
   add bl,myI
   add bx,ax
   add myJ,1
   loop label2
   
add myI,1
dec dh
mov cl,dh
loop label1

main endp
end main
    




