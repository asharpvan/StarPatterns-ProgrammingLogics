//
//  main.m
//  Boilerplate
//
//  Created by agatsa on 4/1/16.
//  Copyright © 2016 Agatsa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    @autoreleasepool {
        
        int numberOfRow = 5;
      
        printf("\n----------Right Angled Triangle--------------\n");
        for(int i = 0; i<=numberOfRow; i++) {
            for(int j = 0; j < i; j++)  {
                printf("*");
            }
                printf("\n");
        }
        
        printf("\n----------Hollow Right Angled Triangle--------------\n");
        for(int i = 0; i<=numberOfRow; i++) {
            for(int j = 0; j < i; j++)  {
                if(j == 0 || i == numberOfRow || j == i-1)
                    printf("*");
                else
                    printf(" ");
            }
            printf("\n");
        }
        
        printf("\n----------Inverted Right Angled Triangle--------------\n");
        for(int i = numberOfRow; i >=0; i--) {
            
            for(int j = 0; j < i; j++){
                
                printf("*");
            }
            printf("\n");
        }
       
        printf("\n----------Hollow Inverted Right Angled Triangle--------------\n");
        for(int i = numberOfRow; i >=0; i--) {
            
            for(int j = 0; j < i; j++){
                if(i == numberOfRow || j == 0 || j == i-1)
                    printf("*");
                else
                    printf(" ");
            }
            printf("\n");
        }
        
        printf("\n------------Square-----------------\n");
        //iterate row
        for(int i = 0; i <= numberOfRow; i++){
            
            //iterate column of ith Row
            for(int j = 0; j <= numberOfRow; j++) {
                
                printf("*");
            }
            printf("\n");
        }

        printf("\n-----------Hollow Square------------------\n");
        //iterate row
        for(int i = 0; i <= numberOfRow; i++){
            
            //iterate column of ith Row
            for(int j = 0; j <= numberOfRow; j++) {
                
                if(i==0 || i==numberOfRow || j==0 || j==numberOfRow)
                    printf("*");
                else
                    printf(" ");
            }
            printf("\n");
        }

        printf("\n-----------Rhombus-----------------\n");
        //iterate row
        for(int i = 0; i <= numberOfRow; i++){
            
            //iterate column of ith Row
            for(int j = i; j < numberOfRow; j++) {
                printf(" ");
            }
            for (int j = 0; j < numberOfRow; j++) {
                printf("*");
            }
            printf("\n");
        }

        printf("\n-----------Hollow Rhombus-----------------\n");
        //iterate row
        for(int i = 0; i <= numberOfRow; i++){
            
            //iterate column of ith Row
            for(int j = numberOfRow; j >= i; j--) {
                printf(" ");
            }
            for (int j = 0; j <= numberOfRow; j++) {
                if(j==0||i==0||j==numberOfRow||i==numberOfRow)
                    printf("*");
                else
                    printf(" ");
            }
            printf("\n");
        }
 
        
        printf("\n-----------Pyramid--------------\n");
        for(int i = 0; i <= numberOfRow; i++){
            for(int j = i; j < numberOfRow; j++){
                printf(" ");
            }
            for(int j = 0; j < ((2*i)-1); j++) {
                printf("*");
            }
            printf("\n");
        }

        printf("\n-----------Hollow Pyramid--------------\n");
        for(int i = 0; i <= numberOfRow; i++){
            for(int j = i; j < numberOfRow; j++){
                printf(" ");
            }
            for(int j = 0; j < ((2*i)-1); j++) {
                if(j == 0 || i == numberOfRow || j == ((2*i)-2))
                    printf("*");
                else
                    printf(" ");
            }
            printf("\n");
        }
        
        printf("\n-----------Inverted Pyramid--------------\n");
        for(int i = numberOfRow; i > 0; i--){
            for(int j = i; j < numberOfRow; j++){
                printf(" ");
            }
            for(int j = 0; j < ((2*i)-1); j++) {
                printf("*");
            }
            printf("\n");
        }
        
        printf("\n-----------Hollow Inverted Pyramid--------------\n");
        for(int i = numberOfRow; i > 0; i--){
            for(int j = i; j < numberOfRow; j++){
                printf(" ");
            }
            for(int j = 0; j < ((2*i)-1); j++) {
                if(j == 0 || i == numberOfRow || j == ((2*i)-2))
                    printf("*");
                else
                    printf(" ");
                
            }
            printf("\n");
        }
        
        
        printf("\n-----------Array pairs sum less than x code--------------\n");
        NSArray *arrayOfNumber = [NSArray arrayWithObjects:[NSNumber numberWithInt:1],[NSNumber numberWithInt:2],[NSNumber numberWithInt:5],[NSNumber numberWithInt:3],[NSNumber numberWithInt:2],[NSNumber numberWithInt:8], nil];
        int x = 20;
        int counter = 0;
        for (int i = 0; i < [arrayOfNumber count]; i++){
            for (int j = i+1; j< [arrayOfNumber count]; j++) {
                if([[arrayOfNumber objectAtIndex:i]intValue]+[[arrayOfNumber objectAtIndex:j]intValue] <= x){
                    NSLog(@"%d + %d : %d",[[arrayOfNumber objectAtIndex:i]intValue],[[arrayOfNumber objectAtIndex:j]intValue],[[arrayOfNumber objectAtIndex:i]intValue]+[[arrayOfNumber objectAtIndex:j]intValue]);
                    counter++;
                }
            }
        }
        NSLog(@"counter : %d",counter);
        
        
        printf("\n-----------Anagram check--------------\n");
        
        NSString *stringOne  = @"pranavsah";
        NSString *stringTwo  = @"asharpvan";
        
        if([stringOne length]!=[stringTwo length]){
            NSLog(@"Not Anagram");
        } else {
           
            
            NSMutableArray *arrayOne = [NSMutableArray new];
            NSMutableArray *arrayTwo = [NSMutableArray new];
            
            for(int i = 0 ; i < [stringOne length]; i++){
                
                [arrayOne addObject:[NSString stringWithFormat:@"%c",[stringOne characterAtIndex:i]]];
                [arrayTwo addObject:[NSString stringWithFormat:@"%c",[stringTwo characterAtIndex:i]]];
            }
            
            NSLog(@"Array before Sorting : %@\n%@",arrayOne,arrayTwo);
            NSArray *sortedOneArray = [arrayOne sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
            NSArray *sortedTwoArray = [arrayTwo sortedArrayUsingSelector:@selector(localizedCaseInsensitiveCompare:)];
            NSLog(@"Array after Sorting : %@\n%@",sortedOneArray,sortedTwoArray);
        
            if([sortedOneArray isEqualToArray:sortedTwoArray])
                NSLog(@"Anagram");
            else
                NSLog(@"Not Anagram");
            }
        


        
        return UIApplicationMain(argc, argv, nil, NSStringFromClass([AppDelegate class]));
    }
}
