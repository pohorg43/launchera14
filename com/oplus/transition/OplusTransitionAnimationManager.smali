.class public Lcom/oplus/transition/OplusTransitionAnimationManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/transition/OplusTransitionAnimationManager$PackageRemovedReceiver;
    }
.end annotation


# static fields
.field private static final ADJUST_Z_ORDER_BOTTOM:I = 0x2

.field private static final ADJUST_Z_ORDER_NONE:I = 0x0

.field private static final ADJUST_Z_ORDER_TOP:I = 0x1

.field private static final DEFAULT_ALPHA_VALUE_ONE:F = 1.0f

.field private static final DEFAULT_ALPHA_VALUE_ZERO:F = 0.0f

.field private static final DTA:Ljava/lang/String; = "DefaultTaskDisplayArea"

.field private static final FLAG_TRANSITION_FINISH_RELEASE:I = 0x40000000

.field private static final IGNORE_ABORT_TRANSITION_PKGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LARGE_SCREEN_SMALLEST_SWDP:I = 0x258

.field private static final LAUNCHER_PKG:Ljava/lang/String; = "com.android.launcher"

.field private static final MATCH_REMOTE_APP:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final NO_BACKCOLOR_PACKAGE_IN_SCREEN_ROTATION:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PACKAGE_SYSTEM:Ljava/lang/String; = "android"

.field private static final TRANSIT_TRANSLUCENT_CLOSE_EXIT_INTERPOLATOR:F = 1.0f

.field private static final TRANSIT_TRANSLUCENT_CLOSE_EXIT_TIME:I = 0x64

.field private static final TYPE_OVERRIDE_ANIM_CUSTOM_1:I = 0x64

.field private static final UNOCCLUDE:Ljava/lang/String; = "unocclude"

.field private static final WINDOWING_MODE_ZOOM:I = 0x64

.field private static sAnimMapLowEnd:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sForceOverrideCustomPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseWindowCornerRadius:F

.field private mContext:Landroid/content/Context;

.field private mCurrentWindowCornerRadiusModeId:I

.field private mNeedWindowCornerRadius:Z

.field private final mSkipLargeScreenTaskSwitch:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "com.tencent.qqlive"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->NO_BACKCOLOR_PACKAGE_IN_SCREEN_ROTATION:Ljava/util/Set;

    const-string v0, "com.google.android.apps.nbu.paisa.user"

    const-string v1, "com.pinterest"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->IGNORE_ABORT_TRANSITION_PKGS:Ljava/util/Set;

    const-string v0, "com.oppo.store"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->MATCH_REMOTE_APP:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sForceOverrideCustomPackages:Ljava/util/HashMap;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "com.fy.qqkp.new.nearme.gamecenter"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "com.oplus.upgradeguide"

    invoke-static {v0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mSkipLargeScreenTaskSwitch:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mCurrentWindowCornerRadiusModeId:I

    iput-object p1, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getCornerRadius(Landroid/view/Display;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mBaseWindowCornerRadius:F

    invoke-direct {p0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->initAnimMap()V

    return-void
.end method

.method private forceOverrideCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;
    .registers 7

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_18

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result p1

    if-nez p1, :cond_18

    if-ne p2, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    if-eqz v2, :cond_7a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7a

    sget-object p1, Lcom/oplus/transition/OplusTransitionAnimationManager;->sForceOverrideCustomPackages:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7a

    sget-object p1, Lcom/oplus/transition/OplusTransitionAnimationManager;->sForceOverrideCustomPackages:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_4e

    const/16 p0, 0x96

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    if-eqz p3, :cond_44

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_49

    :cond_44
    const/high16 v1, 0x3f800000  # 1.0f

    invoke-direct {p2, v1, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_49
    int-to-long v1, p0

    invoke-virtual {p2, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object p0, p2

    :cond_4e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceOverrideCustomAnimation use override anim for app=:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", anim="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", animType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", enter="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    :cond_7a
    return-object p0
.end method

.method private getAnimationbyResId(IIZIZ)Landroid/view/animation/Animation;
    .registers 8

    if-eqz p1, :cond_38

    iget-object v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getPlatformLevelAnimation(Landroid/content/Context;I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load oplus transition, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", isTask: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " , wallpaperTransit: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iget-boolean p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    invoke-static {p1, p4, p5, p0}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->addRoundedCornersToAnimationIfNeed(Landroid/view/animation/Animation;IZZ)V

    return-object p1

    :cond_38
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCornerRadius(Landroid/view/Display;)I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->maxRadius(Landroid/view/Display;II)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->maxRadius(Landroid/view/Display;II)I

    move-result v0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->maxRadius(Landroid/view/Display;II)I

    move-result v0

    const/4 v1, 0x3

    invoke-direct {p0, p1, v0, v1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->maxRadius(Landroid/view/Display;II)I

    move-result p0

    return p0
.end method

.method public static getPlatformLevelAnimation(Landroid/content/Context;I)I
    .registers 6

    invoke-static {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getInstance(Landroid/content/Context;)Lcom/oplus/util/OplusPlatformLevelUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformAnimationLevel()I

    move-result p0

    const-string v0, "getPlatformAnimation platformLevel "

    const-string v1, " LEVEL_LOW "

    const/4 v2, 0x1

    const-string v3, " needAnimForLowEndDevice "

    invoke-static {v0, p0, v1, v2, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/oplus/transition/OplusLightOSTransition;->OPLUS_FEATURE_WINDOW_ANIM_LOW_END_CONFIG:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    if-eq p0, v2, :cond_23

    if-eqz v1, :cond_60

    :cond_23
    sget-object p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_60

    sget-object p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const-string v0, "Using resId "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for animResId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    move p1, p0

    :cond_60
    return p1
.end method

.method private getTargetPackageName(Landroid/window/TransitionInfo$AnimationOptions;ZLandroid/window/TransitionInfo$Change;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p2, :cond_11

    if-eqz p0, :cond_11

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_11
    if-eqz p1, :cond_18

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method private getTaskToBackAnim(ZZ)I
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_e

    if-eqz p1, :cond_8

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter:I

    goto :goto_17

    :cond_8
    sget p1, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    iput-boolean v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    move p0, p1

    goto :goto_17

    :cond_e
    iput-boolean v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    if-eqz p1, :cond_15

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_close_slide_enter:I

    goto :goto_17

    :cond_15
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_close_slide_exit:I

    :goto_17
    return p0
.end method

.method private getTaskToFrontAnim(ZZ)I
    .registers 4

    const/4 v0, 0x1

    if-eqz p2, :cond_d

    if-eqz p1, :cond_a

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    iput-boolean v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    goto :goto_16

    :cond_a
    sget p1, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit:I

    goto :goto_16

    :cond_d
    iput-boolean v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    if-eqz p1, :cond_14

    sget p1, Lcom/android/wm/shell/R$anim;->oplus_task_open_slide_enter:I

    goto :goto_16

    :cond_14
    sget p1, Lcom/android/wm/shell/R$anim;->oplus_task_open_slide_exit:I

    :goto_16
    return p1
.end method

.method private getWindowCornerRadius(IZ)F
    .registers 4

    sget-boolean v0, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_c

    if-eqz p2, :cond_c

    iget p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mBaseWindowCornerRadius:F

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0

    :cond_e
    iget p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mBaseWindowCornerRadius:F

    return p0
.end method

.method private initAnimMap()V
    .registers 3

    const-string p0, "Initialize anim map"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter_low:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit_low:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter_low:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->sAnimMapLowEnd:Ljava/util/HashMap;

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit_low:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isCustomAnimaiton(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v1

    goto :goto_d

    :cond_c
    move v1, v0

    :goto_d
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    move v2, v3

    goto :goto_17

    :cond_16
    move v2, v0

    :goto_17
    if-eqz p0, :cond_2c

    if-ne v1, v3, :cond_2c

    if-eqz v2, :cond_2b

    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    invoke-virtual {v1, p0, p1, p2}, Lcom/android/wm/shell/transition/OplusTransitionController;->canCustomizeAppTransition(Landroid/window/TransitionInfo$AnimationOptions;ILandroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_2c

    :cond_2b
    move v0, v3

    :cond_2c
    return v0
.end method

.method private isDefaultTaskDisplayArea(Landroid/window/TransitionInfo$Change;I)Z
    .registers 3

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DefaultTaskDisplayArea"

    invoke-virtual {p0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private isIgnoreAbortPkg(Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_5c

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    if-nez v0, :cond_a

    goto :goto_5c

    :cond_a
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/SurfaceControl;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1a

    const-string p1, "ignoreAbort, leash is null, return false"

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return p0

    :cond_1a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreAbort isIgnoreAbortPkg, leash: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->IGNORE_ABORT_TRANSITION_PKGS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ignoreAbort: find IgnoreAbortPkg so return true, leash: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_5b
    return p0

    :cond_5c
    :goto_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoreAbort, change = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", return false"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return p0
.end method

.method private maxRadius(Landroid/view/Display;II)I
    .registers 4

    if-eqz p1, :cond_7

    invoke-virtual {p1, p3}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    move-result-object p0

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/view/RoundedCorner;->getRadius()I

    move-result p0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p2

    :cond_12
    return p2
.end method

.method private needMatchRemotePkg(Landroid/window/TransitionInfo$Change;)Z
    .registers 2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_18

    iget-object p0, p0, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p0, :cond_18

    sget-object p1, Lcom/oplus/transition/OplusTransitionAnimationManager;->MATCH_REMOTE_APP:Ljava/util/Set;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return p0
.end method

.method private recalculateZOrderLevel(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I
    .registers 16

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    invoke-virtual {v1}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result v3

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1e

    move v4, v5

    goto :goto_1f

    :cond_1e
    move v4, v2

    :goto_1f
    move v6, v2

    move v7, v6

    :goto_21
    const/4 v8, 0x4

    const/4 v9, 0x3

    const/4 v10, 0x6

    if-ge v6, v0, :cond_55

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v12

    if-ne v12, v10, :cond_38

    move v7, v5

    goto :goto_52

    :cond_38
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v10

    if-ne v10, v9, :cond_40

    :goto_3e
    move v7, v2

    goto :goto_52

    :cond_40
    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v9

    invoke-static {v9}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v9

    if-eqz v9, :cond_52

    invoke-virtual {v11}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v9

    and-int/2addr v8, v9

    if-nez v8, :cond_52

    goto :goto_3e

    :cond_52
    :goto_52
    add-int/lit8 v6, v6, 0x1

    goto :goto_21

    :cond_55
    if-ne v3, v5, :cond_61

    if-eqz v1, :cond_61

    invoke-virtual {v1}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result v0

    if-nez v0, :cond_61

    move v0, v5

    goto :goto_62

    :cond_61
    move v0, v2

    :goto_62
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v1

    const/high16 v3, 0x100000

    if-ne v1, v10, :cond_73

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v1

    and-int/2addr v1, v3

    if-eqz v1, :cond_73

    move v1, v5

    goto :goto_74

    :cond_73
    move v1, v2

    :goto_74
    and-int/2addr v0, v7

    and-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-static {v1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result v1

    and-int/2addr v0, v1

    const/4 v1, 0x2

    if-eqz v4, :cond_9d

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v4

    if-ne v4, v9, :cond_9d

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v4

    and-int/2addr v3, v4

    if-eqz v3, :cond_9d

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    if-eq v3, v1, :cond_9b

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v3

    if-ne v3, v8, :cond_9d

    :cond_9b
    move v3, v5

    goto :goto_9e

    :cond_9d
    move v3, v2

    :goto_9e
    or-int/2addr v0, v2

    if-eqz v3, :cond_ad

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isLargeScreenTaskSwitch(ILandroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-nez p0, :cond_ad

    move p0, v5

    goto :goto_ae

    :cond_ad
    move p0, v2

    :goto_ae
    or-int/2addr p0, v2

    if-eqz v0, :cond_b2

    return v5

    :cond_b2
    if-eqz p0, :cond_b5

    return v1

    :cond_b5
    return v2
.end method

.method private tasksContainSystemApp(Landroid/window/TransitionInfo;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    move v0, p1

    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2b

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v1, v1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    const/4 p0, 0x1

    return p0

    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_2b
    return p1
.end method

.method private visibleIfNeed(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p0, :cond_1d

    if-eq p1, v0, :cond_14

    const/4 p0, 0x3

    if-ne p1, p0, :cond_1d

    :cond_14
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method


# virtual methods
.method public adjustAnimHierarchyLayer(ILandroid/view/animation/Animation;Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    invoke-virtual {p4}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ltz p1, :cond_54

    if-lt p1, p2, :cond_d

    goto :goto_54

    :cond_d
    const/4 v0, 0x0

    add-int/lit8 v1, p2, 0x1

    invoke-direct {p0, p4, p3}, Lcom/oplus/transition/OplusTransitionAnimationManager;->recalculateZOrderLevel(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)I

    move-result p0

    const/4 p4, 0x1

    if-ne p0, p4, :cond_22

    add-int/2addr v1, p2

    sub-int v0, v1, p1

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p5, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2e

    :cond_22
    const/4 p2, 0x2

    if-ne p0, p2, :cond_2e

    sub-int v0, v1, p1

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p5, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_2e
    :goto_2e
    if-eqz p0, :cond_54

    const-string p1, "adjustAnimHierarchyLayer leash: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p3}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", layer: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", adjust state: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    :cond_54
    :goto_54
    return-void
.end method

.method public adjustAnimStartAlpha(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;)V
    .registers 10

    if-eqz p1, :cond_ca

    if-eqz p2, :cond_ca

    if-nez p3, :cond_8

    goto/16 :goto_ca

    :cond_8
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_12

    move p0, v1

    goto :goto_13

    :cond_12
    move p0, v0

    :goto_13
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    if-eqz p0, :cond_2b

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_2b

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    const/high16 v3, 0x100000

    and-int/2addr p0, v3

    if-eqz p0, :cond_2b

    move p0, v1

    goto :goto_2c

    :cond_2b
    move p0, v0

    :goto_2c
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v2, :cond_3d

    if-eqz v3, :cond_3d

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_3d

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_3d
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_44
    move-object v2, v4

    :goto_45
    if-nez v2, :cond_49

    const-string v2, "android"

    :cond_49
    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->needAdjustAnimSystemApp(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5b

    invoke-static {v4}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->needAdjustAnimSystemApp(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5b

    if-nez v3, :cond_5c

    :cond_5b
    move v0, v1

    :cond_5c
    const-string v3, ", packageName:"

    if-eqz v0, :cond_93

    if-eqz p0, :cond_93

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_93

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_93

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustAnimStartAlpha set alpha to 0, change="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p3, p0, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_93
    const/high16 p0, 0x40000

    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result p0

    if-eqz p0, :cond_ca

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    if-ne p0, v1, :cond_ca

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFlipDevice()Z

    move-result p0

    if-eqz p0, :cond_ca

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "adjustAnimStartAlpha flag_no_animation set alpha to 1, change="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_ca
    :goto_ca
    return-void
.end method

.method public adjustZBoostForLayer(ILandroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    if-ltz p1, :cond_51

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_51

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    if-eqz v0, :cond_51

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isLargeScreenTaskSwitch(ILandroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    invoke-static {p0}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p0

    if-eqz p0, :cond_51

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p2, p0, 0x1

    add-int/2addr p2, p0

    sub-int/2addr p2, p1

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p3, p0, p2}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_51
    return-void
.end method

.method public checkAndLoadCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_9

    const-string p0, "custom transition options null"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return-object v0

    :cond_9
    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_14

    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result v2

    goto :goto_18

    :cond_14
    invoke-virtual {p1}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result v2

    :goto_18
    const-string v3, "checkAndLoadCustomAnimation packageName =:"

    const-string v4, ",transit =:"

    const-string v5, ",enter =:"

    invoke-static {v3, v1, v4, p2, v5}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",animResId =:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/transition/OplusTransitionAnimationManager;->forceOverrideCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;IZ)Landroid/view/animation/Animation;

    move-result-object p0

    if-eqz p0, :cond_3b

    return-object p0

    :cond_3b
    invoke-static {v2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p0

    if-nez p0, :cond_42

    return-object v0

    :cond_42
    const/high16 p0, -0x1000000

    and-int/2addr p0, v2

    const/high16 p1, 0x1000000

    if-eq p0, p1, :cond_4a

    return-object v0

    :cond_4a
    const/4 p0, 0x1

    if-eq p2, p0, :cond_52

    const/4 p0, 0x2

    if-ne p2, p0, :cond_51

    goto :goto_52

    :cond_51
    return-object v0

    :cond_52
    :goto_52
    const/16 p0, 0x96

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000  # 1.0f

    if-eqz p3, :cond_5f

    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    goto :goto_64

    :cond_5f
    new-instance p3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {p3, p2, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    :goto_64
    int-to-long p0, p0

    invoke-virtual {p3, p0, p1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "checkAndLoadCustomAnimation use override anim for  =:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-object p3
.end method

.method public getOplusDefaultTransition(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;ZZII)Landroid/view/animation/Animation;
    .registers 20

    move-object v0, p0

    move/from16 v5, p3

    move/from16 v4, p5

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v2

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    const/4 v6, 0x1

    move-object v7, p2

    if-eqz v3, :cond_16

    move v3, v6

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    invoke-direct {p0, v2, v3, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getTargetPackageName(Landroid/window/TransitionInfo$AnimationOptions;ZLandroid/window/TransitionInfo$Change;)Ljava/lang/String;

    move-result-object v8

    invoke-static {p1}, Lcom/oplus/transition/OplusTransitionReflectionHelper;->getPackageName(Landroid/window/TransitionInfo;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    if-eqz v3, :cond_4a

    if-nez v8, :cond_2c

    if-nez v9, :cond_2c

    const-string v0, "couldn\'t get package name, skip loading oplus animation"

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return-object v10

    :cond_2c
    invoke-static {v8}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-direct {p0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->tasksContainSystemApp(Landroid/window/TransitionInfo;)Z

    move-result v2

    if-nez v2, :cond_41

    invoke-static {v9}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3f

    goto :goto_41

    :cond_3f
    move v2, v1

    goto :goto_42

    :cond_41
    :goto_41
    move v2, v6

    :goto_42
    if-nez v2, :cond_5d

    const-string v0, "no system app in targets, skip loading oplus animation"

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return-object v10

    :cond_4a
    invoke-static {}, Lcom/android/wm/shell/transition/OplusTransitionController;->getInstance()Lcom/android/wm/shell/transition/OplusTransitionController;

    move-result-object v9

    move/from16 v11, p6

    invoke-virtual {v9, v2, v11}, Lcom/android/wm/shell/transition/OplusTransitionController;->shouldLoadCustomAnimation(Landroid/window/TransitionInfo$AnimationOptions;I)Z

    move-result v2

    if-eqz v2, :cond_5c

    const-string v0, "This activity has its own override animation"

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-object v10

    :cond_5c
    move v2, v1

    :cond_5d
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v9

    if-eqz p4, :cond_76

    const-string v11, "com.android.launcher"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    if-nez v5, :cond_70

    sget v8, Lcom/android/wm/shell/R$anim;->activity_translucent_close_exit:I

    goto :goto_77

    :cond_70
    const-string v0, "flag contains FLAG_TRANSLUCENT, don\'t use oplus style"

    invoke-static {v0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return-object v10

    :cond_76
    move v8, v1

    :goto_77
    const/4 v11, 0x2

    if-eq v9, v6, :cond_97

    if-eq v9, v11, :cond_83

    const/4 v12, 0x3

    if-eq v9, v12, :cond_97

    const/4 v12, 0x4

    if-eq v9, v12, :cond_83

    goto :goto_a8

    :cond_83
    if-eqz v3, :cond_8a

    invoke-direct {p0, v5, v2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getTaskToBackAnim(ZZ)I

    move-result v8

    goto :goto_a8

    :cond_8a
    if-eqz v5, :cond_8f

    sget v2, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter:I

    goto :goto_91

    :cond_8f
    sget v2, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    :goto_91
    move v8, v2

    xor-int/lit8 v2, v5, 0x1

    iput-boolean v2, v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    goto :goto_a8

    :cond_97
    if-eqz v3, :cond_9e

    invoke-direct {p0, v5, v2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getTaskToFrontAnim(ZZ)I

    move-result v8

    goto :goto_a8

    :cond_9e
    if-eqz v5, :cond_a3

    sget v2, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    goto :goto_a5

    :cond_a3
    sget v2, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit:I

    :goto_a5
    move v8, v2

    iput-boolean v5, v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    :goto_a8
    if-ne v4, v11, :cond_b4

    iput-boolean v6, v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    if-eqz v5, :cond_b1

    sget v2, Lcom/android/wm/shell/R$anim;->oplus_wallpaper_close_enter2:I

    goto :goto_b8

    :cond_b1
    sget v2, Lcom/android/wm/shell/R$anim;->oplus_wallpaper_close_exit2:I

    goto :goto_b8

    :cond_b4
    if-eqz v4, :cond_b7

    return-object v10

    :cond_b7
    move v2, v8

    :goto_b8
    invoke-static {p2}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getWindowModeFromChange(Landroid/window/TransitionInfo$Change;)I

    move-result v6

    if-nez v3, :cond_c7

    const/4 v7, 0x6

    if-eq v6, v7, :cond_c5

    const/16 v7, 0x64

    if-ne v6, v7, :cond_c7

    :cond_c5
    iput-boolean v1, v0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mNeedWindowCornerRadius:Z

    :cond_c7
    move-object v0, p0

    move v1, v2

    move v2, v9

    move/from16 v4, p5

    move/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getAnimationbyResId(IIZIZ)Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getRoundedCornersIfNeed(IIZLandroid/view/animation/Animation;Landroid/window/TransitionInfo$AnimationOptions;)F
    .registers 10

    invoke-direct {p0, p2, p3}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getWindowCornerRadius(IZ)F

    move-result p0

    invoke-virtual {p4}, Landroid/view/animation/Animation;->hasRoundedCorners()Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "animation has round corner "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return p0

    :cond_1f
    instance-of v0, p4, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    return v1

    :cond_25
    instance-of v0, p4, Landroid/view/animation/AnimationSet;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_44

    check-cast p4, Landroid/view/animation/AnimationSet;

    invoke-virtual {p4}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_44

    invoke-virtual {p4}, Landroid/view/animation/AnimationSet;->getAnimations()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    instance-of p4, p4, Landroid/view/animation/AlphaAnimation;

    if-eqz p4, :cond_44

    return v1

    :cond_44
    sget-boolean p4, Lcom/oplus/transition/OplusLightOSTransition;->IS_LIGHTOS:Z

    if-eqz p4, :cond_4f

    const/4 p1, 0x2

    if-ne p2, p1, :cond_4e

    if-eqz p3, :cond_4e

    return p0

    :cond_4e
    return v1

    :cond_4f
    if-lt p1, v3, :cond_54

    const/4 p4, 0x5

    if-le p1, p4, :cond_5b

    :cond_54
    if-lt p2, v3, :cond_d6

    const/4 p4, 0x4

    if-le p2, p4, :cond_5b

    goto/16 :goto_d6

    :cond_5b
    if-eqz p5, :cond_62

    invoke-virtual {p5}, Landroid/window/TransitionInfo$AnimationOptions;->getType()I

    move-result p2

    goto :goto_63

    :cond_62
    move p2, v2

    :goto_63
    if-ne p2, v3, :cond_66

    goto :goto_67

    :cond_66
    move v3, v2

    :goto_67
    if-nez v3, :cond_85

    if-eqz p5, :cond_85

    if-eqz p3, :cond_72

    invoke-virtual {p5}, Landroid/window/TransitionInfo$AnimationOptions;->getEnterResId()I

    move-result p2

    goto :goto_76

    :cond_72
    invoke-virtual {p5}, Landroid/window/TransitionInfo$AnimationOptions;->getExitResId()I

    move-result p2

    :goto_76
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result p4

    if-nez p4, :cond_7d

    return v1

    :cond_7d
    const/high16 p4, -0x1000000

    and-int/2addr p2, p4

    const/high16 p4, 0x1000000

    if-ne p2, p4, :cond_85

    return v1

    :cond_85
    if-eqz p5, :cond_8c

    invoke-virtual {p5}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_8e

    :cond_8c
    const-string p2, "android"

    :goto_8e
    invoke-static {p2}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result p4

    if-nez p4, :cond_95

    return v1

    :cond_95
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isOpeningType(I)Z

    move-result p4

    if-eqz p4, :cond_9d

    move v2, p3

    goto :goto_a5

    :cond_9d
    invoke-static {p1}, Lcom/android/wm/shell/util/TransitionUtil;->isClosingType(I)Z

    move-result p1

    if-eqz p1, :cond_a5

    xor-int/lit8 v2, p3, 0x1

    :cond_a5
    :goto_a5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "addRoundedCornersToAnimationIfNeed for packageName =:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", needRoundedCorners =:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",enter =:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",isCustomAnimation =:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    if-eqz v2, :cond_d4

    goto :goto_d5

    :cond_d4
    move p0, v1

    :goto_d5
    return p0

    :cond_d6
    :goto_d6
    return v1
.end method

.method public ignoreAbort(Landroid/window/TransitionInfo;)Z
    .registers 5

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_20

    invoke-direct {p0, v0}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isIgnoreAbortPkg(Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-eqz p0, :cond_20

    move v1, v2

    :cond_20
    return v1
.end method

.method public isLargeScreenTaskSwitch(ILandroid/window/TransitionInfo$Change;)Z
    .registers 8

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-eq p1, p0, :cond_d

    const/4 v1, 0x2

    if-eq p1, v1, :cond_d

    const/4 v1, 0x3

    if-eq p1, v1, :cond_d

    const/4 v1, 0x4

    if-ne p1, v1, :cond_6e

    :cond_d
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    iget-object v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget v2, v2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v3, 0x258

    if-lt v2, v3, :cond_2d

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.launcher"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    :cond_2b
    move v1, p0

    goto :goto_2e

    :cond_2d
    move v1, v0

    :goto_2e
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isMinimizedPocketStudio(I)Z

    move-result v2

    invoke-static {p2}, Lcom/android/wm/shell/activityembedding/OplusEmbedReflectionUtils;->getWindowModeFromChange(Landroid/window/TransitionInfo$Change;)I

    move-result p2

    if-nez v1, :cond_3e

    if-eqz v2, :cond_51

    :cond_3e
    if-eq p2, p0, :cond_44

    const/16 v3, 0x78

    if-ne p2, v3, :cond_51

    :cond_44
    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isFoldDevice()Z

    move-result v3

    if-nez v3, :cond_52

    invoke-static {}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isTabletDevice()Z

    move-result v3

    if-eqz v3, :cond_51

    goto :goto_52

    :cond_51
    move p0, v0

    :cond_52
    :goto_52
    const-string v0, "check large screen ,transit: "

    const-string v3, ",windowMode : "

    const-string v4, ",largeScreen : "

    invoke-static {v0, p1, v3, p2, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ",isMinimizedPocketStudio : "

    const-string v0, ",largeScreenTaskSwitch : "

    invoke-static {p1, v1, p2, v2, v0}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    move v0, p0

    :cond_6e
    return v0
.end method

.method public isWsnSwitch(ILandroid/window/TransitionInfo$Change;)Z
    .registers 3

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    if-eqz p1, :cond_2e

    iget-object p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_2e

    iget-object p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mSkipLargeScreenTaskSwitch:Ljava/util/List;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2e

    const-string p0, "isWsnSwitch , change: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method public loadLargeScreenTaskSwitchAnimation(IZ)Landroid/view/animation/Animation;
    .registers 7

    if-eqz p2, :cond_6

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_task_open_enlarge_enter:I

    const/4 v1, 0x1

    goto :goto_9

    :cond_6
    sget v0, Lcom/android/wm/shell/R$anim;->oplus_task_open_enlarge_exit:I

    const/4 v1, 0x0

    :goto_9
    const/4 v2, 0x0

    :try_start_a
    iget-object p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_16

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V
    :try_end_15
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_a .. :try_end_15} :catch_47
    .catch Landroid/view/InflateException; {:try_start_a .. :try_end_15} :catch_47

    move-object v2, p0

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load oplus style animation for large screen task switching,transit =: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",isEnter =:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",resId =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",needWindowCornerRadius =:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return-object v2

    :catch_47
    const-string p0, "Unable to load animation resource"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-object v2
.end method

.method public loadWsnTaskSwitchAnimation(IZ)Landroid/view/animation/Animation;
    .registers 6

    if-eqz p2, :cond_41

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    const/4 v1, 0x0

    :try_start_5
    iget-object p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mContext:Landroid/content/Context;

    if-eqz p0, :cond_12

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/animation/Animation;->setHasRoundedCorners(Z)V
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_11} :catch_3b
    .catch Landroid/view/InflateException; {:try_start_5 .. :try_end_11} :catch_3b

    move-object v1, p0

    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load oplus style animation for wsn task switching,transit =: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",isEnter =:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",resId =: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    return-object v1

    :catch_3b
    const-string p0, "Unable to load animation resource"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    return-object v1

    :cond_41
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-direct {p0, p2, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1, p2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, p1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    return-object p0
.end method

.method public matchRemoteFilter(Landroid/window/TransitionInfo;)Z
    .registers 14

    const/4 v0, 0x0

    if-eqz p1, :cond_d2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_b

    goto/16 :goto_d2

    :cond_b
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v2

    move v3, v0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_14
    if-ltz v2, :cond_c9

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/window/TransitionInfo$Change;

    if-nez v7, :cond_24

    goto/16 :goto_c5

    :cond_24
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v9, 0x6

    const/4 v10, 0x4

    const/4 v11, 0x2

    if-ne v8, v9, :cond_57

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v8

    if-eq v8, v10, :cond_39

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v8

    if-ne v8, v1, :cond_57

    :cond_39
    const/high16 v8, 0x100000

    invoke-virtual {v7, v8}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_57

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-eqz v8, :cond_57

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    if-ne v8, v11, :cond_57

    const-string v3, "matchTranslucentRemote"

    invoke-static {v3}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    move v3, v1

    :cond_57
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    if-ne v8, v10, :cond_6f

    invoke-virtual {v7, v10}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-nez v8, :cond_69

    invoke-direct {p0, v7}, Lcom/oplus/transition/OplusTransitionAnimationManager;->needMatchRemotePkg(Landroid/window/TransitionInfo$Change;)Z

    move-result v8

    if-eqz v8, :cond_6f

    :cond_69
    const-string v4, "hasTranslucentFlag"

    invoke-static {v4}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    move v4, v1

    :cond_6f
    sget v8, Lcom/oplus/zoom/common/ZoomUtil;->sZoomTaskState:I

    if-ne v8, v1, :cond_c5

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_9c

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result v8

    if-ne v8, v11, :cond_9c

    invoke-virtual {v7, v1}, Landroid/window/TransitionInfo$Change;->hasFlags(I)Z

    move-result v8

    if-eqz v8, :cond_9c

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    if-eqz v8, :cond_9c

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    if-ne v8, v11, :cond_9c

    const-string v5, "matchChangeOrderErrorRemote"

    invoke-static {v5}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    move v5, v1

    :cond_9c
    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v8

    if-ne v8, v11, :cond_c5

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v8

    if-eqz v8, :cond_b0

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v8

    const/high16 v9, 0x40000000  # 2.0f

    if-ne v8, v9, :cond_c5

    :cond_b0
    const-string v6, "hasNoneFlag change.getFlags() = "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v7}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    move v6, v1

    :cond_c5
    :goto_c5
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_14

    :cond_c9
    if-eqz v3, :cond_cd

    if-nez v4, :cond_d1

    :cond_cd
    if-eqz v5, :cond_d2

    if-eqz v6, :cond_d2

    :cond_d1
    move v0, v1

    :cond_d2
    :goto_d2
    return v0
.end method

.method public onConfigurationChanged(ILcom/android/wm/shell/common/DisplayController;)V
    .registers 4

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    if-eqz p1, :cond_3e

    new-instance p2, Landroid/view/DisplayInfo;

    invoke-direct {p2}, Landroid/view/DisplayInfo;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget p2, p2, Landroid/view/DisplayInfo;->modeId:I

    iget v0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mCurrentWindowCornerRadiusModeId:I

    if-ne v0, p2, :cond_19

    return-void

    :cond_19
    invoke-direct {p0, p1}, Lcom/oplus/transition/OplusTransitionAnimationManager;->getCornerRadius(Landroid/view/Display;)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mBaseWindowCornerRadius:F

    iput p2, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mCurrentWindowCornerRadiusModeId:I

    const-string p1, "OplusTransitionAnimationManager mBaseWindowCornerRadius="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mBaseWindowCornerRadius:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", mCurrentWindowCornerRadiusModeId ="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mCurrentWindowCornerRadiusModeId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->debug(Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method public registerReceiverForPkgRemoved()V
    .registers 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/transition/OplusTransitionAnimationManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oplus/transition/OplusTransitionAnimationManager$PackageRemovedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/transition/OplusTransitionAnimationManager$PackageRemovedReceiver;-><init>(Lcom/oplus/transition/OplusTransitionAnimationManager;Lcom/oplus/transition/OplusTransitionAnimationManager$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setAlphaForCustom(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/animation/Animation;)V
    .registers 6

    invoke-direct {p0, p1, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isCustomAnimaiton(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->visibleIfNeed(Landroid/window/TransitionInfo;Landroid/window/TransitionInfo$Change;)Z

    move-result p0

    if-nez p4, :cond_17

    if-eqz v0, :cond_17

    if-eqz p0, :cond_17

    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_17
    return-void
.end method

.method public shouldHideSurface(Landroid/window/TransitionInfo$Change;ILcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;)Z
    .registers 4

    invoke-virtual {p3}, Lcom/oplus/foldswitch/OplusFoldingSwitchAnimationManager;->getDeviceFolding()Z

    move-result p3

    invoke-direct {p0, p1, p2}, Lcom/oplus/transition/OplusTransitionAnimationManager;->isDefaultTaskDisplayArea(Landroid/window/TransitionInfo$Change;I)Z

    move-result p0

    if-nez p3, :cond_13

    if-eqz p0, :cond_13

    const-string p0, "skip hide surface DefaultTaskDisplayArea on shouldHideSurface."

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_13
    const/4 p0, 0x1

    return p0
.end method
