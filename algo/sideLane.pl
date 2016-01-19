#!/usr/bin/perl

$n_temp = <STDIN>;
@n_arr = split / /,$n_temp;
$n = $n_arr[0]; 
chomp $n;
$t = $n_arr[1];
chomp $t;
$width_temp = <STDIN>;
@width = split / /,$width_temp;
chomp @width;
for my $a0 (0..$t-1){
    $i_temp = <STDIN>;
    @i_arr = split / /,$i_temp;
    $i = $i_arr[0]; 
    chomp $i;
    $j = $i_arr[1];
    chomp $j;
    $max_width=0;
    for $gadi (1..3) {
        $flag = 0;
        for ($i..$j) {
            if($gadi > $width[$_]) {
                $flag++;
            }
        }
        $max_width++ if(!$flag);
    }
    print "$max_width\n";
}
