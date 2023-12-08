%Throwing of dice
one=0
two=0
three=0
four=0
five=0
six=0

P=[1,1,2,3,4,5,6]

for x=P(1:length (P))
    if x==1
        one=one+1;

    elseif x==2
        two=two+1;

    elseif x==3
        three=three+1;

    elseif x==4
        four=four+1;

    elseif x==5
        five=five+1;

    elseif x==6
        six=six+1;
    end
end

disp ('prob of 1 is')
disp ('P(1)= ')
disp ( one /length(P))

disp ('prob of 2 is')
disp ('P(2)= ')
disp ( two /length(P))

disp ('prob of 3 is')
disp ('P(3)= ')
disp ( three /length(P))

disp ('prob of 4 is')
disp ('P(4)= ')
disp ( four /length(P))

disp ('prob of 5 is')
disp ('P(5)= ')
disp ( five /length(P))

disp ('prob of 6 is')
disp ('P(6)= ')
disp ( six /length(P))

