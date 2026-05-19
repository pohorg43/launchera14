.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nReleaseSceneExitRecentStart.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReleaseSceneExitRecentStart.kt\ncom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,95:1\n1#2:96\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene_ExitRecent"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->releaseRealtime$lambda$4(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic b(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->releaseRealtime$lambda$4$lambda$3$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->releaseRealtime$lambda$4$lambda$3(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->releaseImmediately$lambda$1(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method

.method private final detach(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_13

    move-object v2, p0

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_13
    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    if-eqz p0, :cond_1e

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->hideBlurSurface()V

    :cond_1e
    return-void
.end method

.method private final releaseImmediately(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->showThumbnailView()V

    const-string v0, "RFT_ReleaseScene_ExitRecent"

    const-string v1, "releaseImmediately()"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_22
    return-void
.end method

.method private static final releaseImmediately$lambda$1(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v0, v1, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->detach$default(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;ZZILjava/lang/Object;)V

    iget-object p0, p1, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    instance-of p1, p0, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_1d

    move-object v2, p0

    check-cast v2, Lcom/android/launcher/Launcher;

    :cond_1d
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/launcher3/BaseQuickstepLauncher;->getDepthController()Lcom/android/launcher3/uioverrides/states/OplusDepthController;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0}, Lcom/android/launcher3/uioverrides/states/OplusDepthController;->hideBlurSurface()V

    :cond_28
    return-void
.end method

.method private final releaseRealtime(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-nez v0, :cond_1a

    return-void

    :cond_1a
    sget-object v1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v2, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;

    invoke-direct {v2, p0, v0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final releaseRealtime$lambda$4(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setReleasing(Z)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getThumbnailBySnapshot()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v1, p1, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v1, :cond_22

    goto :goto_24

    :cond_22
    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_24
    :goto_24
    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;

    invoke-direct {v0, p1, p0, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/d;-><init>(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final releaseRealtime$lambda$4$lambda$3(Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 5

    const-string v0, "$thumbnailView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "RFT_ReleaseScene_ExitRecent"

    const-string v1, "releaseRealtime(), refresh"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setWaitNextDraw(Z)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    new-instance v0, Lcom/android/wm/shell/animation/c;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/animation/c;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-static {p0, v0}, Lcom/android/quickstep/OplusViewUtils;->postNextDraw(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_2f

    invoke-direct {p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->detach(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :cond_2f
    return-void
.end method

.method private static final releaseRealtime$lambda$4$lambda$3$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->detach(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    return-void
.end method


# virtual methods
.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;)Z"
        }
    .end annotation

    const-string v0, "recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    invoke-static {v0}, Lcom/oplus/quickstep/utils/OplusTaskUtils;->isThumbnailNotFullScreen(Lcom/android/systemui/shared/recents/model/ThumbnailData;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/systemui/shared/system/OplusBaseActivityManagerWrapper;->getStartingTaskId()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_38

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getFlexibleTaskId()I

    move-result v2

    if-ne v0, v2, :cond_36

    goto :goto_38

    :cond_36
    const/4 v0, 0x0

    goto :goto_39

    :cond_38
    :goto_38
    move v0, v1

    :goto_39
    if-eqz v0, :cond_3f

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->releaseRealtime(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    goto :goto_42

    :cond_3f
    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneExitRecentStart;->releaseImmediately(Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    :goto_42
    return v1
.end method
