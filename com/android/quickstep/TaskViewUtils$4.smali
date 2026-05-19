.class Lcom/android/quickstep/TaskViewUtils$4;
.super Lcom/android/launcher3/anim/AnimationSuccessListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/quickstep/TaskViewUtils;->createRecentsWindowAnimator(Lcom/android/quickstep/views/TaskView;Z[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/launcher3/statehandlers/DepthController;Lcom/android/launcher3/anim/PendingAnimation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

.field public final synthetic val$applier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

.field public final synthetic val$isQuickSwitch:Z

.field public final synthetic val$targets:Lcom/android/quickstep/RemoteAnimationTargets;


# direct methods
.method public constructor <init>(ZLcom/android/quickstep/RemoteAnimationTargets;Lcom/android/quickstep/util/SurfaceTransactionApplier;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;)V
    .registers 5

    iput-boolean p1, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$isQuickSwitch:Z

    iput-object p2, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    iput-object p3, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$applier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iput-object p4, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    invoke-direct {p0}, Lcom/android/launcher3/anim/AnimationSuccessListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$targets:Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {v0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    invoke-super {p0, p1}, Lcom/android/launcher3/anim/AnimationSuccessListener;->onAnimationEnd(Landroid/animation/Animator;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 4

    iget-object p1, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$applier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    iget-object p0, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$appTargets:[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->createParamForTaskLayerRestore(I[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Z)Lcom/android/quickstep/util/SurfaceTransaction;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    sget-object p0, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->RECENTS_TO_APP:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    return-void
.end method

.method public onAnimationSuccess(Landroid/animation/Animator;)V
    .registers 2

    iget-boolean p0, p0, Lcom/android/quickstep/TaskViewUtils$4;->val$isQuickSwitch:Z

    if-eqz p0, :cond_9

    const/16 p0, 0xb

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    :cond_9
    return-void
.end method
