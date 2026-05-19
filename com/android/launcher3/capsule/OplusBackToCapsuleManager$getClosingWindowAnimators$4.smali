.class public final Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->getClosingWindowAnimators(Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$BackToCapsuleParam;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/Launcher;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $capsuleLeash:Landroid/view/SurfaceControl;

.field public final synthetic $surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic $targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Landroid/view/SurfaceControl;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p2, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iput-object p3, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;->$capsuleLeash:Landroid/view/SurfaceControl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    sget-object p1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;->$capsuleLeash:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->startHideCapsuleSurfaceAnim(Landroid/view/SurfaceControl;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4

    const-string p0, "HM_APP_GAP"

    const-string p1, "launcher"

    const-string v0, ".activity_exit_normal"

    const-string v1, " end"

    invoke-static {p0, p1, v0, v1}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_CAPSULE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 7

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->INSTANCE:Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->mIsRunningCapsuleAnim:Z

    invoke-virtual {v0}, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager;->notifyAnimatorStart()V

    sget-object v0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->MENU_BACK_TO_CAPSULE:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const-string v0, "HM_APP_GAP"

    const-string v2, "launcher"

    const-string v3, ".activity_exit_normal"

    const-string v4, " begin"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/debug/DebugLogPUtils;->debugLogP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {v0}, Lcom/android/common/util/LauncherBooster;->getSf()Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;

    move-result-object v0

    invoke-virtual {p1}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v2

    long-to-int p1, v2

    invoke-virtual {v0, p1}, Lcom/android/common/util/LauncherBooster$SurfaceFlingerBoost;->open(I)V

    iget-object p1, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;->$surfaceApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/launcher3/capsule/OplusBackToCapsuleManager$getClosingWindowAnimators$4;->$targets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-static {v1, p0, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    return-void
.end method
