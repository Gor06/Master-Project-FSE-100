color = brick.ColorCode(1);
touch1 = brick.TouchPressed(2);
touch2 = brick.TouchPressed(3);
%disp(color);
while color ~= 6
   disp(distance)
   distance = brick.UltrasonicDist(4);
   %display(distance);
   touch1 = brick.TouchPressed(2);
   touch2 = brick.TouchPressed(3);
   if(touch1 == 1 || touch2 == 1)
       brick.MoveMotor('AD',50);
       pause(1);
       brick.MoveMotor('D',-50);
       brick.MoveMotor('A',50);
       pause(1);
       brick.StopMotor('AD');
       brick.MoveMotor('AD',-50);
       pause(1);
       brick.StopMotor('AD');
       %disp(1)
       %display(distance);
       if distance >= 30
       %ultrasonice sensor
       brick.MoveMotor('AD',-50);
       pause(1);
       brick.MoveMotor('D',50);
       brick.MoveMotor('A',-50);
       pause(1);
       brick.StopMotor('AD');
      
      
       end
      
      
   else
   brick.MoveMotor('AD',-50);
   pause(1);
   brick.StopMotor('AD');
   end
  
   color = brick.ColorCode(1);
   %disp(color);
  %prompt = 'continue';
  %x = input(prompt, 's');
  %if(strcmp(x, 'q'))
   %break;
  %end
end

