.class public Lcom/android/wm/shell/ShellTaskOrganizerExt;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;,
        Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;
    }
.end annotation


# static fields
.field private static final CLASS_NAME_TASK_ORGANIZER:Ljava/lang/String; = "android.window.TaskOrganizer"

.field private static final FIELD_NAME_TASK_ORGANIZER_BINDER_INTERFACE:Ljava/lang/String; = "mInterface"

.field private static final LAUNCH_SCENARIO_CANVAS:I = 0x2

.field private static final LAUNCH_SCENARIO_FLEXIBLE:I = 0x1

.field private static final SCENARIO_CANVAS_SIZE:I = 0x2

.field private static final SCENARIO_THREE_FLEXIBLE_CANVAS_SIZE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ShellTaskOrganizerExt"


# instance fields
.field private mFirstSendRecommend:Z

.field private final mInterface:Landroid/window/IOplusTaskOrganizer;

.field private mIsMinized:Z

.field private mIsSplitScreenMode:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedClearTaskInfo:Z

.field private mNeedUpdateRecommend:Z

.field private mOldFlexibleTaskInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field private final mShellExecutor:Ljava/util/concurrent/Executor;

.field private final mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOldFlexibleTaskInfos:Landroid/util/SparseArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsSplitScreenMode:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsMinized:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mFirstSendRecommend:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedUpdateRecommend:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedClearTaskInfo:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizerExt$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt$1;-><init>(Lcom/android/wm/shell/ShellTaskOrganizerExt;)V

    iput-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mInterface:Landroid/window/IOplusTaskOrganizer;

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    if-eqz p1, :cond_34

    invoke-virtual {p1}, Landroid/window/TaskOrganizer;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    goto :goto_36

    :cond_34
    sget-object v1, Landroidx/window/layout/b;->a:Landroidx/window/layout/b;

    :goto_36
    iput-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mShellExecutor:Ljava/util/concurrent/Executor;

    const-string v1, "mInterface"

    const-string v2, "android.window.TaskOrganizer"

    invoke-static {p1, v1, v2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->getSuperField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Binder;

    if-eqz p1, :cond_4b

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Binder;->setExtension(Landroid/os/IBinder;)V

    :cond_4b
    invoke-static {}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->getInstance()Lcom/oplus/splitscreen/OplusSplitScreenManager;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/ShellTaskOrganizerExt$SplitScreenStateObserver;-><init>(Lcom/android/wm/shell/ShellTaskOrganizerExt;Lcom/android/wm/shell/ShellTaskOrganizerExt$1;)V

    invoke-virtual {p1, v0}, Lcom/oplus/splitscreen/OplusSplitScreenManager;->registerSplitScreenObserver(Lcom/oplus/app/IOplusSplitScreenObserver;)Z

    return-void
.end method

.method public static synthetic a(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->lambda$updateStartingWindowExtendedInfo$0(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/ShellTaskOrganizerExt;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsMinized:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsMinized:Z

    return p1
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mFirstSendRecommend:Z

    return p1
.end method

.method public static synthetic access$302(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedClearTaskInfo:Z

    return p1
.end method

.method public static synthetic access$402(Lcom/android/wm/shell/ShellTaskOrganizerExt;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsSplitScreenMode:Z

    return p1
.end method

.method private isContains()Z
    .registers 4

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_20

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOldFlexibleTaskInfos:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_20
    return v1
.end method

.method private static synthetic lambda$updateStartingWindowExtendedInfo$0(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 3

    invoke-static {}, Lcom/android/wm/shell/startingsurface/StartingWindowControllerExt;->getManager()Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    return-void
.end method

.method private reOrderLauncherTaskForFlexibleMinimize(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V
    .registers 6

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    :cond_8
    add-int/lit8 p0, p0, -0x1

    if-ltz p0, :cond_38

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p0

    const p1, 0x7ffffffd

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_38
    return-void
.end method


# virtual methods
.method public addStartingWindowStateChangeListener(Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public adjustChangeForFlexibleMinimizeIfNeed(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    instance-of p1, p1, Lcom/android/wm/shell/transition/DefaultMixedHandler;

    if-nez p1, :cond_9

    return v0

    :cond_9
    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->isMinimizedPocketStudio(I)Z

    move-result p1

    if-nez p1, :cond_14

    return v0

    :cond_14
    const/4 p1, 0x1

    invoke-static {p2, p1}, Lcom/android/systemui/animation/j;->a(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_19
    if-ltz v1, :cond_70

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-static {}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->getInstance()Lcom/oplus/flexiblewindow/FlexibleWindowManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oplus/flexiblewindow/FlexibleWindowManager;->adjustEndAbsForFlexibleMinimizeIfNeed(Landroid/window/TransitionInfo$Change;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    if-eqz v4, :cond_6d

    if-eqz v3, :cond_6d

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    invoke-virtual {v2, v3}, Landroid/window/TransitionInfo$Change;->setEndAbsBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v0

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {p3, v0, v1, v3}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->reOrderLauncherTaskForFlexibleMinimize(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "adjust change for FlexibleMinimize : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "ShellTaskOrganizerExt"

    invoke-static {p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    :cond_6d
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    :cond_70
    return v0
.end method

.method public getVisibleFlexibleTaskInfo()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    return-object p0
.end method

.method public handleRunningTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 9

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-static {v0, v1}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object v0

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    :try_start_16
    const-class v3, Loplus/content/res/OplusExtraConfiguration;

    const-string v4, "getScenario"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_2c} :catch_2c

    :catch_2c
    :cond_2c
    const-string v0, "ShellTaskOrganizerExt"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-ne v1, v3, :cond_5f

    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v5, :cond_4b

    const-string/jumbo v5, "visibleFlexibleTaskInfos add:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5, v6, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v5, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v0, v2

    goto :goto_73

    :cond_4b
    const-string/jumbo v5, "visibleFlexibleTaskInfos delete inVisible:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5, v6, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->delete(I)V

    goto :goto_72

    :cond_5f
    const-string/jumbo v5, "visibleFlexibleTaskInfos delete:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v5, v6, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->delete(I)V

    :goto_72
    move v0, v4

    :goto_73
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oplus/splitscreen/SplitToggleHelper;->hasPocketStudioFeature()Z

    move-result v5

    if-nez v5, :cond_7e

    return-void

    :cond_7e
    iget-boolean v5, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsMinized:Z

    if-eqz v5, :cond_93

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnCanvas()Z

    move-result v5

    if-eqz v5, :cond_93

    iget-boolean v5, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedClearTaskInfo:Z

    if-eqz v5, :cond_93

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOldFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    iput-boolean v2, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedClearTaskInfo:Z

    :cond_93
    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnCanvas()Z

    move-result v5

    if-nez v5, :cond_a2

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnThreeFlexibleCanvas()Z

    move-result v5

    if-eqz v5, :cond_a0

    goto :goto_a2

    :cond_a0
    move v5, v2

    goto :goto_a3

    :cond_a2
    :goto_a2
    move v5, v4

    :goto_a3
    if-eqz v5, :cond_bd

    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOldFlexibleTaskInfos:Landroid/util/SparseArray;

    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->contains(I)Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-direct {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isContains()Z

    move-result v5

    if-nez v5, :cond_bd

    :cond_b5
    if-ne v1, v3, :cond_bd

    iget-boolean v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v5, :cond_bd

    iput-boolean v4, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedUpdateRecommend:Z

    :cond_bd
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v5

    if-nez v5, :cond_c6

    return-void

    :cond_c6
    iget-object v5, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getStageCoordinator()Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsMinized:Z

    if-eqz v6, :cond_fc

    if-ne v1, v4, :cond_fc

    iget-boolean v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mFirstSendRecommend:Z

    if-eqz v1, :cond_fc

    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-direct {v1, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v1, v2}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_fc

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->sendRecommendAppListToLauncher(Ljava/lang/String;Landroid/content/Context;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mFirstSendRecommend:Z

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOldFlexibleTaskInfos:Landroid/util/SparseArray;

    :cond_fc
    if-nez v0, :cond_168

    iget-boolean p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mIsSplitScreenMode:Z

    if-eqz p1, :cond_168

    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnCanvas()Z

    move-result p1

    if-eqz p1, :cond_139

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_139

    if-eqz v0, :cond_139

    iget-boolean v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedUpdateRecommend:Z

    if-eqz v1, :cond_139

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->updateRecommendAppList(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedUpdateRecommend:Z

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mOldFlexibleTaskInfos:Landroid/util/SparseArray;

    :cond_139
    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizerExt;->isOnThreeFlexibleCanvas()Z

    move-result p1

    if-eqz p1, :cond_168

    iget-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    if-eqz p1, :cond_168

    if-eqz v0, :cond_168

    iget-boolean v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedUpdateRecommend:Z

    if-eqz v1, :cond_168

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/oplus/splitscreen/util/SplitScreenUtils;->updateRecommendAppList(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mNeedUpdateRecommend:Z

    :cond_168
    return-void
.end method

.method public isOnCanvas()Z
    .registers 3

    const-string v0, "isOnCanvas size:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTaskOrganizerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public isOnThreeFlexibleCanvas()Z
    .registers 3

    const-string v0, "isOnThreeFlexibleCanvas size:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShellTaskOrganizerExt"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mVisibleFlexibleTaskInfos:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_23

    const/4 p0, 0x1

    goto :goto_24

    :cond_23
    const/4 p0, 0x0

    :goto_24
    return p0
.end method

.method public onStartingWindowAdding(Landroid/window/StartingWindowInfo;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;->onStartingWindowAdding(Landroid/window/StartingWindowInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public onStartingWindowRemoving(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    iget-object v1, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/ShellTaskOrganizerExt$StartingWindowStateChangeListener;->onStartingWindowRemoving(Landroid/window/StartingWindowRemovalInfo;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    return-void
.end method

.method public updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizerExt;->mShellExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/launcher3/model/s;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/model/s;-><init>(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
