.class public interface abstract Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/DynamicTaskCallback$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getDynamicTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
.end method

.method public abstract isDynamicTaskShowing()Z
.end method

.method public abstract isDynamicTaskView(Lcom/android/quickstep/views/OplusTaskViewImpl;)Z
.end method

.method public abstract onAnimLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract onAppLimitedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAttachedToWindow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract onClickClearAll(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onContentProtectStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;Z)Z"
        }
    .end annotation
.end method

.method public abstract onCurrentPageChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;IILjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;II",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onDetachedFromWindow(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract onDynamicStatusChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            "Z)V"
        }
    .end annotation
.end method

.method public abstract onEnterRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onExitRecentsView(Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/systemui/shared/recents/model/Task;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/systemui/shared/recents/model/Task;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onOrientedStateChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/util/RecentsOrientedState;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/util/RecentsOrientedState;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onPageEndTransition(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation
.end method

.method public abstract onPullLaunchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTaskViewDimColorChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTaskViewRemoved(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onTaskWindowModeChanged(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onZoomWindowHide(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract onZoomWindowShow(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/oplus/zoomwindow/OplusZoomWindowInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/oplus/zoomwindow/OplusZoomWindowInfo;",
            ")V"
        }
    .end annotation
.end method
