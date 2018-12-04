instance_destroy(EnemyCurveBullet)
instance_destroy(Enemy)
instance_destroy(Bullet)
instance_destroy(EnemyBullet)
instance_destroy(Spike)
instance_destroy(SpikeWheel)

var i = instance_number(Coin)
global.points += i * 10
instance_destroy(Coin)

global.combo = 0