.class public final Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;
.super Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$Companion;

.field private static final TAG:Ljava/lang/String; = "RFT_ReleaseScene_PullLaunch"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->Companion:Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V
    .registers 3

    const-string v0, "wrapper"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;)V

    return-void
.end method

.method public static synthetic a(Lcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityOptions;Lcom/android/quickstep/views/OplusTaskViewImpl;Lkotlin/jvm/functions/Function1;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->launchTask$lambda$5(Lcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityOptions;Lcom/android/quickstep/views/OplusTaskViewImpl;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic b(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->release$lambda$2$lambda$1(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method public static synthetic c(Lkotlin/jvm/functions/Function1;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->launchTask$lambda$4(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static synthetic d(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->release$lambda$2$lambda$1$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method public static synthetic e(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->release$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method

.method private final launchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/quickstep/views/OplusRecentsViewImpl<",
            "**>;",
            "Lcom/android/quickstep/views/OplusTaskViewImpl;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;

    invoke-direct {v0, p2, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch$launchTask$endCallback$1;-><init>(Lcom/android/quickstep/views/OplusTaskViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {p2}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object v1

    if-nez v1, :cond_11

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_11
    const/4 v2, 0x1

    sput-boolean v2, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v4, v0}, Lcom/coui/appcompat/reddot/a;-><init>(Lkotlin/jvm/functions/Function1;)V

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v5}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v3, v6, v6, v4, v5}, Lcom/android/systemui/shared/system/ActivityOptionsCompat;->makeCustomAnimation(Landroid/content/Context;IILjava/lang/Runnable;Landroid/os/Handler;)Landroid/app/ActivityOptions;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v6

    :cond_32
    invoke-virtual {v3, v6}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->setSkipDisassociate(Z)V

    sget-object p0, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance p1, Lcom/android/common/debug/c;

    invoke-direct {p1, v1, v3, p2, v0}, Lcom/android/common/debug/c;-><init>(Lcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityOptions;Lcom/android/quickstep/views/OplusTaskViewImpl;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final launchTask$lambda$4(Lkotlin/jvm/functions/Function1;)V
    .registers 2

    const-string v0, "$endCallback"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final launchTask$lambda$5(Lcom/android/systemui/shared/recents/model/Task;Landroid/app/ActivityOptions;Lcom/android/quickstep/views/OplusTaskViewImpl;Lkotlin/jvm/functions/Function1;)V
    .registers 5

    const-string v0, "$task"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$endCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getInstance()Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->startActivityFromRecents(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/ActivityOptions;)Z

    move-result p0

    if-nez p0, :cond_25

    const-string p0, "RFT_ReleaseScene_PullLaunch"

    invoke-virtual {p2, p0}, Lcom/android/quickstep/views/TaskView;->notifyTaskLaunchFailed(Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method private static final release$lambda$2(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 11

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

    new-instance v0, Lcom/android/exceptionmonitor/util/e;

    move-object v1, v0

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/exceptionmonitor/util/e;-><init>(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static final release$lambda$2$lambda$1(Landroid/graphics/Bitmap;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 6

    const-string v0, "$thumbnailView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_1d

    iget-object v0, p1, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v0, :cond_1b

    goto :goto_1d

    :cond_1b
    iput-object p0, v0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    :cond_1d
    :goto_1d
    const-string p0, "RFT_ReleaseScene_PullLaunch"

    const-string v0, "release(), refresh"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setOnlyDrawDimming(Z)V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setWaitNextDraw(Z)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->refresh()V

    new-instance p0, Lcom/android/quickstep/f1;

    invoke-direct {p0, p2, p3, p4}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-static {p1, p0}, Lcom/android/quickstep/OplusViewUtils;->postNextDraw(Landroid/view/View;Ljava/lang/Runnable;)Z

    move-result p0

    if-nez p0, :cond_3d

    invoke-direct {p2, p3, p4}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->launchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    :cond_3d
    return-void
.end method

.method private static final release$lambda$2$lambda$1$lambda$0(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$recentsView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$taskView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;->launchTask(Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    return-void
.end method


# virtual methods
.method public release(Lcom/android/quickstep/views/OplusRecentsViewImpl;)Z
    .registers 6
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RFT_ReleaseScene_PullLaunch"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/FlexibleTaskReleaseScene;->getWrapper()Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskViewWrapper;->getAttachedTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2f

    return v1

    :cond_2f
    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v2

    instance-of v3, v2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v3, :cond_3a

    check-cast v2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_3b

    :cond_3a
    const/4 v2, 0x0

    :goto_3b
    if-nez v2, :cond_3e

    return v1

    :cond_3e
    sget-object v1, Lcom/oplus/util/OplusExecutors;->DYNAMIC_TASK_EXECUTOR:Lcom/oplus/util/OplusLooperExecutor;

    new-instance v3, Lcom/android/common/debug/c;

    invoke-direct {v3, p0, v2, p1, v0}, Lcom/android/common/debug/c;-><init>(Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseScenePullLaunch;Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;Lcom/android/quickstep/views/OplusRecentsViewImpl;Lcom/android/quickstep/views/OplusTaskViewImpl;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 p0, 0x1

    return p0
.end method
