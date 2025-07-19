-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

local lettersLower = {"a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"}
local lettersUpper = {"A", "B", "C", "D", "E,", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"}
local numbers = {"0", "1", "2", "3", "4", "5", "6", "7", "8", "9"}
local specials = {"'", "!", "#", "$", "%", "&", "*", "(", ")", "-", "_", "=", "+", "[", "]", "|", "{", "}", "<", ",", ">", ".", ";", ":", "?", "/"}
local characterLists = {
    lettersLower,
    lettersUpper,
    numbers,
    specials
}

print("Quantos carácteres deseja na senha?")
local length = io.read("*n")

local password = ""
for i = 1, length, 1 do
    
    -- Obter lista
    local listIndex = math.random(#characterLists)
    local list = characterLists[listIndex]

    -- Obter caracteres
    local characterIndex = math.random(#list)
    local char = list[characterIndex]

    -- AAcrescentar caracteres
    password = password .. char
end

-- Mostrar senha
print(string.format("Sua senha é: %s", password))
