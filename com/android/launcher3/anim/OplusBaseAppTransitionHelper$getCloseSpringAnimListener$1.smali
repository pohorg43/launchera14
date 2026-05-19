.class public final Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->getCloseSpringAnimListener([Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteAnimationTargets;ZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Landroid/animation/AnimatorListenerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic $canViewRunInAnimThread:Z

.field public final synthetic $onEndAction:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $onStartAction:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

.field public final synthetic $surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field private isCanceled:Z

.field public final synthetic this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;


# direct methods
.method public constructor <init>(ZLcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lkotlin/jvm/functions/Function0;Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;Lkotlin/jvm/functions/Function1;Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/quickstep/util/SurfaceTransactionApplier;",
            "[",
            "Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;",
            "Lcom/android/quickstep/RemoteAnimationTargets;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$canViewRunInAnimThread:Z

    iput-object p2, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p3, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p4, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$onStartAction:Lkotlin/jvm/functions/Function0;

    iput-object p5, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    iput-object p6, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$onEndAction:Lkotlin/jvm/functions/Function1;

    iput-object p7, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final isCanceled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->isCanceled:Z

    return p0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 3

    const-string p1, "OplusBaseAppTransitionHelper"

    const-string v0, "Close app animation canceled"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->isCanceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 5

    const-string p1, "OplusBaseAppTransitionHelper"

    const-string v0, "Close app animation end"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->isCanceled:Z

    if-nez p1, :cond_1d

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-static {p1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p1

    instance-of p1, p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->updateWallPaperScrim(FZ)V

    :cond_1d
    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$onEndAction:Lkotlin/jvm/functions/Function1;

    if-eqz p1, :cond_2a

    iget-boolean v0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->isCanceled:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2a
    const-string p1, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".activity_exit_normal"

    const-string v2, " end"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$remoteAnimationTargets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {p1}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->this$0:Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;

    invoke-static {p0}, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;->access$getMLauncher$p(Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper;)Lcom/android/launcher3/BaseQuickstepLauncher;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type com.android.launcher.Launcher"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->setRemoteInterruptOpts(Lcom/android/launcher3/views/FloatingIconViewContainer$InterruptOpts;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 5

    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_HOME:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-string p1, "OplusBaseAppTransitionHelper"

    const-string v0, "Close app animation start"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HM_APP_GAP"

    const-string v0, "launcher"

    const-string v1, ".activity_exit_normal"

    const-string v2, " begin"

    invoke-static {p1, v0, v1, v2}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->isCanceled:Z

    sget-object p1, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p1}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object p1

    const/16 v0, 0x258

    invoke-virtual {p1, v0}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    iget-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$canViewRunInAnimThread:Z

    if-nez p1, :cond_35

    iget-object p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object v0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v1, 0x1

    invoke-static {v1, v0, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_35
    iget-object p0, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->$onStartAction:Lkotlin/jvm/functions/Function0;

    if-eqz p0, :cond_3c

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_3c
    return-void
.end method

.method public final setCanceled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/anim/OplusBaseAppTransitionHelper$getCloseSpringAnimListener$1;->isCanceled:Z

    return-void
.end method
