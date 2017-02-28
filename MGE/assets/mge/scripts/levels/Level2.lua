objects = {}
objects[0] = creategameobject("BGM", false, -14.16089, 5.704401, 5.262645, 0, 0, 0, 1, 1, 1, 1, "", "")
addbehaviour(objects[0], "audiosource", "bgm.wav", true, true, true, true, 1, 1, true)

objects[1] = creategameobject("Directional Light (1)", false, 0, 3, 0, 0.3542133, -0.04831366, -0.2305194, 0.9050191, 1, 1, 1, "", "")
addbehaviour(objects[1], "light", "directional", 1, 0.9568627, 0.8392157, 1, 0.3, 30)

objects[2] = creategameobject("Tablet", false, -11.674, 7.518, 9.401, 0, 0, 0, 1, 0.7, 0.3, 1, "plane.obj", "lit")
addbehaviour(objects[2], "npc", 3, false, false)
addbehaviour(objects[2], "boxcollider", 0.5, 0.1500001, 0.3500004)
addbehaviour(objects[2], "rigidbody", 1, false, false, false, false, false, false, false)

objects[3] = creategameobject("Broken cable", false, -7.176, 1.139, 8.041, 0.2705981, -0.6532815, 0.6532815, 0.2705981, 0.1000001, 0.573524, 0.1000002, "shape.obj", "lit")
addbehaviour(objects[3], "npc", 0, true, false)
addbehaviour(objects[3], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[3], "capsulecollider", 0.5, 2)

objects[4] = creategameobject("rounddoor", false, -14.61, 0.7200003, 17.13, 0, 0, 0, 1, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[4], "meshcollider", true)
addbehaviour(objects[4], "npc", 4, false, false)
addbehaviour(objects[4], "rigidbody", 0, true, false, false, false, false, false, false)

objects[5] = creategameobject("Walls", false, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, "", "")
objects[6] = creategameobject("Wall", false, -18.99, 0.72, 4.83, 0, -0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[6], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[6], "meshcollider", true)
addchild(objects[5], objects[6], false)
objects[7] = creategameobject("Wall (1)", false, -18.99, 0.72, 9.77, 0, -0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[7], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[7], "meshcollider", true)
addchild(objects[5], objects[7], false)
objects[8] = creategameobject("Wall (2)", false, -18.99, 0.72, 14.84, 0, -0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[8], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[8], "meshcollider", true)
addchild(objects[5], objects[8], false)
objects[9] = creategameobject("Wall (3)", false, -18.99, 0.72, 20.19, 0, -0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[9], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[9], "meshcollider", true)
addchild(objects[5], objects[9], false)
objects[10] = creategameobject("Wall (4)", false, -10.72, 0.72, 18.74, 0, 0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[10], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[10], "meshcollider", true)
addchild(objects[5], objects[10], false)
objects[11] = creategameobject("Wall (5)", false, -3.59, 0.72, 15.04, 0, 0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[11], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[11], "meshcollider", true)
addchild(objects[5], objects[11], false)
objects[12] = creategameobject("Wall (6)", false, -3.59, 0.72, 20.03, 0, 0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[12], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[12], "meshcollider", true)
addchild(objects[5], objects[12], false)
objects[13] = creategameobject("Wall (7)", false, -3.59, 0.72, 9.99, 0, 0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[13], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[13], "meshcollider", true)
addchild(objects[5], objects[13], false)
objects[14] = creategameobject("Wall (8)", false, -3.59, 0.72, 4.64, 0, 0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[14], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[14], "meshcollider", true)
addchild(objects[5], objects[14], false)
objects[15] = creategameobject("Wall (9)", false, -3.59, 0.72, 7.55, 0, 0.7071068, 0, 0.7071068, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[15], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[15], "meshcollider", true)
addchild(objects[5], objects[15], false)
objects[16] = creategameobject("Wall (10)", false, -15.36, 0.72, 1.17, 0, -1, 0, 0, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[16], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[16], "meshcollider", true)
addchild(objects[5], objects[16], false)
objects[17] = creategameobject("Wall (11)", false, -10.31, 0.72, 1.17, 0, -1, 0, 0, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[17], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[17], "meshcollider", true)
addchild(objects[5], objects[17], false)
objects[18] = creategameobject("Wall (12)", false, -5.45, 0.72, 1.17, 0, -1, 0, 0, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[18], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[18], "meshcollider", true)
addchild(objects[5], objects[18], false)
objects[19] = creategameobject("Wall (13)", false, -7.69, 0.72, 22.81, 0, 0, 0, 1, 1, 1, 1, "rounddoor.obj", "rounddoor")
addbehaviour(objects[19], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[19], "meshcollider", true)
addchild(objects[5], objects[19], false)

objects[20] = creategameobject("Keypad", false, -17.944, 3.12, 13.61935, 0, -0.7071068, 0, 0.7071068, 1.358284, 1.358284, 1.358284, "Keypad.obj", "Keypad")
addbehaviour(objects[20], "npc", 2, false, true)
addbehaviour(objects[20], "rigidbody", 0, true, false, false, false, false, false, false)
addbehaviour(objects[20], "boxcollider", 0.679142, 0.679142, 0.679142)

objects[21] = creategameobject("Keycard", false, -12.568, 1.602, 9.401, 0, 0, 0, 1, 0.1, 0.05, 0.3, "Shape.obj", "lit")
addbehaviour(objects[21], "npc", 25, true, false)
addbehaviour(objects[21], "boxcollider", 0.1499996, 0.02499998, 0.05000019)
addbehaviour(objects[21], "rigidbody", 1, false, false, false, false, false, false, false)

objects[22] = creategameobject("Floor", false, 0, 0, 25.83, 0, 0, 0, 1, 60, 1, 60, "plane.obj", "lit")
addbehaviour(objects[22], "rigidbody", 0, false, false, false, false, false, false, false)
addbehaviour(objects[22], "boxcollider", 30, 0.5, 30)

objects[23] = creategameobject("Table", false, -11.91571, 1.358, 9.417349, 0, 0, 0, 1, 2, 0.2, 1.5, "plane.obj", "lit")
addbehaviour(objects[23], "rigidbody", 0, true, false, false, false, false, false, false)
addbehaviour(objects[23], "boxcollider", 1.5, 0.2, 2)

objects[24] = creategameobject("fingerprintscanner", false, -17.64, 2.999, 8.89, 0, -0.7071068, 0, 0.7071068, 1, 1, 1, "fingerprintscanner.obj", "lit")
addbehaviour(objects[24], "rigidbody", 0, true, true, true, true, true, true, true)
addbehaviour(objects[24], "meshcollider", true)
addbehaviour(objects[24], "npc", 1, false, false)

objects[25] = creategameobject("Directional Light", false, 0, 3, 0, 0.4198726, 0.3608868, -0.04809558, 0.831357, 1, 1, 1, "", "")
addbehaviour(objects[25], "light", "directional", 1, 0.9568627, 0.8392157, 1, 0.3, 30)

objects[26] = creategameobject("Player", false, -7.33, 2.125, 5.79, 0, 0, 0, 1, 1, 1, 1, "", "")
addbehaviour(objects[26], "player")
addbehaviour(objects[26], "charactercontroller", 45, 0.3, 0.5, 2)
objects[27] = creategameobject("Camera", false, 0, 0.56, -0.11, 0, -1, 0, -4.371139E-08, 1, 1, 1, "", "")
addbehaviour(objects[27], "camera", 60, 0.3, 1000)
addchild(objects[26], objects[27], false)

