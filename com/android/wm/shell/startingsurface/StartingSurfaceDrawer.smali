.class public Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lcom/android/wm/shell/common/annotations/ShellSplashscreenThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;,
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;,
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;,
        Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;
    }
.end annotation


# instance fields
.field private mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

.field private final mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

.field private final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

.field private final mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V
    .registers 16

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mExt:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawerExt;

    new-instance v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-direct {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    new-instance v8, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-direct {v8}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;-><init>()V

    iput-object v8, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/hardware/display/DisplayManager;

    new-instance v10, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {v10, p1, p3, p4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;-><init>(Landroid/content/Context;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object v10, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    const/4 p3, 0x0

    invoke-virtual {v9, p3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    new-instance p3, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    move-object v1, p3

    move-object v2, v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, v9

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    new-instance p3, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    invoke-direct {p3, p2, v0}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    new-instance p3, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    move-object v1, p3

    move-object v6, v8

    move-object v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    new-instance p2, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    move-object v1, p2

    move-object v2, v8

    move-object v4, v9

    move-object v5, v10

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/common/TransactionPool;)V

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    return-void
.end method

.method private onImeDrawnOnTask(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;I)V
    .registers 4

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->getRecord(I)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    move-result-object p0

    instance-of v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    if-eqz v0, :cond_b

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->hasImeSurface()Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(IZ)V

    :cond_18
    return-void
.end method


# virtual methods
.method public addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;I)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;I)V

    return-void
.end method

.method public addWindowlessStartingSurface(Landroid/window/StartingWindowInfo;)V
    .registers 5

    iget-object v0, p1, Landroid/window/StartingWindowInfo;->i:Landroid/window/TaskSnapshot;

    if-eqz v0, :cond_e

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    iget-object v2, p1, Landroid/window/StartingWindowInfo;->m:Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v1, p1, v2, v0, p0}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;)V

    goto :goto_15

    :cond_e
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    iget-object v0, p1, Landroid/window/StartingWindowInfo;->m:Landroid/view/SurfaceControl;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;->addSplashScreenStartingWindow(Landroid/window/StartingWindowInfo;Landroid/view/SurfaceControl;)V

    :goto_15
    return-void
.end method

.method public clearAllWindows()V
    .registers 5

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_e

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, -0x3a333e98

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->clearAllWindows()V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->clearAllWindows()V

    return-void
.end method

.method public copySplashScreenView(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->copySplashScreenView(I)V

    return-void
.end method

.method public estimateTaskBackgroundColor(Landroid/app/TaskInfo;)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->estimateTaskBackgroundColor(Landroid/app/TaskInfo;)I

    move-result p0

    return p0
.end method

.method public getStartingWindowBackgroundColorForTask(I)I
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->getRecord(I)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    move-result-object p0

    if-nez p0, :cond_a

    const/4 p0, 0x0

    return p0

    :cond_a
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->getBGColor()I

    move-result p0

    return p0
.end method

.method public makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/window/TaskSnapshot;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSnapshotWindowCreator:Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public onAppSplashScreenViewRemoved(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;->onAppSplashScreenViewRemoved(I)V

    return-void
.end method

.method public onImeDrawnOnTask(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->onImeDrawnOnTask(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;I)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-direct {p0, v0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->onImeDrawnOnTask(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;I)V

    return-void
.end method

.method public removeStartingWindow(Landroid/window/StartingWindowRemovalInfo;)V
    .registers 10

    iget-boolean v0, p1, Landroid/window/StartingWindowRemovalInfo;->windowlessSurface:Z

    if-eqz v0, :cond_c

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-boolean v0, p1, Landroid/window/StartingWindowRemovalInfo;->removeImmediately:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    goto :goto_2d

    :cond_c
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_26

    iget v0, p1, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    int-to-long v0, v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v3, -0x3928ac81

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_26
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowRecords:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iget-boolean v0, p1, Landroid/window/StartingWindowRemovalInfo;->removeImmediately:Z

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    :goto_2d
    return-void
.end method

.method public setSysuiProxy(Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mSplashscreenWindowCreator:Lcom/android/wm/shell/startingsurface/SplashscreenWindowCreator;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->setSysuiProxy(Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;->mWindowlessSplashWindowCreator:Lcom/android/wm/shell/startingsurface/WindowlessSplashWindowCreator;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/AbsSplashWindowCreator;->setSysuiProxy(Lcom/android/wm/shell/startingsurface/StartingSurface$SysuiProxy;)V

    return-void
.end method
