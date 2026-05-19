.class public Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public multiAppOpenAnimStart()V
    .registers 1

    return-void
.end method

.method public prepareMultiAppOpenAnim()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .registers 1

    return-void
.end method

.method public setOnTaskAppearedTarget(Landroid/view/RemoteAnimationTarget;)V
    .registers 2

    return-void
.end method

.method public setRecentsAnimEndState(ZLjava/lang/String;)Z
    .registers 3

    const-string p0, "reason"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateRecentTargetsIfNeed(Lcom/android/quickstep/RecentsAnimationTargets;)Lcom/android/quickstep/RecentsAnimationTargets;
    .registers 2

    return-object p1
.end method
