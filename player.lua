player = {};
player.body = love.physics.newBody( myWorld, 198, 443, "dynamic" );
player.shape = love.physics.newRectangleShape( 66, 92 );
player.fixture = love.physics.newFixture( player.body, player.shape );
player.sprite = sprites.player_stand;
player.centerX = sprites.player_stand:getWidth() / 2;
player.centerY = sprites.player_stand:getHeight() / 2;
player.speed = 200;
player.grounded = false;
player.direction = 1;
player.body:setFixedRotation( true );

function playerUpdate( dt )
  if gameState == 2 then
    if love.keyboard.isDown( "left" ) then
      player.body:setX( player.body:getX() - player.speed * dt );
      player.direction = -1;
    elseif love.keyboard.isDown( "right" ) then
      player.body:setX( player.body:getX() + player.speed * dt );
      player.direction = 1;
    end
  end

  if player.grounded == true then
    player.sprite = sprites.player_stand;
  else
    player.sprite = sprites.player_jump;
  end
end
