.class public final Lcom/android/quickstep/views/OplusGroupedTaskView;
.super Lcom/android/quickstep/views/GroupedTaskView;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/quickstep/views/OplusGroupedTaskView$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusGroupedTaskView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusGroupedTaskView.kt\ncom/android/quickstep/views/OplusGroupedTaskView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,420:1\n1#2:421\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/quickstep/views/OplusGroupedTaskView$Companion;

.field private static final DIVIDER_HORIZONTAL:I = 0x2

.field private static final DIVIDER_VERTICAL:I = 0x1

.field private static final FRACTION_HALF:F = 0.5f

.field private static final IGNORE_START_TASK_DURATION:J = 0xaL

.field public static final KEY_FORCE_DIVIDER_ORIENTATION:Ljava/lang/String; = "set_force_divider_orientation"

.field private static final SAFE_START_TASK_DURATION:J = 0x320L

.field private static final TAG:Ljava/lang/String; = "OplusGroupedTaskView"


# instance fields
.field private groupTask:Lcom/android/quickstep/util/GroupTask;

.field private isFirstIconNull:Z

.field private isInAdjacentPageAnimation:Z

.field private isSecondaryIconNull:Z

.field private mLaunchRunnablePosted:Z

.field private final mRelayLaunchRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/quickstep/views/OplusGroupedTaskView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/quickstep/views/OplusGroupedTaskView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/quickstep/views/OplusGroupedTaskView;->Companion:Lcom/android/quickstep/views/OplusGroupedTaskView$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 9
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/views/OplusGroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/quickstep/views/OplusGroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/GroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p1, Lcom/android/quickstep/util/n;

    invoke-direct {p1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mRelayLaunchRunnable:Ljava/lang/Runnable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isFirstIconNull:Z

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isSecondaryIconNull:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusGroupedTaskView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static synthetic A(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->onTaskListVisibilityChanged$lambda$1(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic B(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/RunnableList;Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/Boolean;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/views/OplusGroupedTaskView;->launchTaskAnimated$lambda$6(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/RunnableList;Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic C(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->onTaskListVisibilityChanged$lambda$4(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method public static synthetic D(Lcom/android/quickstep/views/OplusGroupedTaskView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->mRelayLaunchRunnable$lambda$0(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    return-void
.end method

.method public static synthetic E(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->onTaskListVisibilityChanged$lambda$2(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method public static synthetic F(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->onTaskListVisibilityChanged$lambda$5(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static final launchTaskAnimated$lambda$6(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/RunnableList;Lcom/android/quickstep/views/OplusRecentsViewImpl;Ljava/lang/Boolean;)V
    .registers 5

    const-string v0, "$endCallback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_18

    instance-of p3, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz p3, :cond_12

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_18
    invoke-virtual {p1}, Lcom/android/launcher3/util/RunnableList;->executeAllAndDestroy()V

    const/16 p0, 0x31

    invoke-static {p0}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->end(I)V

    const/4 p0, 0x0

    if-nez p2, :cond_24

    goto :goto_27

    :cond_24
    invoke-virtual {p2, p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    :goto_27
    const/4 p1, 0x3

    invoke-static {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->updateRecentsOrRemoteAnimationRunningFlags(IZ)V

    sget-object p1, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->setSplitTaskLaunchRunning(Z)V

    return-void
.end method

.method private static final mRelayLaunchRunnable$lambda$0(Lcom/android/quickstep/views/OplusGroupedTaskView;)V
    .registers 6

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mLaunchRunnablePosted:Z

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v1, "OplusGroupedTaskView"

    const-string v2, "QuickStep"

    const/4 v3, 0x0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_63

    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning()Z

    move-result v4

    if-nez v4, :cond_63

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_63

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    if-eqz v0, :cond_39

    iget-object v0, v0, Lcom/android/quickstep/views/RecentsView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    goto :goto_3a

    :cond_39
    move-object v0, v3

    :goto_3a
    sget-object v4, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto :goto_63

    :cond_53
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5f

    const-string/jumbo v0, "mRelayLaunchRunnable run."

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    return-void

    :cond_63
    :goto_63
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_b8

    const-string v0, "DelayLaunchRunnable return, ["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v4, :cond_7c

    invoke-virtual {v4}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7d

    :cond_7c
    move-object v4, v3

    :goto_7d
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_91

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_91
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "], Running["

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isTaskDismissAnimRunning()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRecentsAnimationRunning()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b8
    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$1(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$2(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v0, p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$3(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/quickstep/util/GroupTask;)V
    .registers 4

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object v1, p1, Lcom/android/quickstep/util/GroupTask;->task1:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v1, v1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->splitIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, v1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->splitIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setSecondaryIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$4(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p0, p1, v0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setTitle(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;)V

    return-void
.end method

.method private static final onTaskListVisibilityChanged$lambda$5(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setSecondaryIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private final removeLaunchRunnable()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mLaunchRunnablePosted:Z

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "QuickStep"

    const-string v1, "OplusGroupedTaskView"

    const-string/jumbo v2, "removeLaunchRunnable"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    iget-object v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mRelayLaunchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mLaunchRunnablePosted:Z

    :cond_1c
    return-void
.end method

.method public static synthetic z(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/quickstep/util/GroupTask;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusGroupedTaskView;->onTaskListVisibilityChanged$lambda$3(Lcom/android/quickstep/views/OplusGroupedTaskView;Lcom/android/quickstep/util/GroupTask;)V

    return-void
.end method


# virtual methods
.method public bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .registers 6

    const-string/jumbo v0, "primary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/quickstep/views/GroupedTaskView;->bind(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/quickstep/util/RecentsOrientedState;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    new-instance p1, Lcom/android/quickstep/util/GroupTask;

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-direct {p1, p2, p3, p4}, Lcom/android/quickstep/util/GroupTask;-><init>(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/Task;Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V

    iput-object p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->groupTask:Lcom/android/quickstep/util/GroupTask;

    return-void
.end method

.method public getAllTaskKeysIncluded()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskKey;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const-string v2, "key"

    if-eqz v1, :cond_15

    iget-object v1, v1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v1, :cond_15

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_15
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_23

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_23

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    return-object v0
.end method

.method public final getDividerOrientation()I
    .registers 3

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_d

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result v0

    if-eqz v0, :cond_19

    :cond_d
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz p0, :cond_19

    iget-boolean p0, p0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    goto :goto_18

    :cond_17
    const/4 p0, 0x2

    :goto_18
    move v1, p0

    :cond_19
    return v1
.end method

.method public final getGroupTask()Lcom/android/quickstep/util/GroupTask;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->groupTask:Lcom/android/quickstep/util/GroupTask;

    return-object p0
.end method

.method public final getOtherTask(I)Lcom/android/systemui/shared/recents/model/Task;
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_10

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v3, :cond_10

    iget v3, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v3, :cond_10

    move v3, v1

    goto :goto_11

    :cond_10
    move v3, v2

    :goto_11
    if-eqz v3, :cond_16

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    goto :goto_28

    :cond_16
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz p0, :cond_23

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_23

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_23

    goto :goto_24

    :cond_23
    move v1, v2

    :goto_24
    if-eqz v1, :cond_27

    goto :goto_28

    :cond_27
    const/4 v0, 0x0

    :goto_28
    return-object v0
.end method

.method public final getSafelyLaunchDelay()J
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object p0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->getRecentsAnimationFinishTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long p0, v2, v0

    const-wide/16 v2, 0x320

    const/4 v4, 0x0

    if-gtz p0, :cond_19

    cmp-long p0, v0, v2

    if-gez p0, :cond_19

    const/4 v4, 0x1

    :cond_19
    if-eqz v4, :cond_1d

    sub-long/2addr v2, v0

    goto :goto_1f

    :cond_1d
    const-wide/16 v2, 0x0

    :goto_1f
    return-wide v2
.end method

.method public final getSecondaryTask()Lcom/android/systemui/shared/recents/model/Task;
    .registers 1

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    return-object p0
.end method

.method public interceptOnLayout()Z
    .registers 4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->interceptOnLayout()Z

    move-result p0

    return p0

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000  # 0.5f

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setPivotX(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v2

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setPivotY(F)V

    const/4 p0, 0x1

    return p0
.end method

.method public final isInAdjacentPageAnimation()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isInAdjacentPageAnimation:Z

    return p0
.end method

.method public launchTask(Ljava/util/function/Consumer;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "mActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p1, p2}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->launchEmbeddableTask(Lcom/android/launcher3/statemanager/StatefulActivity;Ljava/util/function/Consumer;Z)Z

    move-result v0

    if-eqz v0, :cond_15

    return-void

    :cond_15
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getDividerOrientation()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v1

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v3, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->getSplitRatio()F

    move-result v7

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v1 .. v8}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(IIILjava/util/function/Consumer;ZFI)V

    return-void
.end method

.method public launchTask(Ljava/util/function/Consumer;ZZ)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZZ)V"
        }
    .end annotation

    const-string p3, "callback"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/views/OplusGroupedTaskView;->launchTask(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "mActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->launchEmbeddableTaskAnimated(Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_83

    :cond_18
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getRestState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.statemanager.OplusStateManager<*>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/launcher3/statemanager/OplusStateManager;

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/OplusStateManager;->resetLauncherViewState()V

    :cond_45
    new-instance v0, Lcom/android/launcher3/util/RunnableList;

    invoke-direct {v0}, Lcom/android/launcher3/util/RunnableList;-><init>()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v1

    const/16 v2, 0x31

    const-string v3, "Enter form GroupedTaskView"

    invoke-static {p0, v2, v3}, Lcom/android/systemui/shared/system/InteractionJankMonitorWrapper;->begin(Landroid/view/View;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getOplusRecentsView()Lcom/android/quickstep/views/OplusRecentsViewImpl;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_61

    invoke-virtual {v2}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->getSpringAnimToRecent()Z

    move-result v4

    goto :goto_62

    :cond_61
    move v4, v3

    :goto_62
    const/4 v5, 0x1

    if-eqz v4, :cond_6b

    if-nez v2, :cond_68

    goto :goto_6b

    :cond_68
    invoke-virtual {v2, v5}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->setWaitTaskAnimationStart(Z)V

    :cond_6b
    :goto_6b
    sput-boolean v5, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->launchFromRecent:Z

    if-eqz v1, :cond_7d

    invoke-virtual {v1}, Lcom/android/quickstep/views/RecentsView;->getSplitPlaceholder()Lcom/android/quickstep/util/SplitSelectStateController;

    move-result-object v4

    if-eqz v4, :cond_7d

    new-instance v5, Lcom/android/launcher3/r2;

    invoke-direct {v5, v1, v0, v2}, Lcom/android/launcher3/r2;-><init>(Lcom/android/quickstep/views/RecentsView;Lcom/android/launcher3/util/RunnableList;Lcom/android/quickstep/views/OplusRecentsViewImpl;)V

    invoke-virtual {v4, p0, v5, v3}, Lcom/android/quickstep/util/SplitSelectStateController;->launchTasks(Lcom/android/quickstep/views/GroupedTaskView;Ljava/util/function/Consumer;Z)V

    :cond_7d
    if-eqz v1, :cond_82

    invoke-virtual {v1, v0}, Lcom/android/quickstep/views/RecentsView;->addSideTaskLaunchCallback(Lcom/android/launcher3/util/RunnableList;)V

    :cond_82
    return-object v0

    :cond_83
    :goto_83
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_8f

    check-cast p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    goto :goto_90

    :cond_8f
    move-object p0, v1

    :goto_90
    if-eqz p0, :cond_95

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_95
    return-object v1
.end method

.method public launchTaskAnimatedAsync()V
    .registers 9

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mActivity:Lcom/android/launcher3/statemanager/StatefulActivity;

    const-string v2, "mActivity"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->launchEmbeddableTaskAnimated(Lcom/android/launcher3/BaseDraggingActivity;Landroid/view/View;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_1b

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_1b
    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_20
    return-void

    :cond_21
    sget-object v0, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->INSTANCE:Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RecentsViewAnimUtil;->isRemoteRecentsAnimationRunning()Z

    move-result v0

    const-string v2, "OplusGroupedTaskView"

    const-string v3, "QuickStep"

    if-eqz v0, :cond_49

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "launchTaskAnimatedAsync, remote anim running, return."

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_43

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_43
    if-eqz v1, :cond_48

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_48
    return-void

    :cond_49
    invoke-direct {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->removeLaunchRunnable()V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->getSafelyLaunchDelay()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8e

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_75

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchTaskAnimatedAsync, delay="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", post."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_75
    iget-object v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mRelayLaunchRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, v4, v5}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->mLaunchRunnablePosted:Z

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object p0

    instance-of v0, p0, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    if-eqz v0, :cond_88

    move-object v1, p0

    check-cast v1, Lcom/android/quickstep/views/OplusRecentsViewImpl;

    :cond_88
    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->doInjectEventWhenLaunchFailedIfNeed()V

    :cond_8d
    return-void

    :cond_8e
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->launchTaskAnimated()Lcom/android/launcher3/util/RunnableList;

    return-void
.end method

.method public onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V
    .registers 4

    const-string/jumbo v0, "scrollState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/quickstep/views/OplusTaskViewImpl;->onPageScroll(Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler$ScrollState;Z)V

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    if-eqz p1, :cond_19

    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    if-nez p0, :cond_12

    goto :goto_19

    :cond_12
    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskThumbnailView;->getDimAlpha()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/TaskThumbnailView;->setDimAlpha(F)V

    :cond_19
    :goto_19
    return-void
.end method

.method public onTaskListVisibilityChanged(ZI)V
    .registers 10

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->removeLaunchRunnable()V

    :cond_5
    const-string v0, "OplusGroupedTaskView"

    const-string v1, "QuickStep"

    if-nez p1, :cond_27

    iget-boolean v2, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isInAdjacentPageAnimation:Z

    if-eqz v2, :cond_27

    const-string p1, "Task:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", in adjacent page animation, should not change visible to hidden!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_27
    const/4 v2, 0x2

    invoke-virtual {p0, p2, v2}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {p0, p2, v3}, Lcom/android/quickstep/views/TaskView;->needsUpdate(II)Z

    move-result p2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_71

    const-string/jumbo v4, "onTaskListVisibilityChanged "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", update["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "], visible="

    const-string v6, ", draw="

    invoke-static {v4, p2, v5, p1, v6}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", alpha="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_71
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getDispatchDrawVisible()Z

    move-result v0

    if-eq v0, p1, :cond_7d

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->setDispatchDrawVisible(Z)V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_7d
    invoke-virtual {p0}, Lcom/android/quickstep/views/GroupedTaskView;->cancelPendingLoadTasks()V

    const/4 v0, 0x0

    if-eqz p1, :cond_ef

    sget-object v1, Lcom/android/quickstep/RecentsModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/quickstep/RecentsModel;

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsModel;->getThumbnailCache()Lcom/android/quickstep/TaskThumbnailCache;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/quickstep/RecentsModel;->getIconCache()Lcom/android/quickstep/TaskIconCache;

    move-result-object v1

    if-eqz v2, :cond_b3

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v5, Landroidx/core/location/a;

    invoke-direct {v5, p0}, Landroidx/core/location/a;-><init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    invoke-virtual {v4, v2, v5}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/views/TaskView;->mThumbnailLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v5, Lcom/android/launcher/guide/side/e;

    invoke-direct {v5, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    invoke-virtual {v4, v2, v5}, Lcom/android/quickstep/TaskThumbnailCache;->updateThumbnailInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mThumbnailLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    :cond_b3
    if-eqz p2, :cond_115

    instance-of p2, v1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    if-eqz p2, :cond_d4

    iget-object p2, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->groupTask:Lcom/android/quickstep/util/GroupTask;

    if-eqz p2, :cond_d4

    if-eqz p2, :cond_c1

    iget-object v0, p2, Lcom/android/quickstep/util/GroupTask;->task2:Lcom/android/systemui/shared/recents/model/Task;

    :cond_c1
    if-eqz v0, :cond_d4

    check-cast v1, Lcom/android/quickstep/OplusTaskIconCacheImpl;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/android/common/util/n;

    invoke-direct {v0, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    invoke-virtual {v1, p2, v0}, Lcom/android/quickstep/OplusTaskIconCacheImpl;->updateIconInBackground(Lcom/android/quickstep/util/GroupTask;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_115

    :cond_d4
    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/common/util/m;

    invoke-direct {v0, p0}, Lcom/android/common/util/m;-><init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    invoke-virtual {v1, p2, v0}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconLoadRequest:Lcom/android/quickstep/util/CancellableTask;

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    new-instance v0, Lcom/android/launcher3/g;

    invoke-direct {v0, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/quickstep/views/OplusGroupedTaskView;)V

    invoke-virtual {v1, p2, v0}, Lcom/android/quickstep/TaskIconCache;->updateIconInBackground(Lcom/android/systemui/shared/recents/model/Task;Ljava/util/function/Consumer;)Lcom/android/quickstep/util/CancellableTask;

    move-result-object p2

    iput-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconLoadRequest2:Lcom/android/quickstep/util/CancellableTask;

    goto :goto_115

    :cond_ef
    if-eqz v2, :cond_109

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0, v0}, Lcom/android/quickstep/views/TaskThumbnailView;->setThumbnail(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    iget-object v1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSecondaryTask:Lcom/android/systemui/shared/recents/model/Task;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object v0, v1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    :cond_109
    if-eqz p2, :cond_115

    iget-object p2, p0, Lcom/android/quickstep/views/TaskView;->mIconView:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mIconView2:Lcom/android/quickstep/views/IconView;

    invoke-virtual {p0, p2, v0}, Lcom/android/quickstep/views/OplusGroupedTaskView;->setSecondaryIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V

    :cond_115
    :goto_115
    const/4 p2, 0x0

    if-eqz p1, :cond_127

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->isLocked()Z

    move-result v1

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {v2}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result v2

    invoke-virtual {v0, v1, p2, v2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateLockIconVisibility(ZZZ)V

    :cond_127
    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    if-eqz p1, :cond_13c

    iget-object p0, p0, Lcom/android/quickstep/views/TaskView;->embeddedRuler:Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;

    invoke-virtual {p0}, Lcom/oplus/quickstep/multiwindow/embeded/TaskViewEmbeddedRuler;->isShowSuperLockRelatedUI()Z

    move-result p0

    if-eqz p0, :cond_13c

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result p0

    if-nez p0, :cond_13c

    goto :goto_13d

    :cond_13c
    move v3, p2

    :goto_13d
    invoke-virtual {v0, v3, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->updateHintPointVisibility(ZZ)V

    return-void
.end method

.method public setIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {p1, p2}, Lcom/oplus/quickstep/views/OplusTaskHeaderView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    if-nez p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isFirstIconNull:Z

    return-void
.end method

.method public final setInAdjacentPageAnimation(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isInAdjacentPageAnimation:Z

    return-void
.end method

.method public setOrientationState(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 11

    const-string/jumbo v0, "orientationState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/util/RecentsOrientedState;->getOrientationHandler()Lcom/android/launcher3/touch/PagedOrientationHandler;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/RecentsView;->getLastComputedTaskSize()Landroid/graphics/Rect;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int v4, v1, v2

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int v3, v1, v0

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    check-cast v7, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v8, v2

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    sget-object v1, Lcom/android/launcher3/touch/PagedOrientationHandler;->PORTRAIT:Lcom/android/launcher3/touch/PagedOrientationHandler;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    const/4 v1, 0x0

    goto :goto_52

    :cond_4e
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getThumbnailTopMargin()I

    move-result v1

    :goto_52
    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getThumbnailTopMargin()I

    move-result v2

    invoke-interface {p1, v0, v2}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V

    invoke-interface {p1, v7, v1}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForSnapshotView(Landroid/widget/FrameLayout$LayoutParams;I)V

    div-int/lit8 v1, v3, 0x2

    invoke-virtual {p0}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getThumbnailTopMargin()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int v5, v1, v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v6

    move-object v1, p1

    move-object v2, v8

    invoke-interface/range {v1 .. v6}, Lcom/android/quickstep/touch/OplusBasePagedOrientationHandler;->setLayoutParamsForTaskHeader(Landroid/widget/FrameLayout$LayoutParams;IIIZ)V

    iget-object v1, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-virtual {v0, v8}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mHeader:Lcom/oplus/quickstep/views/OplusTaskHeaderView;

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getDegreesRotated()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setRotation(F)V

    iget-object v0, p0, Lcom/android/quickstep/views/TaskView;->mSnapshotView:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    const/4 v2, 0x0

    if-eqz v1, :cond_95

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_96

    :cond_95
    move-object v0, v2

    :goto_96
    if-eqz v0, :cond_9f

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onRotationChanged(I)V

    :cond_9f
    iget-object p0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v0, p0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v0, :cond_a8

    move-object v2, p0

    check-cast v2, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    :cond_a8
    if-eqz v2, :cond_b1

    invoke-interface {p1}, Lcom/android/launcher3/touch/PagedOrientationHandler;->getRotation()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->onRotationChanged(I)V

    :cond_b1
    return-void
.end method

.method public final setSecondaryIcon(Lcom/android/quickstep/views/IconView;Landroid/graphics/drawable/Drawable;)V
    .registers 3

    if-nez p1, :cond_3

    goto :goto_6

    :cond_3
    invoke-virtual {p1, p2}, Lcom/android/quickstep/views/IconView;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_6
    if-nez p2, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    iput-boolean p1, p0, Lcom/android/quickstep/views/OplusGroupedTaskView;->isSecondaryIconNull:Z

    return-void
.end method

.method public updateSnapshotRadius()V
    .registers 3

    invoke-super {p0}, Lcom/android/quickstep/views/GroupedTaskView;->updateSnapshotRadius()V

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSnapshotView2:Lcom/android/quickstep/views/TaskThumbnailView;

    instance-of v1, v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    if-eqz v1, :cond_c

    check-cast v0, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    if-eqz v0, :cond_14

    iget p0, p0, Lcom/android/quickstep/views/TaskView;->mFullscreenProgress:F

    invoke-virtual {v0, p0}, Lcom/android/quickstep/views/OplusTaskThumbnailViewImpl;->setFullscreenProgress(F)V

    :cond_14
    return-void
.end method

.method public updateSplitBoundsConfig(Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;)V
    .registers 7

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_19

    iget-boolean v4, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz v4, :cond_e

    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_10

    :cond_e
    iget v0, v0, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_10
    cmpg-float v0, v0, v1

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v3

    :goto_17
    xor-int/2addr v0, v2

    goto :goto_1a

    :cond_19
    move v0, v3

    :goto_1a
    if-eqz p1, :cond_2e

    iget-boolean v4, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->appsStackedVertically:Z

    if-eqz v4, :cond_23

    iget v4, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->topTaskPercent:F

    goto :goto_25

    :cond_23
    iget v4, p1, Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;->leftTaskPercent:F

    :goto_25
    cmpg-float v1, v4, v1

    if-nez v1, :cond_2b

    move v1, v2

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    xor-int/2addr v1, v2

    goto :goto_2f

    :cond_2e
    move v1, v3

    :goto_2f
    if-eqz v0, :cond_3e

    if-nez v1, :cond_3e

    const-string p0, "QuickStep"

    const-string p1, "OplusGroupedTaskView"

    const-string/jumbo v0, "updateSplitBoundsConfig: the new task percent is invalid, so we should not update config"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-nez v0, :cond_4b

    if-eqz p1, :cond_4b

    goto :goto_4c

    :cond_4b
    move v2, v3

    :goto_4c
    iput-object p1, p0, Lcom/android/quickstep/views/GroupedTaskView;->mSplitBoundsConfig:Lcom/android/launcher3/util/SplitConfigurationOptions$SplitBounds;

    if-eqz v2, :cond_54

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_57

    :cond_54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :goto_57
    return-void
.end method
