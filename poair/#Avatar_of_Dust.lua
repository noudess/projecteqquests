function event_combat(e)
	if (e.joined == true) then
			if(not eq.is_paused_timer("despawn")) then
				eq.pause_timer("despawn");
			end
		eq.set_timer('Hardblur', 180 * 1000);
		eq.set_timer('Softblur', 6 * 1000);
	else
		eq.stop_timer('Hardblur');
		eq.stop_timer('Softblur');
		eq.resume_timer("despawn");
	end
end


function event_timer(e)
	if (e.timer == 'Hardblur') then
		e.self:WipeHateList();
	elseif (e.timer == 'Softblur') then
		if (math.random(100)<=5) then
			e.self:WipeHateList();
		end
	elseif (e.timer == "despawn") then
			eq.stop_timer("despawn");
			eq.depop();
	end
end


function event_spawn(e)
	eq.set_timer("despawn", 2700 * 1000);
	e.self:Shout("Elements of Air and Dust I call upon you to aid me in the defense of this land!");
end

function event_death_complete(e)
eq.signal(215461,4);
end
