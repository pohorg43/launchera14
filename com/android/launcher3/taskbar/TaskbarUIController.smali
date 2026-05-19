.class public Lcom/android/launcher3/taskbar/TaskbarUIController;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;


# instance fields
.field public mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarUIController;

    invoke-direct {v0}, Lcom/android/launcher3/taskbar/TaskbarUIController;-><init>()V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarUIController;->DEFAULT:Lcom/android/launcher3/taskbar/TaskbarUIController;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUIController;->lambda$hideAllAppsAndPopContainer$0()V

    return-void
.end method

.method private static synthetic lambda$hideAllAppsAndPopContainer$0()V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->getInstance()Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/filemanager/FileManagerUtils;->closeFileManager()V

    return-void
.end method


# virtual methods
.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 5
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    const-string p0, "%sTaskbarUIController: using an instance of %s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAppIconsForEdu()Ljava/util/stream/Stream;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object p0

    return-object p0
.end method

.method public getRootView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarActivityContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDragLayer()Lcom/android/launcher3/taskbar/TaskbarDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public hideAllAppsAndPopContainer()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v0, v0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarAllAppsController:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->hideImmediately()V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 v0, 0x1

    const v1, 0x10001

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    sget-object v0, Lcom/android/launcher3/taskbar/g1;->b:Lcom/android/launcher3/taskbar/g1;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public isHotseatIconOnTopWhenAligned()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isIconAlignedWithHotseat()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public isTaskbarTouchable()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroy()V
    .registers 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    return-void
.end method

.method public onExpandPip()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    if-eqz p0, :cond_15

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->hasAnyFlag(I)Z

    move-result v0

    if-eqz v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->updateStateForFlag(IZ)V

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarStashController;->applyState()V

    :cond_15
    return-void
.end method

.method public onStashedInAppChanged()V
    .registers 1

    return-void
.end method

.method public onTaskbarIconLaunched(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    return-void
.end method

.method public setSystemGestureInProgress(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarUIController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarStashController;->setSystemGestureInProgress(Z)V

    return-void
.end method

.method public supportsVisualStashing()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method
