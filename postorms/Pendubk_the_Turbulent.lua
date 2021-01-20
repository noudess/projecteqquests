--Notifies Gurebk_Lord_of_Krendic that npc was killed in the camp.


function event_combat(e)
	if e.joined then
		eq.set_timer("storms", 60 * 1000);
	else
		eq.stop_timer("storms");
	end
end

function event_timer(e)
	if e.timer == "storms" and e.self:IsEngaged() then
		rand = math.random(5,10);
		for n = 1,rand do
			storm = eq.spawn2(210467,0,0,e.self:GetX() + math.random(-5,5), e.self:GetY() + math.random(-5,5), e.self:GetZ(), e.self:GetHeading());	--a_tumultuous_storm (210467)
			storm:AddToHateList(e.self:GetHateRandom(),1);
		end
	end
end

function event_death_complete(e)
eq.signal(210178,0); -- NPC: Gurebk_Lord_of_Krendic
end
