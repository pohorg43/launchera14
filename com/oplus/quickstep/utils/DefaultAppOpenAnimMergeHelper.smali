.class public Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkIfRecentsAnimStarted(Lcom/android/quickstep/RecentsAnimationCallbacks;)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method

.method public cleanUpRecentsAnim()V
    .registers 1

    return-void
.end method

.method public final findTask([Landroid/view/RemoteAnimationTarget;I)Landroid/view/RemoteAnimationTarget;
    .registers 6

    if-eqz p1, :cond_10

    const/4 p0, 0x0

    array-length v0, p1

    :goto_4
    if-ge p0, v0, :cond_10

    aget-object v1, p1, p0

    iget v2, v1, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v2, p2, :cond_d

    return-object v1

    :cond_d
    add-int/lit8 p0, p0, 0x1

    goto :goto_4

    :cond_10
    const/4 p0, 0x0

    return-object p0
.end method

.method public gestureTriggerRecentsAnim(Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 2

    const-string p0, "recentsAnimationCallbacks"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public isRecentsMergeOpenRemote()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public onRecentsAnimStart(Lcom/android/quickstep/RecentsAnimationCallbacks;)V
    .registers 2

    return-void
.end method

.method public onRemoteAnimationMerged(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/systemui/shared/system/AppTransitionParam;Landroid/view/IRecentsAnimationController;)Z
    .registers 5

    const-string p0, "info"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "t"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public releaseOpenRemoteTargets()V
    .registers 1

    return-void
.end method

.method public setAppOpenRemoteTargets(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 2

    return-void
.end method
