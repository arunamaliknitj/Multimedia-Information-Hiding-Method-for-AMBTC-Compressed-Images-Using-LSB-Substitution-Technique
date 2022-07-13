clc
clear all

orig_image=imread('D:\Aruna Research Papers\AMBTC_Interpolation papers\IP-1\Images 512\Figures for results\14Pixelruler.jpg');
orig_image1=rgb2gray(orig_image);
%orig_image1=[85,86,105,86; 84,95,75,82; 85,90,80,86; 86,86,84,81]
%orig_image1=[149,53,48,90; 113,103,44,66; 77,114,47,44; 73,132,98,48]
%orig_image1=[181,201,202,195; 171,198,201,192; 175,195,193,183;184,201,192,180] %Complex  
ip_image1=double(orig_image1);
ip_image2=ip_image1;
ip_image3=ip_image1; % AMBTC Image
ip_image4=ip_image1; % Stego Image
 thr1=40;
 thr2=70;
 
Capacity=0;
 

for i=1:4:512
    for j=1:4:512
        
       Average=round((ip_image1(i,j)+ip_image1(i,j+1)+ip_image1(i,j+2)+ip_image1(i,j+3)+ip_image1(i+1,j)+ip_image1(i+1,j+1)+ip_image1(i+1,j+2)+ip_image1(i+1,j+3)+ip_image1(i+2,j)+ip_image1(i+2,j+1)+ip_image1(i+2,j+2)+ip_image1(i+2,j+3)+ip_image1(i+3,j)+ip_image1(i+3,j+1)+ip_image1(i+3,j+2)+ip_image1(i+3,j+3))/16);
        x=0;
        y=0;
        count=0;
        
       if (ip_image1(i,j)<Average)
        ip_image2(i,j)=0;
        x=x+ip_image1(i,j);
       else
         count=count+1; 
         y=y+ip_image1(i,j);
        ip_image2(i,j)=1;
       end
       
         if (ip_image1(i,j+1)<Average)
        ip_image2(i,j+1)=0;
         x=x+ip_image1(i,j+1);
       else
        y=y+ip_image1(i,j+1);
        count=count+1; 
        ip_image2(i,j+1)=1;
        
         end
       
        if (ip_image1(i,j+2)<Average)
        ip_image2(i,j+2)=0;
        x=x+ip_image1(i,j+2);
       else
        y=y+ip_image1(i,j+2);
         count=count+1; 
        ip_image2(i,j+2)=1;
        end
       
         if (ip_image1(i,j+3)<Average)
        ip_image2(i,j+3)=0;
       x=x+ip_image1(i,j+3);
       else
        y=y+ip_image1(i,j+3);
         count=count+1; 
        ip_image2(i,j+3)=1;
         end
      %%%%%%%%%%%%%%%%%% 
        if (ip_image1(i+1,j)<Average)
        ip_image2(i+1,j)=0;
      x=x+ip_image1(i+1,j);
       else
        y=y+ip_image1(i+1,j);
         count=count+1; 
        ip_image2(i+1,j)=1;
        end
       
         if (ip_image1(i+1,j+1)<Average)
        ip_image2(i+1,j+1)=0;
        x=x+ip_image1(i+1,j+1);
       else
        y=y+ip_image1(i+1,j+1);
         count=count+1; 
        ip_image2(i+1,j+1)=1;
         end
        if (ip_image1(i+1,j+2)<Average)
        ip_image2(i+1,j+2)=0;
       x=x+ip_image1(i+1,j+2);
       else
        y=y+ip_image1(i+1,j+2);
         count=count+1; 
        ip_image2(i+1,j+2)=1;
        end
        if (ip_image1(i+1,j+3)<Average)
        ip_image2(i+1,j+3)=0;
      x=x+ip_image1(i+1,j+3);
       else
        y=y+ip_image1(i+1,j+3);
         count=count+1; 
        ip_image2(i+1,j+3)=1;
        end
       %%%%%%%%%%%%%%%%%%
        if (ip_image1(i+2,j)<Average)
        ip_image2(i+2,j)=0;
       x=x+ip_image1(i+2,j);
       else
        y=y+ip_image1(i+2,j);
         count=count+1; 
        ip_image2(i+2,j)=1;
        end
       
         if (ip_image1(i+2,j+1)<Average)
        ip_image2(i+2,j+1)=0;
       x=x+ip_image1(i+2,j+1);
       else
        y=y+ip_image1(i+2,j+1);
         count=count+1; 
        ip_image2(i+2,j+1)=1;
         end
        if (ip_image1(i+2,j+2)<Average)
        ip_image2(i+2,j+2)=0;
        x=x+ip_image1(i+2,j+2);
       else
        y=y+ip_image1(i+2,j+2);
         count=count+1; 
        ip_image2(i+2,j+2)=1;
        end
        if (ip_image1(i+2,j+3)<Average)
        ip_image2(i+2,j+3)=0;
       x=x+ip_image1(i+2,j+3);
       else
        y=y+ip_image1(i+2,j+3);
         count=count+1; 
        ip_image2(i+2,j+3)=1;
        end
       %%%%%%%%%%%%%%%%%%
        if (ip_image1(i+3,j)<Average)
        ip_image2(i+3,j)=0;
       x=x+ip_image1(i+3,j);
       else
        y=y+ip_image1(i+3,j);
         count=count+1; 
        ip_image2(i+3,j)=1;
        end
       
         if (ip_image1(i+3,j+1)<Average)
        ip_image2(i+3,j+1)=0;
       x=x+ip_image1(i+3,j+1);
       else
        y=y+ip_image1(i+3,j+1);
         count=count+1; 
        ip_image2(i+3,j+1)=1;
         end
        if (ip_image1(i+3,j+2)<Average)
        ip_image2(i+3,j+2)=0;
       x=x+ip_image1(i+3,j+2);
       else
        y=y+ip_image1(i+3,j+2);
         count=count+1; 
        ip_image2(i+3,j+2)=1;
        end
        if (ip_image1(i+3,j+3)<Average)
        ip_image2(i+3,j+3)=0;
       x=x+ip_image1(i+3,j+3);
       else
        y=y+ip_image1(i+3,j+3);
         count=count+1; 
        ip_image2(i+3,j+3)=1;
        end
        
    
        
        
       High=round(y/count);
      
       Low=round(x/(16-count));
       
      %%%%%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i,j)==0)
        ip_image3(i,j)=Low;
      else
        ip_image3(i,j)=High;
     end
       
      if (ip_image2(i,j+1)==0)
        ip_image3(i,j+1)=Low;
       else
        ip_image3(i,j+1)=High;
      end  
    
         if (ip_image2(i,j+2)==0)
        ip_image3(i,j+2)=Low;
       else
        ip_image3(i,j+2)=High;
         end
       
      if (ip_image2(i,j+3)==0)
        ip_image3(i,j+3)=Low;
       else
        ip_image3(i,j+3)=High;
      end
         
      
      %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+1,j)==0)
        ip_image3(i+1,j)=Low;
      else
        ip_image3(i+1,j)=High;
     end
       
      if (ip_image2(i+1,j+1)==0)
        ip_image3(i+1,j+1)=Low;
       else
        ip_image3(i+1,j+1)=High;
      end  
    
         if (ip_image2(i+1,j+2)==0)
        ip_image3(i+1,j+2)=Low;
       else
        ip_image3(i+1,j+2)=High;
         end
       
      if (ip_image2(i+1,j+3)==0)
        ip_image3(i+1,j+3)=Low;
       else
        ip_image3(i+1,j+3)=High;
      end
      
           %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+2,j)==0)
        ip_image3(i+2,j)=Low;
      else
        ip_image3(i+2,j)=High;
     end
       
      if (ip_image2(i+2,j+1)==0)
        ip_image3(i+2,j+1)=Low;
       else
        ip_image3(i+2,j+1)=High;
      end  
    
         if (ip_image2(i+2,j+2)==0)
        ip_image3(i+2,j+2)=Low;
       else
        ip_image3(i+2,j+2)=High;
         end
       
      if (ip_image2(i+2,j+3)==0)
        ip_image3(i+2,j+3)=Low;
       else
        ip_image3(i+2,j+3)=High;
      end 
      
            %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+3,j)==0)
        ip_image3(i+3,j)=Low;
      else
        ip_image3(i+3,j)=High;
     end
       
      if (ip_image2(i+3,j+1)==0)
        ip_image3(i+3,j+1)=Low;
       else
        ip_image3(i+3,j+1)=High;
      end  
    
         if (ip_image2(i+3,j+2)==0)
        ip_image3(i+3,j+2)=Low;
       else
        ip_image3(i+3,j+2)=High;
         end
       
      if (ip_image2(i+3,j+3)==0)
        ip_image3(i+3,j+3)=Low;
       else
        ip_image3(i+3,j+3)=High;
      end
   
     
      %%%%%%Embedding Procedure
      
      if(High-Low<=thr1)
        
          Capacity=Capacity+16;
          xx=0;
          yy=0;
          count1=0;
      %%%%%%%%%%%  
            a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
           ip_image2(i,j)=b;
           if (b==0)
                count1=count1+1;
               xx=ip_image1(i,j)+xx;
           else
               yy=ip_image1(i,j)+yy;
           end
           a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
            ip_image2(i,j+1)=b;
            if (b==0)
                count1=count1+1;
               xx=ip_image1(i,j+1)+xx;
           else
               yy=ip_image1(i,j+1)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          if (b==0)
              count1=count1+1;
               xx=ip_image1(i,j+2)+xx;
           else
               yy=ip_image1(i,j+2)+yy;
           end
          ip_image2(i,j+2)=b;
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          if (b==0)
              count1=count1+1;
               xx=ip_image1(i,j+3)+xx;
           else
               yy=ip_image1(i,j+3)+yy;
           end
          ip_image2(i,j+3)=b;

      %%%%%%%%%%%      
           a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
           ip_image2(i+1,j)=b;
           if (b==0)
               count1=count1+1;
               xx=ip_image1(i+1,j)+xx;
           else
               yy=ip_image1(i+1,j)+yy;
           end
           a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
            ip_image2(i+1,j+1)=b;
              if (b==0)
                  count1=count1+1;
               xx=ip_image1(i+1,j+1)+xx;
           else
               yy=ip_image1(i+1,j+1)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+1,j+2)=b;
            if (b==0)
                count1=count1+1;
               xx=ip_image1(i+1,j+2)+xx;
           else
               yy=ip_image1(i+1,j+2)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+1,j+3)=b;
            if (b==0)
                count1=count1+1;
               xx=ip_image1(i+1,j+3)+xx;
           else
               yy=ip_image1(i+1,j+3)+yy;
           end
      %%%%%%%%%%%      
            a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
           ip_image2(i+2,j)=b;
             if (b==0)
                 count1=count1+1;
               xx=ip_image1(i+2,j)+xx;
           else
               yy=ip_image1(i+2,j)+yy;
           end
           a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
            ip_image2(i+2,j+1)=b;
               if (b==0)
                   count1=count1+1;
               xx=ip_image1(i+2,j+1)+xx;
           else
               yy=ip_image1(i+2,j+1)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+2,j+2)=b;
             if (b==0)
                 count1=count1+1;
               xx=ip_image1(i+2,j+2)+xx;
           else
               yy=ip_image1(i+2,j+2)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+2,j+3)=b;
             if (b==0)
                 count1=count1+1;
               xx=ip_image1(i+2,j+3)+xx;
           else
               yy=ip_image1(i+2,j+3)+yy;
           end
          
       %%%%%%%%%%%   
            a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
           ip_image2(i+3,j)=b;
               if (b==0)
                   count1=count1+1;
               xx=ip_image1(i+3,j)+xx;
           else
               yy=ip_image1(i+3,j)+yy;
           end
           a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
            ip_image2(i+3,j+1)=b;
              if (b==0)
                  count1=count1+1;
               xx=ip_image1(i+3,j+1)+xx;
           else
               yy=ip_image1(i+3,j+1)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+3,j+2)=b;
              if (b==0)
                  count1=count1+1;
               xx=ip_image1(i+3,j+2)+xx;
           else
               yy=ip_image1(i+3,j+2)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+3,j+3)=b;
              if (b==0)
                  count1=count1+1;
               xx=ip_image1(i+3,j+3)+xx;
           else
               yy=ip_image1(i+3,j+3)+yy;
              end
       
           NewLow=xx/count1;
           NewHigh=yy/(16-count1);
           
           if((NewHigh-NewLow)<=thr1)
           
               Low=NewLow;
               High=NewHigh;
               
           end
    
      %%%%%%%%%%%% LSB embedding in Low and High Mean for Smooth Block     
      Capacity=Capacity+2;      
      a1=0; x1=1;
        b=round(a1+(x1-a1)*rand(1)); 
        
        if ((b==1) && (mod(Low,2)==0))
         
            Low=Low+1;
            
        elseif ((b==0) && (mod(Low,2)==1))
         
            Low=Low-1;
            
        else
        Low=Low;    
        end 
        
           a1=0; x1=1;
        b=round(a1+(x1-a1)*rand(1)); 
        
        if ((b==1) && (mod(High,2)==0))
         
            High=High+1;
            
        elseif ((b==0) && (mod(High,2)==1))
         
            High=High-1;
            
        else
        High=High;    
        end
           
           %%%%%%%%%%%%%%%%%%%%%%%%
      
     if (ip_image2(i,j)==0)
        ip_image4(i,j)=Low;
      else
        ip_image4(i,j)=High;
     end
       
      if (ip_image2(i,j+1)==0)
        ip_image4(i,j+1)=Low;
       else
        ip_image4(i,j+1)=High;
      end  
    
         if (ip_image2(i,j+2)==0)
        ip_image4(i,j+2)=Low;
       else
        ip_image4(i,j+2)=High;
         end
       
      if (ip_image2(i,j+3)==0)
        ip_image4(i,j+3)=Low;
       else
        ip_image4(i,j+3)=High;
      end
         
      
      %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+1,j)==0)
        ip_image4(i+1,j)=Low;
      else
        ip_image4(i+1,j)=High;
     end
       
      if (ip_image2(i+1,j+1)==0)
        ip_image4(i+1,j+1)=Low;
       else
        ip_image4(i+1,j+1)=High;
      end  
    
         if (ip_image2(i+1,j+2)==0)
        ip_image4(i+1,j+2)=Low;
       else
        ip_image4(i+1,j+2)=High;
         end
       
      if (ip_image2(i+1,j+3)==0)
        ip_image4(i+1,j+3)=Low;
       else
        ip_image4(i+1,j+3)=High;
      end
      
           %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+2,j)==0)
        ip_image4(i+2,j)=Low;
      else
        ip_image4(i+2,j)=High;
     end
       
      if (ip_image2(i+2,j+1)==0)
        ip_image4(i+2,j+1)=Low;
       else
        ip_image4(i+2,j+1)=High;
      end  
    
         if (ip_image2(i+2,j+2)==0)
        ip_image4(i+2,j+2)=Low;
       else
        ip_image4(i+2,j+2)=High;
         end
       
      if (ip_image2(i+2,j+3)==0)
        ip_image4(i+2,j+3)=Low;
       else
        ip_image4(i+2,j+3)=High;
      end 
      
            %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+3,j)==0)
        ip_image4(i+3,j)=Low;
      else
        ip_image4(i+3,j)=High;
     end
       
      if (ip_image2(i+3,j+1)==0)
        ip_image4(i+3,j+1)=Low;
       else
        ip_image4(i+3,j+1)=High;
      end  
    
         if (ip_image2(i+3,j+2)==0)
        ip_image4(i+3,j+2)=Low;
       else
        ip_image4(i+3,j+2)=High;
         end
       
      if (ip_image2(i+3,j+3)==0)
        ip_image4(i+3,j+3)=Low;
       else
        ip_image4(i+3,j+3)=High;
      end  
          
      
      elseif ((High-Low)>thr1 && (High-Low)<=thr2)
      
       Capacity=Capacity+4;
          xx=0;
          yy=0;
          count=0;
     
      %%%%%%%%%%%   
      
       %%%%%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i,j)==0)
         count=count+1;
        ip_image2(i,j)=0;
      xx=ip_image1(i,j)+xx;
           else
               yy=ip_image1(i,j)+yy;
        ip_image2(i,j)=1;
     end
       
      if (ip_image2(i,j+1)==0)
           count=count+1;
        ip_image2(i,j+1)=0;
       xx=ip_image1(i,j+1)+xx;
           else
               yy=ip_image1(i,j+1)+yy;
        ip_image2(i,j+1)=1;
      end  
    
         if (ip_image2(i,j+2)==0)
              count=count+1;
        ip_image2(i,j+2)=0;
       xx=ip_image1(i,j+2)+xx;
           else
               yy=ip_image1(i,j+2)+yy;
        ip_image2(i,j+2)=1;
         end
       
      if (ip_image2(i,j+3)==0)
          count=count+1;
        ip_image2(i,j+3)=0;
       xx=ip_image1(i,j+3)+xx;
           else
               yy=ip_image1(i,j+3)+yy;
        ip_image2(i,j+3)=1;
      end
         
      
      %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+1,j)==0)
         count=count+1;
          ip_image2(i+1,j)=0;
      xx=ip_image1(i+1,j)+xx;
           else
               yy=ip_image1(i+1,j)+yy;
        ip_image2(i+1,j)=1;
      end
       
     
       a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
            ip_image2(i+1,j+1)=b;
              if (b==0)
                  count=count+1;
               xx=ip_image1(i+1,j+1)+xx;
           else
               yy=ip_image1(i+1,j+1)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+1,j+2)=b;
            if (b==0)
                count=count+1;
               xx=ip_image1(i+1,j+2)+xx;
           else
               yy=ip_image1(i+1,j+2)+yy;
           end
      
      
      if (ip_image2(i+1,j+3)==0)
        count=count+1;
        ip_image2(i+1,j+3)=0;
      xx=ip_image1(i+1,j+3)+xx;
           else
               yy=ip_image1(i+1,j+3)+yy;
        ip_image2(i+1,j+3)=1;
      end
      
           %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+2,j)==0)
          count=count+1;
          ip_image2(i+2,j)=0;
      xx=ip_image1(i+2,j)+xx;
           else
               yy=ip_image1(i+2,j)+yy;
        ip_image2(i+2,j)=1;
      end
       
      
          a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1)); 
            ip_image2(i+2,j+1)=b;
               if (b==0)
                   count=count+1;
               xx=ip_image1(i+2,j+1)+xx;
           else
               yy=ip_image1(i+2,j+1)+yy;
           end
             a1=0; x1=1;
          b=round(a1+(x1-a1)*rand(1));
          ip_image2(i+2,j+2)=b;
             if (b==0)
                 count=count+1;
               xx=ip_image1(i+2,j+2)+xx;
           else
               yy=ip_image1(i+2,j+2)+yy;
           end
      
       
      if (ip_image2(i+2,j+3)==0)
         count=count+1;
          ip_image2(i+2,j+3)=0;
       xx=ip_image1(i+2,j+3)+xx;
           else
               yy=ip_image1(i+2,j+3)+yy;
        ip_image2(i+2,j+3)=1;
      end 
      
            %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+3,j)==0)
            count=count+1;
        ip_image2(i+3,j)=0;
     xx=ip_image1(i+3,j)+xx;
           else
               yy=ip_image1(i+3,j)+yy;
        ip_image2(i+3,j)=1;
     end
       
      if (ip_image2(i+3,j+1)==0)
        ip_image2(i+3,j+1)=0;
        count=count+1;
        xx=ip_image1(i+3,j+1)+xx;
           else
        yy=ip_image1(i+3,j+1)+yy;
        ip_image2(i+3,j+1)=1;
      end  
    
         if (ip_image2(i+3,j+2)==0)
        ip_image2(i+3,j+2)=0;
        count=count+1;
        xx=ip_image1(i+3,j+2)+xx;
           else
        yy=ip_image1(i+3,j+2)+yy;
        ip_image2(i+3,j+2)=1;
         end
       
      if (ip_image2(i+3,j+3)==0)
        ip_image2(i+3,j+3)=0;
        count=count+1;
        xx=ip_image1(i+3,j+3)+xx;
           else
          yy=ip_image1(i+3,j+3)+yy;
        ip_image2(i+3,j+3)=1;
      end
      
      
            
      
      NewLow=round(xx/count);
           NewHigh=round(yy/(16-count));
           
           if((NewHigh-NewLow)>thr1 && (NewHigh-NewLow)<=thr2)
           
               Low=NewLow;
               High=NewHigh;
               
           end
        
          Capacity=Capacity+2;  
          
                 a1=0; x1=1;
        b=round(a1+(x1-a1)*rand(1)); 
        
        if ((b==1) && (mod(Low,2)==0))
         
            Low=Low+1;
            
        elseif ((b==0) && (mod(Low,2)==1))
         
            Low=Low-1;
            
        else
        Low=Low;    
        end 
        
           a1=0; x1=1;
        b=round(a1+(x1-a1)*rand(1)); 
        
        if ((b==1) && (mod(High,2)==0))
         
            High=High+1;
            
        elseif ((b==0) && (mod(High,2)==1))
         
            High=High-1;
            
        else
        High=High;    
        end
           
        
       
           %%%%%%%%%%%%%%%%%%%%%%%%
      
     if (ip_image2(i,j)==0)
        ip_image4(i,j)=Low;
      else
        ip_image4(i,j)=High;
     end
       
      if (ip_image2(i,j+1)==0)
        ip_image4(i,j+1)=Low;
       else
        ip_image4(i,j+1)=High;
      end  
    
         if (ip_image2(i,j+2)==0)
        ip_image4(i,j+2)=Low;
       else
        ip_image4(i,j+2)=High;
         end
       
      if (ip_image2(i,j+3)==0)
        ip_image4(i,j+3)=Low;
       else
        ip_image4(i,j+3)=High;
      end
         
      
      %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+1,j)==0)
        ip_image4(i+1,j)=Low;
      else
        ip_image4(i+1,j)=High;
     end
       
      if (ip_image2(i+1,j+1)==0)
        ip_image4(i+1,j+1)=Low;
       else
        ip_image4(i+1,j+1)=High;
      end  
    
         if (ip_image2(i+1,j+2)==0)
        ip_image4(i+1,j+2)=Low;
       else
        ip_image4(i+1,j+2)=High;
         end
       
      if (ip_image2(i+1,j+3)==0)
        ip_image4(i+1,j+3)=Low;
       else
        ip_image4(i+1,j+3)=High;
      end
      
           %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+2,j)==0)
        ip_image4(i+2,j)=Low;
      else
        ip_image4(i+2,j)=High;
     end
       
      if (ip_image2(i+2,j+1)==0)
        ip_image4(i+2,j+1)=Low;
       else
        ip_image4(i+2,j+1)=High;
      end  
    
         if (ip_image2(i+2,j+2)==0)
        ip_image4(i+2,j+2)=Low;
       else
        ip_image4(i+2,j+2)=High;
         end
       
      if (ip_image2(i+2,j+3)==0)
        ip_image4(i+2,j+3)=Low;
       else
        ip_image4(i+2,j+3)=High;
      end 
      
            %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+3,j)==0)
        ip_image4(i+3,j)=Low;
      else
        ip_image4(i+3,j)=High;
     end
       
      if (ip_image2(i+3,j+1)==0)
        ip_image4(i+3,j+1)=Low;
       else
        ip_image4(i+3,j+1)=High;
      end  
    
         if (ip_image2(i+3,j+2)==0)
        ip_image4(i+3,j+2)=Low;
       else
        ip_image4(i+3,j+2)=High;
         end
       
      if (ip_image2(i+3,j+3)==0)
        ip_image4(i+3,j+3)=Low;
       else
        ip_image4(i+3,j+3)=High;
      end  
           
  
      else 
     
        a1=0; x1=1;
        b=round(a1+(x1-a1)*rand(1)); 
        
        if ((b==1) && (mod(Low,2)==0))
         
            Low=Low+1;
            
        elseif ((b==0) && (mod(Low,2)==1))
         
            Low=Low-1;
            
        else
        Low=Low;    
        end 
        
           a1=0; x1=1;
        b=round(a1+(x1-a1)*rand(1)); 
        
        if ((b==1) && (mod(High,2)==0))
         
            High=High+1;
            
        elseif ((b==0) && (mod(High,2)==1))
         
            High=High-1;
            
        else
        High=High;    
        end
     Capacity=Capacity+2;  
        %%%%%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i,j)==0)
        ip_image4(i,j)=Low;
      else
        ip_image4(i,j)=High;
     end
       
      if (ip_image2(i,j+1)==0)
        ip_image4(i,j+1)=Low;
       else
        ip_image4(i,j+1)=High;
      end  
    
         if (ip_image2(i,j+2)==0)
        ip_image4(i,j+2)=Low;
       else
        ip_image4(i,j+2)=High;
         end
       
      if (ip_image2(i,j+3)==0)
        ip_image4(i,j+3)=Low;
       else
        ip_image4(i,j+3)=High;
      end
         
      
      %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+1,j)==0)
        ip_image4(i+1,j)=Low;
      else
        ip_image4(i+1,j)=High;
     end
       
      if (ip_image2(i+1,j+1)==0)
        ip_image4(i+1,j+1)=Low;
       else
        ip_image4(i+1,j+1)=High;
      end  
    
         if (ip_image2(i+1,j+2)==0)
        ip_image4(i+1,j+2)=Low;
       else
        ip_image4(i+1,j+2)=High;
         end
       
      if (ip_image2(i+1,j+3)==0)
        ip_image4(i+1,j+3)=Low;
       else
        ip_image4(i+1,j+3)=High;
      end
      
           %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+2,j)==0)
        ip_image4(i+2,j)=Low;
      else
        ip_image4(i+2,j)=High;
     end
       
      if (ip_image2(i+2,j+1)==0)
        ip_image4(i+2,j+1)=Low;
       else
        ip_image4(i+2,j+1)=High;
      end  
    
         if (ip_image2(i+2,j+2)==0)
        ip_image4(i+2,j+2)=Low;
       else
        ip_image4(i+2,j+2)=High;
         end
       
      if (ip_image2(i+2,j+3)==0)
        ip_image4(i+2,j+3)=Low;
       else
        ip_image4(i+2,j+3)=High;
      end 
      
            %%%%%%%%%%%%%%%%%%%%%
      
      if (ip_image2(i+3,j)==0)
        ip_image4(i+3,j)=Low;
      else
        ip_image4(i+3,j)=High;
     end
       
      if (ip_image2(i+3,j+1)==0)
        ip_image4(i+3,j+1)=Low;
       else
        ip_image4(i+3,j+1)=High;
      end  
    
         if (ip_image2(i+3,j+2)==0)
        ip_image4(i+3,j+2)=Low;
       else
        ip_image4(i+3,j+2)=High;
         end
       
      if (ip_image2(i+3,j+3)==0)
        ip_image4(i+3,j+3)=Low;
       else
        ip_image4(i+3,j+3)=High;
      end


                  
      end

          
    end
end
   


%figure,imshow(ip_image1);

% figure,imshow(ip_image3);
% figure,imshow(ip_image4);

            origImg = double(ip_image1);
            distImg = double(ip_image3);
            stegoImg = double(ip_image4);

            [M N] = size(origImg);
%             error = origImg - distImg;
%             MSE = sum(sum(error .* error)) / (M * N);
% 
%             if(MSE > 0)
%             AMBTC_PSNR = 10*log(255*255/MSE) / log(10)
%             else
%             PSNR = 99
%             end 
        
            error = origImg - stegoImg;
            MSE = sum(sum(error .* error)) / (M * N); 
            if(MSE > 0)
            OrgStg_PSNR = 10*log(255*255/MSE) / log(10)
            else
            PSNR = 99
            end
            
%               error = distImg - stegoImg;
%             MSE = sum(sum(error .* error)) / (M * N); 
%             if(MSE > 0)
%             AmbtcStg_PSNR = 10*log(255*255/MSE) / log(10)
%             else
%             PSNR = 99
%             end
            Capacity