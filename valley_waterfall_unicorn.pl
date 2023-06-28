#!/usr/bin/perl

use strict;
use warnings;

# Pedal Power
# Program to calculate the amount of power generated from a cyclist pedaling

#Define Variables
my $weight; # Weight of the cyclist (kg)
my $distance; # Distance pedaled (m)
my $time; # Time pedaled (s)
my $velocity; #Velocity of cyclist (m/s)
my $power; # Power generated (Watts)

# Ask user for necessary info
print "Please enter your weight (kg): ";
$weight = <STDIN>;

print "Please enter distance pedaled (m): ";
$distance = <STDIN>;

print "Please enter time pedaled (s): ";
$time = <STDIN>;

# Calculate the velocity
$velocity = $distance / $time;

# Calculate total power
$power = $weight * $velocity * $velocity / 8;

# Print out results
print "Your power generated: $power Watts\n";

# Calculate the time it would take to cycle a given distance at a given power
print "Please enter power generated (Watts): ";
$power = <STDIN>;

print "Please enter distance to cycle (m): ";
$distance = <STDIN>;

# Calculate the velocity
$velocity = sqrt($power * 8 / $weight);

# Calculate the time it would take to cycle the given distance
$time = $distance / $velocity;

# Print out results
print "It would take $time seconds to cycle the given distance\n";