
.data 
Arr dw 2,3,4,5

.code
swap proc
   
   mov ax,45
   mov [bx+2],ax
   ret

swap endp

main proc
    
   mov ax,@data
   mov ds,ax
           
   mov di,0
   mov cx,0        
   lea bx,Arr
   mov ax,[bx+2]
   call swap
   mov di,0
   
   label:
   mov ax,[bx+di]
   push ax
   inc di
   inc di
   cmp di,8
   jl label   
   
main endp
end main