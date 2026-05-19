.class public Lcom/oplus/transition/OplusRotationAnimationManager;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mContext:Landroid/content/Context;

.field private mCurrentScreenRotationDelta:I

.field private mFromUiModeChange:Z

.field private mIsNightMode:Z

.field private mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private mUseDarkModeLoading:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mCurrentScreenRotationDelta:I

    iput-boolean v0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mUseDarkModeLoading:Z

    iput-boolean v0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mFromUiModeChange:Z

    iput-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object p1

    const-string v0, "oplus.dark_mode.switch.loading"

    invoke-virtual {p1, v0}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mUseDarkModeLoading:Z

    iput-object p2, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p3, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method private externalRotationAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)[Landroid/view/animation/AnimationSet;
    .registers 15

    if-eqz p2, :cond_66

    if-nez p1, :cond_5

    goto :goto_66

    :cond_5
    new-instance v0, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v2, Landroid/view/animation/AnimationSet;

    invoke-direct {v2, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    invoke-virtual {p1}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v3

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/wm/shell/R$interpolator;->oplus_screen_rotation_rotate_interpolator:I

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    check-cast p0, Landroid/view/animation/PathInterpolator;

    new-instance v5, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {v5, p3, p4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v5, v3, v4}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    invoke-virtual {v5, p0}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v6, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x0

    invoke-direct {v6, p5, v7, p6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v6, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {v6, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v0, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance p2, Landroid/view/animation/ClipRectAnimation;

    invoke-direct {p2, p3, p4}, Landroid/view/animation/ClipRectAnimation;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p2, v3, v4}, Landroid/view/animation/ClipRectAnimation;->setDuration(J)V

    invoke-virtual {p2, p0}, Landroid/view/animation/ClipRectAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance p3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {p3, p5, v7, p6, v7}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {p3, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    invoke-virtual {p3, p0}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, p1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v2, p3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const/4 p0, 0x2

    new-array p0, p0, [Landroid/view/animation/AnimationSet;

    aput-object v0, p0, v1

    const/4 p1, 0x1

    aput-object v2, p0, p1

    return-object p0

    :cond_66
    :goto_66
    const-string p0, "load animation res error"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getOplusRotateAnimations(IIIII)[Landroid/view/animation/Animation;
    .registers 15

    const/4 v0, 0x2

    new-array v1, v0, [Landroid/view/animation/AnimationSet;

    new-instance v5, Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-direct {v5, v2, v2, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v2, v2, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 p2, 0x1

    if-eqz p1, :cond_6b

    const/high16 p3, 0x40000000  # 2.0f

    if-eq p1, p2, :cond_50

    if-eq p1, v0, :cond_37

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1c

    goto/16 :goto_96

    :cond_1c
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_minus_90_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_minus_90_enter:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    sub-int/2addr p5, p4

    int-to-float p1, p5

    div-float v8, p1, p3

    move-object v2, p0

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcom/oplus/transition/OplusRotationAnimationManager;->externalRotationAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)[Landroid/view/animation/AnimationSet;

    move-result-object v1

    goto :goto_96

    :cond_37
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_180_exit:I

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_180_enter:I

    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    check-cast p1, Landroid/view/animation/AnimationSet;

    aput-object p1, v1, v2

    check-cast p0, Landroid/view/animation/AnimationSet;

    aput-object p0, v1, p2

    goto :goto_96

    :cond_50
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_plus_90_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v4

    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_plus_90_enter:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    sub-int/2addr p4, p5

    int-to-float p1, p4

    div-float v8, p1, p3

    move-object v2, p0

    move v7, v8

    invoke-direct/range {v2 .. v8}, Lcom/oplus/transition/OplusRotationAnimationManager;->externalRotationAnimation(Landroid/view/animation/Animation;Landroid/view/animation/Animation;Landroid/graphics/Rect;Landroid/graphics/Rect;FF)[Landroid/view/animation/AnimationSet;

    move-result-object v1

    goto :goto_96

    :cond_6b
    iget-boolean p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mUseDarkModeLoading:Z

    if-nez p1, :cond_7e

    iget-boolean p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mFromUiModeChange:Z

    if-eqz p1, :cond_7e

    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->oplus_darkmode_exit:I

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-boolean v2, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mFromUiModeChange:Z

    goto :goto_86

    :cond_7e
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_0_exit:I

    invoke-static {p1, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_86
    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$anim;->oplus_screen_rotate_0_enter:I

    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    check-cast p1, Landroid/view/animation/AnimationSet;

    aput-object p1, v1, v2

    check-cast p0, Landroid/view/animation/AnimationSet;

    aput-object p0, v1, p2

    :goto_96
    return-object v1
.end method


# virtual methods
.method public getDefaultRotationAnimations(IIIII)[Landroid/view/animation/Animation;
    .registers 9

    const-string v0, "getScreenRotationAnimations ==> delta =:"

    const-string v1, ",originWidth =:"

    const-string v2, ",originHeight =:"

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",finalWidth =:"

    const-string v2, ",finalHeight =:"

    invoke-static {v0, p3, v1, p4, v2}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p5}, Lcom/oplus/transition/OplusRotationAnimationManager;->getOplusRotateAnimations(IIIII)[Landroid/view/animation/Animation;

    move-result-object p2

    iput p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mCurrentScreenRotationDelta:I

    if-eqz p2, :cond_34

    const/4 p0, 0x0

    aget-object p0, p2, p0

    sget-boolean p1, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    xor-int/lit8 p3, p1, 0x1

    invoke-static {p0, p3}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationHasRoundedCorners(Landroid/view/animation/Animation;Z)V

    const/4 p0, 0x1

    aget-object p3, p2, p0

    xor-int/2addr p0, p1

    invoke-static {p3, p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->setAnimationHasRoundedCorners(Landroid/view/animation/Animation;Z)V

    :cond_34
    return-object p2
.end method

.method public getLightScreenRotationAnimations(IIIII)[Landroid/view/animation/Animation;
    .registers 7

    const-string p2, "getLightScreenRotationAnimations"

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    const/4 p2, 0x2

    new-array p3, p2, [Landroid/view/animation/Animation;

    const/4 p4, 0x0

    const/4 p5, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    if-eq p1, p5, :cond_38

    if-eq p1, p2, :cond_27

    const/4 p2, 0x3

    if-eq p1, p2, :cond_16

    move-object p0, v0

    goto :goto_6d

    :cond_16
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_minus_90_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_minus_90_enter:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_6d

    :cond_27
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_180_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_180_enter:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_6d

    :cond_38
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_plus_90_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_plus_90_enter:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    goto :goto_6d

    :cond_49
    iget-boolean p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mUseDarkModeLoading:Z

    if-nez p1, :cond_5c

    iget-boolean p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mFromUiModeChange:Z

    if-eqz p1, :cond_5c

    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_darkmode_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-boolean p4, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mFromUiModeChange:Z

    goto :goto_64

    :cond_5c
    iget-object p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_0_exit:I

    invoke-static {p1, p2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_64
    move-object v0, p1

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_light_screen_rotate_0_enter:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    :goto_6d
    aput-object v0, p3, p4

    aput-object p0, p3, p5

    return-object p3
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/4 v0, 0x1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_b

    move p1, v0

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    iget-boolean v1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mIsNightMode:Z

    if-eq v1, p1, :cond_14

    iput-boolean p1, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mIsNightMode:Z

    iput-boolean v0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mFromUiModeChange:Z

    :cond_14
    return-void
.end method

.method public startScreenRotateBackColorAnimation([FLandroid/view/animation/Animation;Landroid/view/SurfaceControl;Lcom/android/wm/shell/common/TransactionPool;)Z
    .registers 10

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "startScreenRotateBackColorAnimation ==> leash =:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ",mCurrentScreenRotationDelta =:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mCurrentScreenRotationDelta:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",backColor =:0x"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    aget v1, p1, v0

    const/4 v2, 0x1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-static {v1, v3, v4}, Landroid/graphics/Color;->rgb(FFF)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result p2

    if-eqz p2, :cond_90

    sget-boolean p2, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-eqz p2, :cond_42

    goto :goto_90

    :cond_42
    aget p2, p1, v0

    const v1, 0x3dcccccd  # 0.1f

    cmpl-float p2, p2, v1

    if-ltz p2, :cond_53

    iget p2, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mCurrentScreenRotationDelta:I

    if-eq p2, v2, :cond_52

    const/4 v1, 0x3

    if-ne p2, v1, :cond_53

    :cond_52
    move v0, v2

    :cond_53
    invoke-virtual {p4}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object p2

    const/high16 p4, 0x3f800000  # 1.0f

    if-eqz v0, :cond_67

    invoke-virtual {p2, p3, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_8f

    :cond_67
    invoke-virtual {p2, p3, p1}, Landroid/view/SurfaceControl$Transaction;->setColor(Landroid/view/SurfaceControl;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/4 p2, 0x0

    invoke-direct {p1, p4, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object p2, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/wm/shell/R$integer;->oplus_screen_rotation_total_duration:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iget-object p0, p0, Lcom/oplus/transition/OplusRotationAnimationManager;->mContext:Landroid/content/Context;

    sget p3, Lcom/android/wm/shell/R$interpolator;->oplus_screen_rotation_alpha_interpolator:I

    invoke-static {p0, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p0

    int-to-long p2, p2

    invoke-virtual {p1, p2, p3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {p1, p0}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_8f
    return v2

    :cond_90
    :goto_90
    return v0
.end method
