.class public Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;
    }
.end annotation


# static fields
.field public static final DEVICE_STATE_CLOSE:I = 0x0

.field public static final DEVICE_STATE_CLOSE_ALL:I = 0x64

.field private static final DEVICE_STATE_LOCK:Ljava/lang/Object;

.field public static final DEVICE_STATE_TENT:I = 0x1

.field private static final RESET_TIME_OUT:J = 0x5dcL

.field public static final TAG:Ljava/lang/String; = "FSS_OplusFoldSwitchStateObserver"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceFolding:Z

.field private mDeviceState:I

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final mFoldSwitchStateObserver:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mPendingFoldAnimationTrigger:J


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->DEVICE_STATE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;-><init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;)V

    iput-object v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mFoldSwitchStateObserver:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;

    new-instance v0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;

    invoke-direct {v0, p0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$1;-><init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;)V

    iput-object v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceFolding:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceState:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    iput-object p1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {p0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->registerDeviceStateCallback()V

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->setDeviceState(I)V

    return-void
.end method

.method public static synthetic access$200(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->updateDeviceFolding(Z)V

    return-void
.end method

.method private isFoldedDeviceState(I)Z
    .registers 3

    const/4 p0, 0x1

    if-eqz p1, :cond_b

    if-eq p1, p0, :cond_b

    const/16 v0, 0x64

    if-ne p1, v0, :cond_a

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :cond_b
    :goto_b
    return p0
.end method

.method private isFoldedState(I)Z
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFlipDevice()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-direct {p0, p1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->isFoldedDeviceState(I)Z

    move-result p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private registerDeviceStateCallback()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mContext:Landroid/content/Context;

    const-string v1, "device_state"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    return-void
.end method

.method private setDeviceState(I)V
    .registers 3

    sget-object v0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->DEVICE_STATE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iput p1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceState:I

    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private updateDeviceFolding(Z)V
    .registers 6

    iget-boolean v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceFolding:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_f

    iput-wide v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    goto :goto_1b

    :cond_f
    iget-wide v2, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    :cond_1b
    :goto_1b
    const-string v0, "updateDeviceFolding old = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceFolding:Z

    const-string v2, ", new = "

    const-string v3, ", mPendingFoldAnimationTrigger = "

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-wide v1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FSS_OplusFoldSwitchStateObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceFolding:Z

    return-void
.end method


# virtual methods
.method public buildFoldAnimIfNeed()Z
    .registers 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long p0, v0, v2

    if-gtz p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildFoldAnimIfNeed: intervals = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", needPendingFoldAnim = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FSS_OplusFoldSwitchStateObserver"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public getDeviceFolded()Z
    .registers 3

    sget-object v0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->DEVICE_STATE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget v1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceState:I

    invoke-direct {p0, v1}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->isFoldedState(I)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public getDeviceFolding()Z
    .registers 4

    const-string v0, "getDeviceFolding: mDeviceFolding = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceFolding:Z

    const-string v2, "FSS_OplusFoldSwitchStateObserver"

    invoke-static {v0, v1, v2}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mDeviceFolding:Z

    return p0
.end method

.method public getDeviceFoldingRotationAnimations(IIIII)[Landroid/view/animation/Animation;
    .registers 30

    move/from16 v0, p4

    move/from16 v1, p5

    const-string v2, "getDeviceFoldingRotationAnimations ==> delta =:"

    const-string v3, ",originWidth =:"

    const-string v4, ",originHeight =:"

    move/from16 v5, p1

    move/from16 v6, p2

    invoke-static {v2, v5, v3, v6, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",finalWidth =:"

    const-string v4, ",finalHeight =:"

    move/from16 v5, p3

    invoke-static {v2, v5, v3, v0, v4}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a  # 0.3f

    const/4 v4, 0x0

    const v5, 0x3dcccccd  # 0.1f

    const/high16 v6, 0x3f800000  # 1.0f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/animation/Animation;

    new-instance v5, Landroid/view/animation/AnimationSet;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v5, v9}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    new-instance v10, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$2;

    const/16 v11, 0xc8

    move-object/from16 v12, p0

    invoke-direct {v10, v12, v4, v4, v11}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$2;-><init>(Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;FFI)V

    invoke-virtual {v5, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    int-to-long v10, v11

    invoke-virtual {v5, v10, v11}, Landroid/view/animation/AnimationSet;->setStartOffset(J)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    invoke-direct {v4, v8}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {v4, v9}, Landroid/view/animation/AnimationSet;->setFillBefore(Z)V

    invoke-virtual {v4, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    invoke-virtual {v4, v9}, Landroid/view/animation/AnimationSet;->setFillEnabled(Z)V

    new-instance v10, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v10, v6, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const/16 v6, 0x190

    int-to-long v13, v6

    invoke-virtual {v10, v13, v14}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v10, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v2, Landroid/view/animation/ClipRectAnimation;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {v2, v6, v11}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v13, v14}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    invoke-virtual {v4, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const v18, 0x3f4ccccd  # 0.8f

    const/high16 v17, 0x3f800000  # 1.0f

    const/high16 v19, 0x3f800000  # 1.0f

    const/16 v20, 0x2

    const/high16 v21, 0x3f000000  # 0.5f

    const/16 v22, 0x2

    const/high16 v23, 0x3f000000  # 0.5f

    move-object v15, v0

    move/from16 v16, v18

    invoke-direct/range {v15 .. v23}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    invoke-virtual {v0, v13, v14}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    invoke-virtual {v0, v7}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v4, v10}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual/range {p0 .. p0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->getDeviceFolded()Z

    move-result v1

    if-nez v1, :cond_b5

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_b5
    sget-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    xor-int/lit8 v1, v0, 0x1

    invoke-static {v5, v1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationHasRoundedCorners(Landroid/view/animation/Animation;Z)V

    xor-int/2addr v0, v9

    invoke-static {v4, v0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationHasRoundedCorners(Landroid/view/animation/Animation;Z)V

    aput-object v5, v3, v8

    aput-object v4, v3, v9

    return-object v3
.end method

.method public onAnimationStart()V
    .registers 3

    const-string v0, "FSS_OplusFoldSwitchStateObserver"

    const-string v1, "onAnimationStart reset mPendingFoldAnimationTrigger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mPendingFoldAnimationTrigger:J

    return-void
.end method

.method public registerOplusFoldSwitchStateObserver()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mFoldSwitchStateObserver:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;

    invoke-static {p0}, Lcom/oplus/foldswitch/ReflectionHelper;->registerOplusFoldSwitchStateObserver(Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;)V

    return-void
.end method

.method public skipDefaultTransitionIfNeed(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->buildFoldAnimIfNeed()Z

    move-result p0

    if-eqz p0, :cond_1f

    const/16 p0, 0x200

    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_1f

    const-string p0, "FSS_OplusFoldSwitchStateObserver"

    const-string p1, "skip DefaultTransition"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method public unregisterOplusFoldSwitchStateObserver()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->mFoldSwitchStateObserver:Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager$ShellFoldSwitchStateObserver;

    invoke-static {p0}, Lcom/oplus/foldswitch/ReflectionHelper;->unregisterOplusFoldSwitchStateObserver(Lcom/oplus/foldswitch/OplusFoldSwitchStateObserver;)V

    return-void
.end method
