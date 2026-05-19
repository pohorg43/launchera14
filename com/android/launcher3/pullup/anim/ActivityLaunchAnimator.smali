.class public final Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;,
        Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;,
        Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;,
        Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;
    }
.end annotation


# static fields
.field public static final ANIMATION_DURATION:J = 0x107L

.field private static final ANIMATION_DURATION_FADE_OUT_CONTENT:J = 0x107L

.field public static final Companion:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;

.field private static LAUNCH_TIMEOUT:J

.field public static final NEED_REGISTER_START_ANIMATION:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->Companion:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_17

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isLightOSAnimation()Z

    move-result v0

    if-eqz v0, :cond_17

    const-wide/16 v0, 0x12c

    goto :goto_19

    :cond_17
    const-wide/16 v0, 0x0

    :goto_19
    const-wide/16 v2, 0x3e8

    add-long/2addr v2, v0

    sput-wide v2, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->LAUNCH_TIMEOUT:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread$lambda$0(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V

    return-void
.end method

.method public static final synthetic access$getLAUNCH_TIMEOUT$cp()J
    .registers 2

    sget-wide v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->LAUNCH_TIMEOUT:J

    return-wide v0
.end method

.method private final callOnIntentStartedOnMainThread(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_23

    invoke-interface {p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->getLaunchContainer()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    new-instance v0, Lcom/android/common/util/q;

    invoke-direct {v0, p1, p2}, Lcom/android/common/util/q;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_26

    :cond_23
    invoke-interface {p1, p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    :goto_26
    return-void
.end method

.method private static final callOnIntentStartedOnMainThread$lambda$0(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V
    .registers 3

    const-string v0, "$this_callOnIntentStartedOnMainThread"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;->onIntentStarted(Z)V

    return-void
.end method

.method public static final getProgress(FJJ)F
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->Companion:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Companion;->getProgress(FJJ)F

    move-result p0

    return p0
.end method

.method public static synthetic startIntentWithAnimation$default(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_5

    const/4 p2, 0x1

    :cond_5
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->startIntentWithAnimation(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public final createRunner(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)V

    return-object v0
.end method

.method public final startIntentWithAnimation(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Lkotlin/jvm/functions/Function1;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method

.method public final startIntentWithAnimation(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string p3, "intentStarter"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    const-string v0, "ActivityLaunchAnimator"

    if-eqz p1, :cond_55

    if-nez p2, :cond_d

    goto :goto_55

    :cond_d
    new-instance p2, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    invoke-direct {p2, p0, p1}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;-><init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;)V

    new-instance v7, Landroid/view/RemoteAnimationAdapter;

    const-wide/16 v3, 0x107

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p2

    invoke-direct/range {v1 .. v6}, Landroid/view/RemoteAnimationAdapter;-><init>(Landroid/view/IRemoteAnimationRunner;JJ)V

    invoke-interface {p4, v7}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    const/4 v1, 0x2

    if-eq p4, v1, :cond_2f

    if-eqz p4, :cond_2f

    const/4 v1, 0x3

    if-ne p4, v1, :cond_30

    :cond_2f
    const/4 p3, 0x1

    :cond_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " willAnimate="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V

    if-eqz p3, :cond_54

    invoke-virtual {p2}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->postTimeout$OplusLauncher_RealmePallExportAallRelease()V

    :cond_54
    return-void

    :cond_55
    :goto_55
    const-string/jumbo p2, "start page no work"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_64

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->callOnIntentStartedOnMainThread(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;Z)V

    :cond_64
    return-void
.end method

.method public final startIntentWithAnimation(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLkotlin/jvm/functions/Function1;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroid/view/RemoteAnimationAdapter;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "intentStarter"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;->startIntentWithAnimation$default(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    return-void
.end method
