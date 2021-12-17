function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is an desviation note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Health' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'none'); --Change texture
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has no penalties
		end
	end
	--debugPrint('Script started!')
	function noteMiss(id, i, noteType, isSustainNote)
		if noteType == 'Health' then
			setProperty('health', 500);
		characterPlayAnim('chara', 'idle', true);

	end
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Health' then
			setProperty('health', 500);
		characterPlayAnim('chara', 'idle', true);
	end
end