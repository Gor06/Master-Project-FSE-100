color = brick.ColorCode(1);
disp(color)
flag = false;
while 1
   disp(color)
   %brick.MoveMotor('D',-50.5);
   %brick.MoveMotor('A',-53.5);
  
   color = brick.ColorCode(1);
   if(color == 3 && flag)
       %green
       disp('Complete!');
       break;
   end
  
   if(color == 1 || color == 3)
       %black
       brick.MoveMotor('D',-50.5);
       brick.MoveMotor('A',-53.5);
       pause(1);
       brick.StopAllMotors();
         
      %auto control
       touch1 = brick.TouchPressed(2);
  
       if touch1
           %disp(1)
           brick.MoveMotor('D',50.5);
           brick.MoveMotor('A',53.5);
           pause(1);
           brick.StopAllMotors();         
  
           distance = brick.UltrasonicDist(4);
           disp(distance)
          
           if distance >= 30
           %ultrasonic sensor
           brick.MoveMotor('D',44);
           brick.MoveMotor('A',-40);
           pause(1);
           brick.StopMotor('AD');
           else
           brick.MoveMotor('D',-44);
           brick.MoveMotor('A',40);
           pause(1);
           brick.StopMotor('AD');
           end
       end
   end
   if(color == 4)
       %yellow
     brick.StopAllMotors();
       %manual control
      
     while 1
       prompt = 'letter';
      x = input(prompt, 's');
       if(strcmp(x, 's'))
           brick.MoveMotor('D',50.5);
           brick.MoveMotor('A',53.5);
           pause(0.5);
           brick.StopMotor('AD');
       end
  
       if(strcmp(x, 'a'))
           brick.MoveMotor('D',46.5);
           brick.MoveMotor('A',-44);
           pause(1);
           brick.StopMotor('AD');
       end
  
       if(strcmp(x, 'w'))
           brick.MoveMotor('D',-50.5);
           brick.MoveMotor('A',-53.5);
           pause(1);
           brick.StopMotor('AD');
       end
  
       if(strcmp(x, 'd'))
           brick.MoveMotor('A',44);
           brick.MoveMotor('D',-46.5);
           pause(1);
           brick.StopMotor('AD');
       end
   %open and close claw
       if(strcmp(x, 'co'))
           brick.MoveMotor('C',50);
           pause(3.5);
           brick.StopMotor('C');
       end
  
       if(strcmp(x, 'cc'))
           brick.MoveMotor('C', -50);
           pause(3.5);
           brick.StopMotor('C');
       end
       if(strcmp(x,'180'))
           brick.MoveMotor('D',46.5);
           brick.MoveMotor('A',-44);
           pause(2);
           brick.StopAllMotors();
       end
  
   %break out of manual control
       if(strcmp(x, 'q'))
          break;
       end
     
  
      end
     
   end
  
   if(color == 5)
       %red
       %fix red turn
       disp('reached red!');
       brick.StopAllMotors();
       pause(1);
       brick.MoveMotor('D',-50.5);
       brick.MoveMotor('A',-53.5);
       pause(2);
       brick.StopAllMotors();
   end
   if(color == 2)
       %blue
       flag = true;
       disp('flag == true');
       brick.StopAllMotors();
       %manual control
       while 1
       prompt = 'letter';
      x = input(prompt, 's');
           if(strcmp(x, 's'))
               brick.MoveMotor('D',50.5);
               brick.MoveMotor('A',53.5);
               pause(.5);
               brick.StopMotor('AD');
           end
      
           if(strcmp(x, 'a'))
               brick.MoveMotor('D',46.5);
               brick.MoveMotor('A',-44);
               pause(1);
               brick.StopMotor('AD');
           end
      
           if(strcmp(x, 'w'))
               brick.MoveMotor('D',-50.5);
               brick.MoveMotor('A',-53.5);
               pause(1);
               brick.StopMotor('AD');
           end
      
           if(strcmp(x, 'd'))
               brick.MoveMotor('A',44);
               brick.MoveMotor('D',-46.5);
               pause(1);
               brick.StopMotor('AD');
           end
       %open and close claw
           if(strcmp(x, 'co'))
               brick.MoveMotor('C',50);
               pause(3.5);
               brick.StopMotor('C');
           end
      
           if(strcmp(x, 'cc'))
               brick.MoveMotor('C', -50);
               pause(3.5);
               brick.StopMotor('C');
           end
           if(strcmp(x,'180'))
           brick.MoveMotor('D',46.5);
           brick.MoveMotor('A',-44);
           pause(2);
           brick.StopAllMotors();
           end
      
       %break out of manual control
           if(strcmp(x, 'q'))
              break;
           end
         
      
       end
      
     
   end
end
brick.StopAllMotors();
