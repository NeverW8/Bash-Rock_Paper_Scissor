#!/bin/bash

#Rock Paper Scissor
R="Rock"
P="Paper"
S="Scissor"

NUMBER=$(( $RANDOM % 3 ))
COMP_CHOICES=($R $P $S)
COMP_PICK=${COMP_CHOICES[$NUMBER]}

echo "Choose $R, $P or $S"
read

function RPS {
    if [[ $REPLY == $COMP_PICK ]]; then
        echo "It's a Draw D:"
    elif [[ $REPLY == $R && $COMP_PICK == $S ]]; then
        echo "$USER Wins!"
    elif [[ $REPLY == $S && $COMP_PICK == $P ]]; then
        echo "$USER Wins!"
    elif [[ $REPLY == $P && $COMP_PICK == $R ]]; then
        echo "$USER Wins!"
    else
        echo "$USER Loose D:"
    fi
}

    if [[ $REPLY =~ ($R|$P|$S) ]]; then
        RPS
        echo "Computer picked: $COMP_PICK "
    else
        echo "You have to pick one of these options: $R, $P, $S"
    fi
