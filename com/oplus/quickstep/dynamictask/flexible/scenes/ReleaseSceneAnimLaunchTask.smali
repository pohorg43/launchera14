.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReleaseSceneAnimLaunchTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReleaseSceneAnimLaunchTask.kt\ncom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,206:1\n94#2,14:207\n*S KotlinDebug\n*F\n+ 1 ReleaseSceneAnimLaunchTask.kt\ncom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask\n*L\n151#1:207,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene_AnimLaunchTask"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchByAsync$lambda$2$lambda$1$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method public static final synthetic access$release$s2018794741(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchByAsync$lambda$2$lambda$1(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->startTask$lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/launcher3/util/ActivityOptionsWrapper;Lkotlin/jvm/functions/Function1;Lcom/android/quickstep/views/TaskView;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->startTask$lambda$4(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/launcher3/util/ActivityOptionsWrapper;Lkotlin/jvm/functions/Function1;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchByAsync$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method private final launchByAsync(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return v1

    :cond_c
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    instance-of v3, v2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v3, :cond_17

    check-cast v2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_18

    :cond_17
    const/4 v2, 0x0

    :goto_18
    if-nez v2, :cond_1b

    return v1

    :cond_1b
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "recentsView.context"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v3

    invoke-direct {p0, v1, v3}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchTaskSetup(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V

    sget-object v1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v3, Lcom/android/common/debug/c;

    invoke-direct {v3, p0, v2, p1, v0}, Lcom/android/common/debug/c;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static final launchByAsync$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 12

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getThumbnailBySnapshot()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/android/exceptionmonitor/util/e;

    move-object v1, v7

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/e;-><init>(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final launchByAsync$lambda$2$lambda$1(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 7

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RFT_ReleaseScene_AnimLaunchTask"

    const-string v1, "launchByAsync(), refresh."

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_24

    iget-object v0, p1, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_22

    goto :goto_24

    :cond_22
    iput-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_24
    :goto_24
    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setWaitNextDraw(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const-wide/16 v0, 0x8

    const-string p0, "RFT_ReleaseScene_AnimLaunchTask#refresh"

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    new-instance p0, Lcom/android/quickstep/f1;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-static {p1, p0}, Lcom/android/quickstep/OplusViewUtils;->postNextDraw(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_47

    invoke-direct {p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->startTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    :cond_47
    return-void
.end method

.method private static final launchByAsync$lambda$2$lambda$1$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->startTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V

    return-void
.end method

.method private final launchBySnapshot()Z
    .registers 4

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getThumbnailBySnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v1

    if-eqz v1, :cond_28

    iget-object v2, v1, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v2, :cond_23

    goto :goto_25

    :cond_23
    iput-object v0, v2, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :goto_25
    invoke-virtual {v1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    :cond_28
    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->showThumbnailView()V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v2, v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    return v2
.end method

.method private final launchJustRelease()Z
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->showThumbnailView()V

    const/4 p0, 0x0

    return p0
.end method

.method private final launchTaskByDelay(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v4

    const/4 v0, 0x0

    if-nez v4, :cond_c

    return v0

    :cond_c
    invoke-virtual {v4}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    move-object v5, v1

    if-nez v5, :cond_1a

    return v0

    :cond_1a
    iget-object v0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v1, "recentsView.mActivity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    const/4 v7, 0x0

    new-instance v9, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;

    const/4 v6, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByDelay$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Ll4/d;)V

    const/4 v10, 0x3

    const/4 v11, 0x0

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v6 .. v11}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    const/4 p0, 0x1

    return p0
.end method

.method private final launchTaskByView(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    :cond_c
    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    invoke-virtual {p1, v0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->createAdjacentPageAnimForTaskLaunch(Lcom/android/quickstep/views/TaskView;)Landroid/animation/AnimatorSet;

    move-result-object v1

    new-instance v3, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;

    invoke-direct {v3, p0, v0, p1, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$launchTaskByView$$inlined$addListener$default$1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v1, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return v2
.end method

.method private final launchTaskSetup(Landroid/content/Context;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statStartAppFromTask()V

    sget-object p0, Lcom/android/common/util/LauncherBooster;->INSTANCE:Lcom/android/common/util/LauncherBooster;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherBooster;->getGpu()Lcom/android/common/util/LauncherBooster$GpuBoost;

    move-result-object p0

    if-eqz p2, :cond_18

    iget-object p1, p2, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_18

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-virtual {p0, p1}, Lcom/android/common/util/LauncherBooster$GpuBoost;->setStartAppPackage(Ljava/lang/String;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    return-void
.end method

.method private final startTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/TaskView;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/TaskView;",
            ")V"
        }
    .end annotation

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const/4 v0, 0x0

    invoke-virtual {p0, p2, v0}, Lcom/android/launcher3/BaseDraggingActivity;->getActivityLaunchOptions(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/ActivityOptionsWrapper;

    move-result-object p0

    const-string v1, "recentsView.mActivity.ge…chOptions(taskView, null)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-eqz v1, :cond_14

    iget-object v0, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    :cond_14
    if-nez v0, :cond_17

    return-void

    :cond_17
    const-string v1, "RFT_ReleaseScene_AnimLaunchTask"

    const-string v2, "startTask(), refresh."

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v2

    if-eqz v2, :cond_2b

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    new-instance v1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$startTask$resultCallback$1;

    invoke-direct {v1, p2, v0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask$startTask$resultCallback$1;-><init>(Lcom/android/quickstep/views/TaskView;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    sget-object p1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v2, Lcom/android/common/debug/c;

    invoke-direct {v2, v0, p0, v1, p2}, Lcom/android/common/debug/c;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/launcher3/util/ActivityOptionsWrapper;Lkotlin/jvm/functions/Function1;Lcom/android/quickstep/views/TaskView;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final startTask$lambda$4(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Lcom/android/launcher3/util/ActivityOptionsWrapper;Lkotlin/jvm/functions/Function1;Lcom/android/quickstep/views/TaskView;)V
    .registers 7

    const-string v0, "$taskKey"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$opts"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$resultCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/util/ActivityOptionsWrapper;->options:Landroid/app/ActivityOptions;

    new-instance v1, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {v0, p0, p1, v1, p2}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->startActivityFromRecentsAsyncByClick(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;Ljava/util/function/Consumer;Landroid/os/Handler;)V

    return-void
.end method

.method private static final startTask$lambda$4$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release(), attachedTaskView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLandscape="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isLandscape()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFT_ReleaseScene_AnimLaunchTask"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_58

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_58

    const-string p1, "release(), start but no reparent."

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, v1, p1, v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0

    :cond_58
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->launchByAsync(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z

    move-result p0

    return p0
.end method
