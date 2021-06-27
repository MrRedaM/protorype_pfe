extends GraphEdit



func _ready():
	pass


func _on_Graph_connection_request(from, from_slot, to, to_slot):
	connect_node(from, from_slot, to, to_slot)
	get_node(from).onConnect(get_node(from), from_slot, get_node(to), to_slot)
	get_node(to).onConnect(get_node(from), from_slot, get_node(to), to_slot)
