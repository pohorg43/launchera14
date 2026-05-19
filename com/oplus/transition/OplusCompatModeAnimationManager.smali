.class public Lcom/oplus/transition/OplusCompatModeAnimationManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final ANIMATION_ALPHA:F = 1.0f

.field private static final ANIMATION_DURATION:I = 0x15e

.field private static final EXT:Ljava/lang/String; = "mExt"

.field private static final GET_EXTENDED_INFO:Ljava/lang/String; = "getExtendedInfo"

.field private static final IN_OPLUS_COMPAT_MODE:Ljava/lang/String; = "inOplusCompatMode"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOplusCompatModeManager:Ljava/lang/Object;

.field private final mOplusCompatModeManagerClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mContext:Landroid/content/Context;

    const-string p1, "com.oplus.compatmode.OplusCompatModeManager"

    invoke-direct {p0, p1}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManagerClazz:Ljava/lang/Class;

    invoke-direct {p0}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->getOplusCompatModeManager()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManager:Ljava/lang/Object;

    return-void
.end method

.method private findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getOplusCompatModeManager()Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManagerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_20

    :try_start_4
    const-string v1, "getInstance"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManagerClazz:Ljava/lang/Class;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_19} :catch_1a

    goto :goto_21

    :catch_1a
    move-exception p0

    const-string v0, "failure calling OplusCompactWindowManager getInstance"

    invoke-static {p0, v0}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_20
    const/4 p0, 0x0

    :goto_21
    return-object p0
.end method

.method private getTaskToBackAnim(ZZ)I
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter:I

    goto :goto_11

    :cond_7
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    goto :goto_11

    :cond_a
    if-eqz p1, :cond_f

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_close_slide_enter:I

    goto :goto_11

    :cond_f
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_close_slide_exit:I

    :goto_11
    return p0
.end method

.method private getTaskToFrontAnim(ZZ)I
    .registers 3

    if-eqz p2, :cond_a

    if-eqz p1, :cond_7

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    goto :goto_11

    :cond_7
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit:I

    goto :goto_11

    :cond_a
    if-eqz p1, :cond_f

    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_open_slide_enter:I

    goto :goto_11

    :cond_f
    sget p0, Lcom/android/wm/shell/R$anim;->oplus_task_open_slide_exit:I

    :goto_11
    return p0
.end method

.method public static inOplusCompatMode(Landroid/window/TransitionInfo;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4d

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "mExt"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getExtendedInfo"

    new-array v4, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "inOplusCompatMode"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_46} :catch_47

    return p0

    :catch_47
    move-exception p0

    const-string v1, "failure calling OplusTransitionExtendedInfo inOplusCompatMode"

    invoke-static {p0, v1}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_4d
    return v0
.end method


# virtual methods
.method public getOplusCompatModeAnimation(Landroid/window/TransitionInfo;ZZZI)Landroid/view/animation/Animation;
    .registers 10

    invoke-static {p1}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->inOplusCompatMode(Landroid/window/TransitionInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    :cond_8
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getAnimationOptions()Landroid/window/TransitionInfo$AnimationOptions;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Landroid/window/TransitionInfo$AnimationOptions;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_13
    const-string v2, "android"

    :goto_15
    invoke-static {v2}, Lcom/android/wm/shell/transition/TransitionAnimationUtil;->isSystemApp(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    if-nez v0, :cond_27

    if-nez p3, :cond_27

    const-string p0, "getOplusCompatModeAnimation: app windowAnimationStyle null"

    invoke-static {p0}, Lcom/android/wm/shell/transition/TransitionLog;->w(Ljava/lang/String;)V

    return-object v1

    :cond_27
    if-eqz p4, :cond_2a

    return-object v1

    :cond_2a
    const/4 p4, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x2

    if-eq p1, p4, :cond_42

    if-eq p1, v3, :cond_33

    move v2, v0

    goto :goto_50

    :cond_33
    if-eqz p3, :cond_3a

    invoke-direct {p0, p2, v2}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->getTaskToBackAnim(ZZ)I

    move-result v2

    goto :goto_50

    :cond_3a
    if-eqz p2, :cond_3f

    sget v2, Lcom/android/wm/shell/R$anim;->oplus_close_slide_enter:I

    goto :goto_50

    :cond_3f
    sget v2, Lcom/android/wm/shell/R$anim;->oplus_close_slide_exit:I

    goto :goto_50

    :cond_42
    if-eqz p3, :cond_49

    invoke-direct {p0, p2, v2}, Lcom/oplus/transition/OplusCompatModeAnimationManager;->getTaskToFrontAnim(ZZ)I

    move-result v2

    goto :goto_50

    :cond_49
    if-eqz p2, :cond_4e

    sget v2, Lcom/android/wm/shell/R$anim;->oplus_open_slide_enter:I

    goto :goto_50

    :cond_4e
    sget v2, Lcom/android/wm/shell/R$anim;->oplus_open_slide_exit:I

    :goto_50
    if-ne p5, v3, :cond_5a

    if-eqz p2, :cond_57

    sget v0, Lcom/android/wm/shell/R$anim;->oplus_wallpaper_close_enter2:I

    goto :goto_5e

    :cond_57
    sget v0, Lcom/android/wm/shell/R$anim;->oplus_wallpaper_close_exit2:I

    goto :goto_5e

    :cond_5a
    if-eqz p5, :cond_5d

    goto :goto_5e

    :cond_5d
    move v0, v2

    :goto_5e
    if-eqz v0, :cond_9f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "load oplus compat mode transition, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " , wallpaperTransit: "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/wm/shell/transition/TransitionLog;->always(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p0

    if-ne p1, p4, :cond_8e

    if-eqz p2, :cond_92

    :cond_8e
    if-ne p1, v3, :cond_9e

    if-eqz p2, :cond_9e

    :cond_92
    new-instance p0, Landroid/view/animation/AlphaAnimation;

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-direct {p0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 p1, 0x15e

    invoke-virtual {p0, p1, p2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_9e
    return-object p0

    :cond_9f
    return-object v1
.end method

.method public onRecentAnimationEnd()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManagerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManager:Ljava/lang/Object;

    if-eqz v1, :cond_23

    const-string v1, "onRecentAnimationEnd"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManager:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception p0

    const-string v0, "failure calling OplusCompactWindowManager onRecentAnimationEnd"

    invoke-static {p0, v0}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public onRecentAnimationStart()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManagerClazz:Ljava/lang/Class;

    if-eqz v0, :cond_23

    iget-object v1, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManager:Ljava/lang/Object;

    if-eqz v1, :cond_23

    const-string v1, "onRecentAnimationStart"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Lcom/oplus/transition/OplusCompatModeAnimationManager;->mOplusCompatModeManager:Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_23

    :catch_1d
    move-exception p0

    const-string v0, "failure calling OplusCompactWindowManager onRecentAnimationStart"

    invoke-static {p0, v0}, Lcom/android/wm/shell/transition/TransitionLog;->e(Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method
