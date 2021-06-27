extends GraphNode

var conditionNode : GraphNode = null

func _process(delta):
	if conditionNode != null :
		#if conditionNode.has_method("getBoolResult") :
		$TextureRect.visible = conditionNode.getBoolResult(self)


func onConnect(from, from_slot, to, to_slot):
	conditionNode = from
