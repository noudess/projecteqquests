sub EVENT_SPAWN {
  	$x = $npc->GetX();
   	$y = $npc->GetY();
	quest::set_proximity($x - 25, $x + 25, $y - 25, $y + 25);
}

sub EVENT_ENTER {
	$InInstanceTipt = quest::GetInstanceID("tipt",0);
	$InInstanceVxed = quest::GetInstanceID("vxed",0);
	$inInstanceVxedPally = quest::GetInstanceID("vxed",1);
	if($InInstanceTipt > 0){
		quest::MovePCInstance(289, $InInstanceTipt, -448, -2374, 12); # Zone: postorms
	}
	elsif($InInstanceVxed > 0){
	    	quest::MovePCInstance(290, $InInstanceVxed, -427, -3552, 14); # Zone: potactics
	}
	elsif($inInstanceVxedPally > 0){
	    	quest::MovePCInstance(290, $inInstanceVxedPally, -427, -3552, 14); # Zone: potactics
	}	
	else {
		$client->Message(13, "You are not a part of an instance!");
	}
}
