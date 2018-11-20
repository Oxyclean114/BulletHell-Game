instance_destroy(EnemyCurveBullet)
instance_destroy(Enemy)
instance_destroy(Bullet)
instance_destroy(EnemyBullet)

var i = instance_number(Coin)
global.points += i * 10
instance_destroy(Coin)