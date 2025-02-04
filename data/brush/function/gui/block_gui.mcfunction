
# Attempts to display current variant of block
# $title @s actionbar [{"translate":"bgui.align.right"}, {"translate":"bgui.slot"}, {"translate":"bgui.slot.current"}, {"translate":"bgui.block.$(display)"}, {"translate":"bgui.slot"}, {"translate":"bgui.slot.current"}, {"translate":"bgui.icon.$(sc_type)"}, {"translate":"bgui.align.count_2"}]

# Replaces Item
$item modify entity @s weapon.mainhand [{function:set_item,item:"$(block)"},{function:set_components,components:{lore:["\"$(base)\""],custom_data:{variant_base:"$(base)"}}}]
#execute if items entity @s weapon.mainhand #slabs store result score slab_count inventory.brush run data get entity @s SelectedItem.count
item modify entity @s weapon.mainhand brush:to_variant_item