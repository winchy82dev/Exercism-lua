local hamming = {}

local function compute(a,b)
  --les deux dna a comparer doivent avoir la meme longeur
  if #a == #b then
    print ("the sequences are equal length")
    dna1={}
    dna2={}
    --convertir les mots en tableaux
    a:gsub(".",function(c) table.insert(dna1,c) end)
    b:gsub(".",function(c) table.insert(dna2,c) end)
    n=0
    --affiche les valeurs entre les deux tableaux
    for i=1,#a do
      --print(dna1[i],dna2[i])
      --comparer les valeur

      if dna1[i] ~= dna2[i] then
        --incrementer la valeur si les deux caracteres sont differents
        n = n+1
      end
    end
    return print(n)
  else
    print("The Hamming distance is only defined for sequences of equal length")

    --definir de combien de nucleons 
    if #a > #b then
     n= #b- #a
    elseif #a < #b then
      n= #a - #b
    end
    return print(n)
  end

end
compute('lole',"eeee")
return hamming