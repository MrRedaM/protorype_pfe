extends GraphNode


var conditionNode : GraphNode = null
var trueNode : GraphNode = null
var falseNode : GraphNode = null

var condition : bool setget setCondition, getCondition

func _process(delta):
	pass


func setCondition(value):
	condition = value

func getCondition():
	#if(conditionNode.has_method("getBoolResult")):
	return conditionNode.getBoolResult()

func getBoolResult(node) -> bool:
	if trueNode == node :
		return getCondition()
	else :
		return !getCondition()

func onConnect(from, from_slot, to, to_slot):
	if(from == self):
		if from_slot == 1 :
			trueNode = to
		elif from_slot == 2 :
			falseNode = to
	else:
		conditionNode = from
