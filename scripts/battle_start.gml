if global.gameState = 0
{
    GlobalCont.player_x = Player.x;
    GlobalCont.player_y = Player.y;
    GlobalCont.player_dir = 0;
    GlobalCont.player_room = room;
    player_stop();
    instance_create(0,0,CombatStarter);
    global.gameState = 1;
    with TextBox
    {
        instance_destroy();
    }
    with QuestionBox
    {
        instance_destroy();
    }
    with QuestionCursor
    {
        instance_destroy();
    }
}
