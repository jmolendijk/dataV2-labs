#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Aug 13 12:59:14 2020

@author: bert
"""

import random 
from time import sleep

#Timers
sleep_time_short = 0.1
sleep_time_long = 0.2
sleep_time_extra_long = 0.5

def welcome (): 
    sleep(sleep_time_long)
    print("\n Welcome to playing Risk!")
    sleep(sleep_time_long)
    print()
    print('*' * 79)
    sleep(sleep_time_long)
    print()


def roll_dice ():
    dice = random.randint(1, 6)
    return dice

def get_playername():
    playername = input("What is your name? ")
    return playername

def dice_roll_player_3(): 
    dices = [] 
    while True:
         number_dice = int(input("Which option do you choose? \n roll with 1 dice\n roll with 2 dices\n roll with 3 dices\n Give your choice.... "))
         if number_dice == 1: 
             dice_one = roll_dice()
             dices.append(dice_one)
             break
         elif number_dice == 2: 
             dice_one = roll_dice()
             dice_two = roll_dice()
             dices.append(dice_one)
             dices.append(dice_two)
             break
         elif number_dice == 3: 
             dice_one = roll_dice()
             dice_two = roll_dice()
             dice_three = roll_dice()
             dices.append(dice_one)
             dices.append(dice_two)
             dices.append(dice_three)
             break
         else: 
             print("You need to make a choose ")
    return dices


def dice_roll_player_2(): 
    dices = [] 
    while True: 
         number_dice = int(input("Which option do you choose? \n roll with 1 dice\n roll with 2 dices\n roll with 3 dices\n Give your choice.... "))
         if number_dice == 1: 
             dice_one = roll_dice()
             dices.append(dice_one)
             break
         elif number_dice == 2: 
             dice_one = roll_dice()
             dice_two = roll_dice()
             dices.append(dice_one)
             dices.append(dice_two)
             break
         else: 
             print("You need to make a choose ")
    return dices




    
def risk (): 
    welcome()
    player_name = get_playername()
    player_live = 10 
    computer_live = 10
    while True: 
        playing = input("Type R to roll the dice or type Q to quit: ").lower()
        player_dices = []
        if playing == 'q':
            result = "See you next time! "
            break
        elif playing == 'r' and player_live > 3: 
           player_dices.append(dice_roll_player_3())
        elif playing == 'r' and player_live > 2: 
            player_dices.append(dice_roll_player_2())
        elif playing == 'r' and player_live == 1: 
            player_dices.append(dice_one = roll_dice())
        elif playing != 'r' or playing != 'q': 
            print("You need to type an R or Q")
        
        computer_dices = []
        if computer_live != 1: 
            dice_pc_one = roll_dice()
            dice_pc_two = roll_dice()
            computer_dices.append(dice_pc_one)
            computer_dices.append(dice_pc_two)
        else: 
            compter_dices.append(roll_dice())
        
        player_dices.sort(reverse=True)
        computer_dices.sort(reverse=True)
        
        print(player_dices)
        print()
        print(computer_dices)
        
        length = len(player_dices)
        for number in range(length): 
            if player_dices[0] == computer_dices[0]: 
                continue
            elif player_dices[0] > computer_dices: 
                computer_live = computer_live - 1
                if computer_live == 0: 
                    break
            elif player_dices[0] < computer_dices:
                player_live = player_live - 1
                if player_live == 0:
                    break
                
        print(player_name, "has", player_live, "units left")
        print("The CPU has", computer_live, "units left")
        print()
        print('*' * 79)
    
    if player_live > computer_live: 
        answer = "Winner winner chicken diner, you have won the game"
    elif computer_live > player_live: 
        answer = "The computer was to strong!"
    return answer

print(risk())
    
