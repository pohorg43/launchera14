.class public abstract Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancelPreparingTask()V
.end method

.method public abstract getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
.end method

.method public final getMRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-object p0
.end method

.method public abstract getReleaseScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;
.end method

.method public abstract getShowScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;
.end method

.method public getUpdateScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate;
    .registers 2

    const-string p0, "reason"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract isDynamicShowing()Z
.end method

.method public abstract isDynamicTask(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
.end method

.method public abstract isDynamicTask(Lcom/android/systemui/shared/recents/model/Task;)Z
.end method

.method public onOrientedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "orientationState"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onRecentsViewAttached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public onRecentsViewDetached(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;",
            ")Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getReleaseScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IRelease;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p0

    return p0
.end method

.method public final setMRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->mRecentsView:Lcom/android/quickstep/views/OplusRecentsViewImpl;

    return-void
.end method

.method public show(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getShowScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IShow;->show(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public abstract support()Z
.end method

.method public update(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;",
            ")V"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/dynamictask/AbsDynamicTaskDispatcher;->getUpdateScene(Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate$Reason;)Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/dynamictask/IDynamicTaskScene$IUpdate;->update(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_13
    return-void
.end method
