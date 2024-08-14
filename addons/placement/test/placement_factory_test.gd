class_name MUP_Placement_Factory_Test

extends GdUnitTestSuite

func test_vertices():
    var keys = [
        Vector2(1, 1), Vector2(1, 2), Vector2(1, 3),
        Vector2(2, 1), Vector2(2, 2), Vector2(2, 3),
        Vector2(3, 1), Vector2(3, 2), Vector2(3, 3)
    ]

    var pos = Vector2(2, 2)
    var size = Vector2(3, 3)
    var placement = (MUP_Placement_Factory.new()).create(pos, size)
    assert_dict(placement.get_vertices()).contains_keys(keys)
    assert_dict(placement.get_vertices()).has_size(9)


func test_edges():
    var keys = [
        Vector2(1, 1), Vector2(1, 2), Vector2(1, 3),
        Vector2(2, 1), Vector2(2, 3), Vector2(3, 1),
        Vector2(3, 2), Vector2(3, 3)
    ]

    var pos = Vector2(2, 2)
    var size = Vector2(3, 3)
    var placement = (MUP_Placement_Factory.new()).create(pos, size)
    assert_dict(placement.get_edges()).contains_keys(keys)
    assert_dict(placement.get_edges()).has_size(8)


func test_corners():
    var keys = [Vector2(1, 1), Vector2(1, 3), Vector2(3, 1), Vector2(3, 3)]
    var pos = Vector2(2, 2)
    var size = Vector2(3, 3)
    var placement = (MUP_Placement_Factory.new()).create(pos, size)
    assert_dict(placement.get_corners()).contains_keys(keys)
    assert_dict(placement.get_corners()).has_size(4)