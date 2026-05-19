.class public final Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getLightWindowAnimation([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;ZLcom/android/launcher3/Launcher;FZ)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimator.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$listener$1\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$4\n+ 3 AppLaunchAnimUtil.kt\ncom/android/launcher3/anim/light/AppLaunchAnimUtil\n+ 4 Animator.kt\nandroidx/core/animation/AnimatorKt$addListener$3\n*L\n1#1,127:1\n98#2:128\n175#3,16:129\n162#3,13:146\n97#4:145\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic $isOpen$inlined:Z

.field public final synthetic $launcher$inlined:Lcom/android/launcher3/Launcher;

.field public final synthetic $launcher$inlined$1:Lcom/android/launcher3/Launcher;

.field public final synthetic $traceType$inlined:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

.field public final synthetic $traceType$inlined$1:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/oplus/quickstep/utils/TracePrintUtil$Type;ZLcom/oplus/quickstep/utils/TracePrintUtil$Type;Lcom/android/launcher3/Launcher;)V
    .registers 6

    iput-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$traceType$inlined:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-boolean p3, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$isOpen$inlined:Z

    iput-object p4, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$traceType$inlined$1:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    iput-object p5, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$launcher$inlined$1:Lcom/android/launcher3/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 8

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/LauncherState;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLightWindowAnimation onEnd, state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", duration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "AppLaunchAnimUtil"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, v2, Lcom/android/launcher3/LauncherState;->overviewUi:Z

    if-eqz p1, :cond_62

    instance-of p1, v0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_62

    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$launcher$inlined:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->NO_BUTTON:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p1, v2, :cond_62

    const-string/jumbo p1, "the state isn\'t NORMAL, so we must change state to NORMAL"

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v2, v1}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;Z)V

    invoke-virtual {v0}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-virtual {p1, v2}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->setState(Lcom/android/launcher3/LauncherState;)V

    :cond_62
    iget-object p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$traceType$inlined:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    sget-object p0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setCloseWidgetRemoteAnim(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .registers 2

    const-string p0, "animator"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "AppLaunchAnimUtil"

    const-string v0, "getLightWindowAnimation onStart"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$isOpen$inlined:Z

    if-eqz p1, :cond_19

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getSfEx()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoostEx;->printLaunchAnimaTraceInfo()V

    :cond_19
    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$traceType$inlined$1:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$launcher$inlined$1:Lcom/android/launcher3/Launcher;

    invoke-static {p1}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->access$hideWallpaperScrim(Lcom/android/launcher3/Launcher;)V

    sget-object p1, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->getOpeningRemoteAnimWidgetId()I

    move-result v0

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil$getLightWindowAnimation$$inlined$addListener$default$1;->$isOpen$inlined:Z

    if-nez p0, :cond_3a

    const/4 p0, -0x1

    if-eq v0, p0, :cond_3a

    const/4 p0, 0x1

    goto :goto_3b

    :cond_3a
    const/4 p0, 0x0

    :goto_3b
    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setCloseWidgetRemoteAnim(Z)V

    return-void
.end method
