unitDef = {
  unitname               = [[cormist]],
  name                   = [[Slasher]],
  description            = [[Ranged Support/AA Truck (must stop to fire)]],
  acceleration           = 0.0354,
  brakeRate              = 0.0358,
  buildCostEnergy        = 140,
  buildCostMetal         = 140,
  builder                = false,
  buildPic               = [[CORMIST.png]],
  buildTime              = 140,
  canAttack              = true,
  canGuard               = true,
  canMove                = true,
  canPatrol              = true,
  canstop                = [[1]],
  category               = [[LAND]],
  collisionVolumeOffsets = [[0 -1 0]],
  collisionVolumeScales  = [[38 55 59]],
  collisionVolumeTest    = 1,
  collisionVolumeType    = [[ellipsoid]],
  corpse                 = [[DEAD]],

  customParams           = {
    description_bp = [[Veículo lançador de mísseis]],
    description_fr = [[Camion Lance-Missile]],
	description_de = [[Unterstütung/Flugabwehr Laster (muss zum Feuern anhalten)]],
    helptext       = [[Keep the Slasher at maximum range to harass the opponent's units. The Slasher's missiles track, so they are ideal to kill fast-moving crawling bombs. It is able to hit both air and land, allowing you to counter an enemy who is using both. Cannot fire over terraform walls, and does poorly if an enemy is allowed to close range. Unlike normal skirmishers, the Slasher cannot fire while moving.]],
    helptext_bp    = [[Slasher é um escaramuçador. Mantenha-o a distância máxima do inimigo para perturbar suas unidades ou comandante. Pode atirar tanto contra inimigos aéreos como terrestres, sendo úteis quando o inimigo está usando ambos, e seus mísseis s?o tele-guiados possibilitando acertar alvos pequenos e rápidos como bombas rastejantes. N?o pode atirar sobre muros de terra e luta mal de perto.]],
    helptext_fr    = [[Le Slasher est un camion Tirailleur. Sa trcs grande portée compense un peu son manque de puissance de feu. Capable de tirer en l'air ou au sol, il saura quand meme trouver sa place dans votre armée.]],
	helptext_de    = [[Halte deinen Slasher immer auf maximaler Distanz zum Feind, um diesen am besten zu belagern. Seine Raketen sind gelenkt und somit ideal, um sich schnell bewegende Einheiten oder Crawling Bomben zu vernichten. Er kann sowohl Land-, als auch Lufteinheiten treffen, aber nicht über Wände und Hügel schießen. Außerdem versagt er kläglich, sobald sich Feinde dicht am ihm befinden. Im Gegensatz zu dem meisten normalen Skirmishern, kann der Slasher nicht Feuern, wenn er sich bewegt.]],
  },

  explodeAs              = [[BIG_UNITEX]],
  footprintX             = 3,
  footprintZ             = 3,
  iconType               = [[vehiclesupport]],
  idleAutoHeal           = 5,
  idleTime               = 1800,
  leaveTracks            = true,
  mass                   = 120,
  maxDamage              = 560,
  maxSlope               = 18,
  maxVelocity            = 2.5,
  maxWaterDepth          = 22,
  minCloakDistance       = 75,
  movementClass          = [[TANK3]],
  moveState              = 0,
  noAutoFire             = false,
  noChaseCategory        = [[TERRAFORM SATELLITE SUB]],
  objectName             = [[cormist_512.s3o]],
  pushResistant          = 0,
  seismicSignature       = 4,
  selfDestructAs         = [[BIG_UNITEX]],

  sfxtypes               = {

    explosiongenerators = {
      [[custom:SLASHMUZZLE]],
      [[custom:SLASHREARMUZZLE]],
    },

  },

  side                   = [[CORE]],
  sightDistance          = 660,
  smoothAnim             = true,
  trackOffset            = -6,
  trackStrength          = 5,
  trackStretch           = 1,
  trackType              = [[StdTank]],
  trackWidth             = 30,
  turninplace            = 0,
  turnRate               = 486,
  workerTime             = 0,

  weapons                = {

    {
      def                = [[CORTRUCK_MISSILE]],
      onlyTargetCategory = [[FIXEDWING LAND SINK TURRET SHIP SWIM FLOAT GUNSHIP HOVER]],
    },

  },


  weaponDefs             = {

    CORTRUCK_MISSILE = {
      name                    = [[Homing Missiles]],
      areaOfEffect            = 48,
	  avoidFeature            = true,
      cegTag                  = [[missiletrailyellow]],
      craterBoost             = 1,
      craterMult              = 2,

      damage                  = {
        default = 50,
        subs    = 2,
      },

      explosionGenerator      = [[custom:FLASH2]],
      fireStarter             = 70,
      flightTime              = 3,
      impulseBoost            = 0,
      impulseFactor           = 0.4,
      interceptedByShieldType = 2,
      model                   = [[wep_m_frostshard.s3o]],
      range                   = 600,
      reloadtime              = 0.75,
      smokedelay              = [[0.1]],
      smokeTrail              = true,
      soundHit                = [[explosion/ex_med17]],
      soundStart              = [[weapon/missile/missile_fire11]],
      startsmoke              = [[1]],
      startVelocity           = 450,
      texture2                = [[lightsmoketrail]],
      tolerance               = 8000,
      tracks                  = true,
      turnRate                = 33000,
      turret                  = true,
      weaponAcceleration      = 109,
      weaponTimer             = 5,
      weaponType              = [[MissileLauncher]],
      weaponVelocity          = 545,
    },

  },


  featureDefs            = {

    DEAD  = {
      description      = [[Wreckage - Slasher]],
      blocking         = true,
      category         = [[corpses]],
      damage           = 560,
      energy           = 0,
      featureDead      = [[HEAP]],
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[20]],
      hitdensity       = [[100]],
      metal            = 56,
      object           = [[cormist_dead_new.s3o]],
      reclaimable      = true,
      reclaimTime      = 56,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

    HEAP  = {
      description      = [[Debris - Slasher]],
      blocking         = false,
      category         = [[heaps]],
      damage           = 560,
      energy           = 0,
      featurereclamate = [[SMUDGE01]],
      footprintX       = 3,
      footprintZ       = 3,
      height           = [[4]],
      hitdensity       = [[100]],
      metal            = 28,
      object           = [[debris3x3c.s3o]],
      reclaimable      = true,
      reclaimTime      = 28,
      seqnamereclamate = [[TREE1RECLAMATE]],
      world            = [[All Worlds]],
    },

  },

}

return lowerkeys({ cormist = unitDef })
