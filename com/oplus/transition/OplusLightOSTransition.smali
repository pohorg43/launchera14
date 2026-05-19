.class public Lcom/oplus/transition/OplusLightOSTransition;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final FIXED_LIGHTOS_ANIMATION_PACKAGE:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final IS_LIGHTOS:Z

.field public static final OPLUS_FEATURE_WINDOW_ANIM_LOW_END_CONFIG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFromUiModeChange:Z

.field private mIsNightMode:Z

.field private mUseDarkModeLoading:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.windowanimaiton.light"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v1, "oplus.software.windowanimaiton.low.end.config"

    invoke-virtual {v0, v1}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->OPLUS_FEATURE_WINDOW_ANIM_LOW_END_CONFIG:Z

    const-string v0, "com.tencent.mm"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/oplus/transition/OplusLightOSTransition;->FIXED_LIGHTOS_ANIMATION_PACKAGE:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/transition/OplusLightOSTransition;->mUseDarkModeLoading:Z

    iput-boolean v0, p0, Lcom/oplus/transition/OplusLightOSTransition;->mFromUiModeChange:Z

    iput-object p1, p0, Lcom/oplus/transition/OplusLightOSTransition;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object p1

    const-string v0, "oplus.dark_mode.switch.loading"

    invoke-virtual {p1, v0}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oplus/transition/OplusLightOSTransition;->mUseDarkModeLoading:Z

    const-string p0, "isLightOS"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public loadLightCompactWindowAnimation(Landroid/window/TransitionInfo$AnimationOptions;Z)Landroid/view/animation/Animation;
    .registers 5

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isTabletDevice()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_f
    const-string p1, "android"

    :goto_11
    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    return-object v1

    :cond_18
    sget-object v0, Lcom/oplus/transition/OplusLightOSTransition;->FIXED_LIGHTOS_ANIMATION_PACKAGE:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    if-eqz p2, :cond_25

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_wallpaper_close_enter2:I

    goto :goto_27

    :cond_25
    sget p1, Lcom/android/wm/shell/R$anim;->oplus_wallpaper_close_exit2:I

    :goto_27
    iget-object p0, p0, Lcom/oplus/transition/OplusLightOSTransition;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const-string p1, "loadLightCompactWindowAnimation"

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-object p0

    :cond_33
    return-object v1
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
    iget-boolean v1, p0, Lcom/oplus/transition/OplusLightOSTransition;->mIsNightMode:Z

    if-eq v1, p1, :cond_14

    iput-boolean p1, p0, Lcom/oplus/transition/OplusLightOSTransition;->mIsNightMode:Z

    iput-boolean v0, p0, Lcom/oplus/transition/OplusLightOSTransition;->mFromUiModeChange:Z

    :cond_14
    return-void
.end method
