surf = surface_create(64, 64)
global.camstartx = x
global.camstarty = y
instance_create(x, y, oCamera)
global.targetx = x
global.targety = y
global.offsetx = 0
global.offsety = 0
global.enablecontrol = 1
global.itmtext1 = ""
global.itmtext2 = ""
global.itemtype = 0
global.objdeactivate = 1
global.myposx = 0
global.myposy = 0
global.mapposx = 3
global.mapposy = 3
global.currentroom = room
global.movingobj = 0
global.moverobj = 0
global.monstersalive = 0
mirror = 1
inwater = 0
waterfall = 0
speedmultiplier = 1
speedmultiresettimer = 0
invincible = 0
canbehit = 1
vjump = 0
hijump = 0
lockspinjump = 0
statetime = 0
airtime = 0
turning = 0
landing = 0
morphing = 0
nomorph = 0
mockball = 0
ballbounce = 0
ballfall = 0
unmorphing = 0
jumpfwd = 0
walljumping = 0
justwalljumped = 0
canturn = 1
aimdirection = 0
noaimup = 0
firing = 0
walking = 0
jwalk = 0
aimlock = 0
chargebeam = 0
global.wbdir = 0
ibeam = 0
pbeam = 0
wbeam = 0
sbeam = 0
novjump = 0
canclimb = 0
fixedx = 0
fixedy = 0
fxtimer = 0
onfire = 0
sbmove = 0
sbstate = 0
sball = 0
speedboost_steps = 0
speedboost = 0
shinespark = 0
dash = 0
charge = 0
sjdir = 0
sjball = 0
sjtargety = 0
sjtype = 0
spinjump_sound = 4
armmsl = 0
nofire = 0
burning = 0
plantdrain = 0
plantdrainfx = 0
aspr1 = 66
asprx = 0
aspry = 0
aspr2 = 66
aspr2x = 0
aspr2y = 0
aspr2a = 0
juststarted = 30
canrun = 0
global.savexpos = 0
savechoice = 1
savedisplay = 0
savedone = 0
cmhurt = 0
cmmorph = 0
moverobj = 0
idle = 0
timetoidle = 300
footstep = 0
canrecover = 0
collision_bottom = 0
elevator_target_room = 0
elevator_target_x = 0
elevator_target_y = 0
monster_drain = 0
monster_drainfx = 0
queen_drain = 0
queen_drainfx = 0
pbomb_drain = 0
pbomb_drainfx = 0
STANDING = 10
RUNNING = 11
DUCKING = 12
LOOKING_UP = 13
JUMPING = 15
FALLING = 16
DYING = 17
LEFT = 18
RIGHT = 19
ON_GROUND = 20
IN_AIR = 21
ON_LADDER = 22
BALL = 23
AIRBALL = 24
GRIP = 25
CLIMBING = 26
SPIDERBALL = 27
BRAKING = 28
SJSTART = 29
SUPERJUMP = 30
SJEND = 31
HURT = 32
IDLE = 33
SAVING = 34
SAVINGFX = 35
SAVINGSHIP = 36
SAVINGSHIPFX = 37
GRABBEDGAMMA = 38
KNOCKBACK1 = 39
KNOCKBACK1_LAND = 40
KNOCKBACK2 = 41
KNOCKBACK2_LAND = 42
A4EXPL = 43
ELEVATOR = 44
RECOVER = 45
GRABBED = 49
WATERJET = 50
GFELEVATOR = 51
GRABBEDOMEGA = 52
GRABBEDQUEEN = 53
GRABBEDQUEENMORPH = 54
GRABBEDQUEENBELLY = 55
LOCKEDBALL = 60
DEFEATED = 100
kLeft = 0
kLeftPushedSteps = 0
kLeftPressed = 0
kLeftReleased = 0
kRight = 0
kRightPushedSteps = 0
kRightPressed = 0
kRightReleased = 0
kUp = 0
kUpPushedSteps = 0
kUpPressed = 0
kUpReleased = 0
kDown = 0
kDownPushedSteps = 0
kDownPressed = 0
kDownReleased = 0
kAim = 0
kAimPushedSteps = 0
kAimPressed = 0
kAimReleased = 0
kAim2 = 0
kAim2PushedSteps = 0
kAim2Pressed = 0
kAim2Released = 0
kJump = 0
kJumpPushedSteps = 0
kJumpPressed = 0
kJumpReleased = 0
kFire = 0
kFirePushedSteps = 0
kFirePressed = 0
kFireReleased = 0
kMissile = 0
kMissilePushedSteps = 0
kMissilePressed = 0
kMissileReleased = 0
kSelect = 0
kSelectPushedSteps = 0
kSelectPressed = 0
kSelectReleased = 0
kWalk = 0
kWalkPushedSteps = 0
kWalkPressed = 0
kWalkReleased = 0
kMorph = 0
kMorphPushedSteps = 0
kMorphPressed = 0
kMorphReleased = 0
facing = 0
runAcc = 6.7
grav = 0.4
initialJumpAcc = -6.5
jumpTimeTotal = 60
climbAcc = 0.8
climbAnimSpeed = 0.1
departLadderXVel = 4
departLadderYVel = -4
maxSlope = 2
maxDownSlope = 2
canRun = 0
canFly = 0
canFlyJump = 0
flyMaxJumps = 5
frictionRunningX = 0.3
frictionRunningFastX = 0.7
frictionJumpingX = 0.85
frictionClimbingX = 0.5
frictionClimbingY = 0.8
frictionDuckingX = 0.8
frictionFlyingX = 0.7
xVelLimit = 15
yVelLimit = 5.7
JumpVelLimit = -15
xAccLimit = 9
yAccLimit = 9
setCollisionBounds(-6, -27, 6, 0)
state = IDLE
statePrev = state
statePrevPrev = statePrev
gravityIntensity = grav
jumpTime = jumpTimeTotal
jumpButtonReleased = 0
ladderTimer = 0
jumps = 0
flySpeed = 0
flySpeedTimer = 0
flyAccTimer = 0
flyAcc2Timer = 0
flyJumpsTimer = 0
flyJumpWasPressed = 0
makeActive()
global.enablecontrol = 0
alarm[3] = 300
empspark = -4
multiBall = 0
global.multiDamageCollision = 0
