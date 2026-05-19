.class public Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addSeqId(Landroid/app/ActivityOptions;)V
    .registers 2

    const-string p0, "activityOption"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canFinishRecent()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public canInterceptGesture()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public clearFinishRecentsRunnable()V
    .registers 1

    return-void
.end method

.method public delayFinishRecents(Ljava/lang/Runnable;)Z
    .registers 2

    const-string p0, "runnable"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x0

    return p0
.end method

.method public getNextFinishSeqId(Lcom/android/quickstep/RecentsAnimationController;)J
    .registers 2

    const-string p0, "recentsAnimationController"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public resetInterceptState()V
    .registers 1

    return-void
.end method

.method public updateNextFinishSeqIdIfNeed(Lcom/android/quickstep/RecentsAnimationController;)V
    .registers 2

    const-string p0, "recentsAnimationController"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
