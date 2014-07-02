unitDef = {
  unitname               = [[cornukesub]],
  name                   = [[Leviathan]],
  description            = [[Tactical Nuke Missile Sub, Drains 6.25 m/s, 90 second stockpile]],
  acceleration           = 0.0372,
  activateWhenBuilt      = true,
  brakeRate              = 0.1942,
  buildCostEnergy        = 3000,
  buildCostMetal         = 3000,
  builder                = false,
  buildPic               = [[cornukesub.png]],
  buildTime              = 3000,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  category               = [[SUB FIREPROOF]],
  collisionVolumeOffsets = [[0 -5 0]],
  collisionVolumeScales  = [[30 25 110]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[box]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_fr = [[Sous-Marin Lance Missile Tactique]],
	description_de = [[Taktisches Atom-/Antiatomraketen U-Boot]],
	description_pl = [[Lodz podwodna z rakietami taktycznymi i tarcza antyrakietowa]],
    fireproof      = [[1]],
    helptext       = [[The Leviathan provides both a hidden defense against enemy nuclear missiles and a standoff precision strike weapon. It has no defense against direct attacks and should avoid contact with the enemy.]],
    helptext_fr    = [[Le Leviathan est la terreur des profondeurs. Tapi au fond des océans, il utilise ses missiles amphibies pour lancer ses terribles tete nucléaires tactiques sur de grande distances. Capable de réduire r néant une base en quelques tirs bien ajustés, il scme la terreur car on voit rarement venir la menace. (Il faut lancer la construction de missiles depuis le sousmarin)]],
	helptext_de    = [[Der Leviathan bietet zum einen eine versteckte Verteidigung gegen Atomraketen und andererseits eine Präzisionswaffe. Er besitzt keinen Schutz gegen direkte Angriffe und sollte aus diesem Grund jeden direkten Kontakt mit feindlichen Einheiten vermeiden.]],
	helptext_pl    = [[Leviathan oferuje zarowno ukryta obrone przed wrogimi glowicami atomowymi, jak i rakiety taktyczne - precyzyjna bron dalekiego zasiegu; jest jednak bezbronny w bezposrednim starciu.]],
	modelradius    = [[15]],
	stockpiletime  = [[90]],
	stockpilecost  = [[500]],
  },

  explodeAs              = [[BIG_UNITEX]],
  fireState              = 0,
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[missilesub]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  mass                   = 556,
  maxDamage              = 3000,
  maxVelocity            = 2.79,
  minCloakDistance       = 75,
  minWaterDepth          = 15,
  movementClass          = [[UBOAT3]],
  moveState              = 0,
  noAutoFire             = false,
  objectName             = [[CORNUKESUB]],
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],
  side                   = [[CORE]],
  sightDistance          = 660,
  smoothAnim             = true,
  sonarDistance          = 0,
  turninplace            = 0,
  turnRate               = 307,
  upright                = true,
  waterline              = 25,
  workerTime             = 0,

  weapons                = {
    --{
    --  def = [[SUB_AMD_ROCKET]],
    --},

    {
      def                = [[TACNUKE]],
      badTargetCategory  = [[SWIM LAND SUB SHIP HOVER]],
      onlyTargetCategory = [[SWIM LAND SUB SINK TURRET FLOAT SHIP HOVER]],
    },

  },


  weaponDefs             = {

    SUB_AMD_ROCKET = {
      name                    = [[Anti-Nuke Missile]],
      areaOfEffect            = 420,
      collideFriendly         = false,
      coverage                = 1500,
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 1500,
        subs    = 75,
      },

      explosionGenerator      = [[custom:ANTINUKE]],
      fireStarter             = 100,
      flighttime              = 100,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      interceptor             = 1,
      model                   = [[antinukemissile.s3o]],
      noSelfDamage            = true,
      range                   = 3000,
      reloadtime              = 12,
      smokeTrail              = true,
      soundHit                = [[weapon/missile/vlaunch_hit]],
      soundStart              = [[weapon/missile/missile_launch]],
      startsmoke              = [[1]],
      startVelocity           = 400,
      tolerance               = 4000,
      tracks                  = true,
      turnrate                = 65535,
      twoPhase                = true,
      vlaunch                 = true,
      waterWeapon             = true,
      weaponAcceleration      = 400,
      weaponTimer             = 1,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1300,
    },


    TACNUKE        = {
      name                    = [[Tactical Nuke]],
      areaOfEffect            = 256,
      collideFriendly         = false,
      commandfire             = true,
      craterBoost             = 4,
      craterMult              = 3.5,

      damage                  = {
        default = 3500,
        planes  = 3500,
        subs    = 175,
      },

      edgeEffectiveness       = 0.4,
      explosionGenerator      = [[custom:NUKE_150]],
      fireStarter             = 0,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 1,
      model                   = [[wep_tacnuke.s3o]],
      noSelfDamage            = true,
      range                   = 3000,
      reloadtime              = 1,
      smokeTrail              = true,
      soundHit                = [[explosion/mini_nuke]],
      soundStart              = [[weapon/missile/tacnuke_launch]],
      stockpile               = true,
      stockpileTime           = 10^5,
      tolerance               = 4000,
      turnrate                = 18000,
      twoPhase                = true,
      vlaunch                 = true,
      waterWeapon             = true,
      weaponAcceleration      = 180,
      weaponTimer             = 4,
      weaponType              = [[StarburstLauncher]],
      weaponVelocity          = 1200,
    },

  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Leviathan]],
      blocking         = false,
      category         = [[corpses]],
      damage           = 3000,
      energy           = 0,
      featureDead      = [[HEAP]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 1200,
      object           = [[CORSSUB_DEAD]],
      reclaimable      = true,
      reclaimTime      = 1200,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },


    HEAP  = {
      description      = [[Debris - Leviathan]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 3000,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 4,
      footprintZ       = 4,
      hitdensity       = [[100]],
      metal            = 600,
      object           = [[debris4x4c.s3o]],
      reclaimable      = true,
      reclaimTime      = 600,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ cornukesub = unitDef })
