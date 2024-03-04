#!/usr/bin/perl

use strict;
use warnings;

# Subroutine to generate a random event
sub generate_event {
    my @events = (
        "You wake up in the middle of a dark forest. What do you do?",
        "You find yourself on a desolate beach. What's your next move?",
        "A mysterious door appears in front of you. Will you open it?",
        "You stumble upon a hidden cave. Dare to explore?",
        "A strange creature approaches you. Prepare for combat or try to negotiate?",
        "You discover a treasure chest. Do you open it?",
        "You come across an ancient ruin. Enter or continue your journey?"
    );
    my $event = $events[rand @events];
    return $event;
}

# Main game loop
print "Welcome to the Infinite Adventure Game!\n";
print "Type 'STOP' to end the game.\n";

my $current_event = generate_event();

while (1) {
    print "$current_event\n";
    print "#1. Option 1\n";
    print "#2. Option 2\n";
    print "Your choice: ";
    my $choice = <STDIN>;
    chomp $choice;

    if ($choice eq 'STOP') {
        print "Game over. Thanks for playing!\n";
        last;
    } elsif ($choice == 1) {
        # Define new event based on option 1
        $current_event = generate_event();
    } elsif ($choice == 2) {
        # Define new event based on option 2
        $current_event = generate_event();
    } else {
        print "Invalid choice. Please try again.\n";
    }
}
