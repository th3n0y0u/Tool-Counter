local team = game.Teams.Outlaws

script.Parent.Touched:connect(function(hit)
	if hit.Parent:FindFirstChild('Humanoid') then
		if hit.Parent.Humanoid.Health > 0 then
			local player = game.Players:GetPlayerFromCharacter(hit.Parent)
			if player.TeamColor == team.TeamColor then
				if player.Backpack:FindFirstChild("Soop") then
					player.Backpack.Soop:Destroy()
					player.leaderstats["Soop Stolen"].Value = player.leaderstats["Soop Stolen"].Value + 1
				end
			end
		end
	end
end)  