.class public final Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback$DefaultImpls;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static onAnimLaunchTask(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "caller"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static onAttachedToWindow(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onClickClearAll(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onContentProtectStateChanged(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;Z)Z"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static onCurrentPageChanged(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "caller"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onDetachedFromWindow(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onDynamicStatusChanged(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Z)V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onEnterRecentsView(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "caller"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onExitRecentsView(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "caller"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onLaunchTask(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "caller"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onOrientedStateChanged(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
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

.method public static onPageEndTransition(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onPullLaunchTask(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onTaskViewDimColorChanged(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onTaskViewRemoved(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onTaskWindowModeChanged(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onZoomWindowHide(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static onZoomWindowShow(Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation

    const-string p0, "recentsView"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
