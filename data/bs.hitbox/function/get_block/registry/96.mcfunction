# wall group
data modify storage bs:out hitbox.shape set value []
execute if block ~ ~ ~ #bs.hitbox:shape/wall[up=true] run data modify storage bs:out hitbox.shape append value [4, 0, 4, 12, 16, 12]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[west=low] run data modify storage bs:out hitbox.shape append value [0, 0, 5, 8, 14, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[east=low] run data modify storage bs:out hitbox.shape append value [8, 0, 5, 16, 14, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[north=low] run data modify storage bs:out hitbox.shape append value [5, 0, 0, 11, 14, 8]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[south=low] run data modify storage bs:out hitbox.shape append value [5, 0, 8, 11, 14, 16]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[west=tall] run data modify storage bs:out hitbox.shape append value [0, 0, 5, 8, 16, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[east=tall] run data modify storage bs:out hitbox.shape append value [8, 0, 5, 16, 16, 11]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[north=tall] run data modify storage bs:out hitbox.shape append value [5, 0, 0, 11, 16, 8]
execute if block ~ ~ ~ #bs.hitbox:shape/wall[south=tall] run data modify storage bs:out hitbox.shape append value [5, 0, 8, 11, 16, 16]
