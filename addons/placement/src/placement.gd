class_name MUP_Placement

var _edges : Dictionary
var _corners : Dictionary
var _vertices : Dictionary


func _init(edges : Dictionary, corners : Dictionary, vertices : Dictionary):
    _edges = edges
    _corners = corners
    _vertices = vertices


func get_vertices():
    return _vertices


func get_edges():
    return _edges


func get_corners():
    return _corners

