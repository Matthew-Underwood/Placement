class_name MUP_Placement_Factory

var _corners = {}

var _edges = {}

var _vertices = {}

func create(pos : Vector2, size : Vector2):

    var top = pos - (size * 0.5).floor() # 1,1
    var right = top + Vector2(size.x - 1, 0) # 3,1
    var bottom = top + size - Vector2.ONE # 3,3
    var left = top + Vector2(0, size.y - 1) # 1,3

    _set_corner(top, "top")
    _set_corner(right, "right")
    _set_corner(bottom, "bottom")
    _set_corner(left, "left")

    for x in range(top.x, size.x + 1):
        for y in range(top.y, size.y + 1):
            
            if (y == top.y):
                _set_edge(Vector2(x, y), "top-right")

            if (y == bottom.y):
                _set_edge(Vector2(x, y), "bottom-left")

            if (x == bottom.x):
                _set_edge(Vector2(x, y), "bottom-right")

            if (x == top.x):
                _set_edge(Vector2(x, y), "top-left")

            _vertices[Vector2(x, y)] = true
    
    return MUP_Placement.new(_edges, _corners, _vertices)


func _set_corner(pos : Vector2, type : String):
    _corners[pos] = type


func _set_edge(pos : Vector2, type : String):
    _edges[pos] = type