.class public Lcom/android/wm/shell/transition/TransitionAnimationUtil;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FEATURE_FOLD_REMAP_DISPLAY_DISABLED:Ljava/lang/String; = "oplus.software.fold_remap_display_disabled"

.field private static final FOLD_FEATURE:Ljava/lang/String; = "oplus.hardware.type.fold"

.field private static final IS_FLIP:Z

.field private static final IS_FOLD:Z

.field private static final IS_TABLET:Z

.field private static final TABLET_FEATURE:Ljava/lang/String; = "oplus.hardware.type.tablet"

.field private static sMainExecutorTid:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string/jumbo v1, "oplus.hardware.type.fold"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->IS_FOLD:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string/jumbo v1, "oplus.hardware.type.tablet"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->IS_TABLET:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string/jumbo v1, "oplus.software.fold_remap_display_disabled"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->IS_FLIP:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->sMainExecutorTid:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->lambda$setAnimationThreadUx$0()V

    return-void
.end method

.method public static addRoundedCornersToAnimationIfNeed(Landroid/view/animation/Animation;IZZ)V
    .registers 5

    if-eqz p0, :cond_17

    sget-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    if-ne p1, v0, :cond_f

    if-eqz p2, :cond_f

    if-eqz p3, :cond_f

    const/4 p1, 0x1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, p3}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    :cond_17
    :goto_17
    return-void
.end method

.method public static dip2px(FLandroid/content/Context;)F
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getOplusFlags(Landroid/content/Intent;)I
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Lcom/oplus/content/OplusIntent;

    const-string v2, "getOplusFlags"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Intent;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_23

    goto :goto_29

    :catch_23
    move-exception p0

    const-string v1, "getOplusFlags: "

    invoke-static {p0, v1}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_29
    return v0
.end method

.method public static getScenario(Landroid/content/res/Configuration;)I
    .registers 5

    invoke-static {p0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getExtraConfiguration(Landroid/content/res/Configuration;)Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    :try_start_7
    const-class v1, Loplus/content/res/OplusExtraConfiguration;

    const-string v2, "getScenario"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1d} :catch_1e

    return p0

    :catch_1e
    move-exception p0

    const-string v1, "getScenario: "

    invoke-static {p0, v1}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_24
    return v0
.end method

.method public static isFlipDevice()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->IS_FLIP:Z

    return v0
.end method

.method public static isFoldDevice()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->IS_FOLD:Z

    return v0
.end method

.method public static isSystemApp(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->SYSTEM_APPS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    return v2

    :cond_12
    sget-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->SYSTEM_APP_PREFIXES:[Ljava/lang/String;

    array-length v3, v0

    move v4, v1

    :goto_16
    if-ge v4, v3, :cond_24

    aget-object v5, v0, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    return v2

    :cond_21
    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    :cond_24
    return v1
.end method

.method public static isTabletDevice()Z
    .registers 1

    sget-boolean v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->IS_TABLET:Z

    return v0
.end method

.method private static synthetic lambda$setAnimationThreadUx$0()V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(ZI)V

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    sput v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->sMainExecutorTid:I

    return-void
.end method

.method public static needAdjustAnimSystemApp(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/wm/shell/transition/TransitionConstants;->ADJUST_ANIM_SYSTEM_APPS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v1
.end method

.method public static setAnimationHasRoundedCorners(Landroid/view/animation/Animation;Z)V
    .registers 3

    if-eqz p0, :cond_e

    sget-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-nez v0, :cond_a

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-virtual {p0, p1}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V

    :cond_e
    return-void
.end method

.method public static setAnimationThreadUx(Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 4

    const-string/jumbo v0, "setAnimationThreadUx sMainExecutorTid="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->sMainExecutorTid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->sMainExecutorTid:I

    if-lez v0, :cond_1d

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1d
    sget-object v0, Lcom/android/quickstep/h2;->c:Lcom/android/quickstep/h2;

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static setAnimationThreadUx(Z)V
    .registers 2

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationThreadUx(ZI)V

    return-void
.end method

.method public static setAnimationThreadUx(ZI)V
    .registers 6

    if-gtz p1, :cond_3

    return-void

    :cond_3
    sget v0, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->sMainExecutorTid:I

    const-string v1, " tid:"

    const-string/jumbo v2, "transition setAnimationThreadUx "

    if-ne p1, v0, :cond_2c

    if-nez p0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " return"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return-void

    :cond_2c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAnimationThreadUx tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " applyToUx="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-eqz p0, :cond_68

    const/16 p0, 0x84

    goto :goto_69

    :cond_68
    const/4 p0, 0x4

    :goto_69
    sget-object v0, Lcom/oplus/uifirst/IOplusUIFirstManager;->DEFAULT:Lcom/oplus/uifirst/IOplusUIFirstManager;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Landroid/common/OplusFeatureCache;->getOrCreate(Landroid/common/IOplusCommonFeature;[Ljava/lang/Object;)Landroid/common/IOplusCommonFeature;

    move-result-object v0

    check-cast v0, Lcom/oplus/uifirst/IOplusUIFirstManager;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v3, p1, p0}, Lcom/oplus/uifirst/IOplusUIFirstManager;->setUxThreadValue(IILjava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public static shouldLoadCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;I)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_3c

    invoke-static {p1, p0}, Lcom/android/wm/shell/transition/TransitionAnimationHelper;->getCustomActivityTransition(ILandroid/window/TransitionInfo$AnimationOptions;)Landroid/window/TransitionInfo$AnimationOptions$CustomActivityTransition;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1d

    return v0

    :cond_1d
    sget-object p1, Lcom/android/wm/shell/transition/TransitionConstants;->SKIP_CUMSTOM_ANIM_LIST:Ljava/util/Set;

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip custom activity animation, packeName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    :cond_39
    xor-int/lit8 p0, p1, 0x1

    return p0

    :cond_3c
    return v0
.end method
