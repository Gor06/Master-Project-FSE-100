color = brick.ColorCode(1);
disp(color)
touch = brick.TouchPressed(2);
while touch ~= 1
   touch = brick.TouchPressed(2);
   disp(touch)
   brick.MoveMotor('D',-50);
   brick.MoveMotor('A',-55);
  
   color = brick.ColorCode(1);
   if(color == 3)
       %green
       brick.StopAllMotors();
       brick.beep();
       pause(1);
       brick.beep();
       pause(1);
       brick.beep();
       break;
   end
   color = brick.ColorCode(1);
   if(color == 4)
       %yellow
       brick.StopAllMotors();
       brick.beep();
       pause(1);
       brick.beep();
       paus(1);
       brick.beep();
       pause(1);
       brick.beep();
       break;
   end
   color = brick.ColorCode(1);
   if(color == 5)
       %red
       brick.StopAllMotors();
       pause(1);
   end
   color = brick.ColorCode(1);
   if(color == 2)
       %blue
       brick.StopAllMotors();
       brick.beep();
       pause(1);
       brick.beep();
       break;
   end
   touch = brick.TouchPressed(2);
end

