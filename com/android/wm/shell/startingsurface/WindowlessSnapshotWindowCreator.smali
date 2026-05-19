.class Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;
    }
.end annotation


# static fields
.field private static final DEFAULT_FADEOUT_DURATION:I = 0xe9


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

.field private final mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

.field private final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;Landroid/content/Context;Landroid/hardware/display/DisplayManager;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;Lcom/android/wm/shell/common/TransactionPool;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;)Lcom/android/wm/shell/common/TransactionPool;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    return-object p0
.end method


# virtual methods
.method public makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 20

    move-object v8, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v10, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const-string v0, "Windowless Snapshot "

    invoke-static {v0, v11}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p3 .. p3}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v1

    const/16 v2, 0x7f6

    const/4 v3, 0x0

    invoke-static {v9, v0, v2, v1, v3}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_1f

    return-void

    :cond_1f
    iget-object v0, v8, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v12, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;

    iget-object v2, v10, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    move-object/from16 v3, p2

    invoke-direct {v12, v2, v3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;)V

    new-instance v13, Landroid/view/SurfaceControlViewHost;

    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    const-string v3, "WindowlessSnapshotWindowCreator"

    invoke-direct {v13, v2, v0, v12, v3}, Landroid/view/SurfaceControlViewHost;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v0

    new-instance v4, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x0

    invoke-direct {v4, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v0, v10, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v6, v9, Landroid/window/StartingWindowInfo;->c:Landroid/view/InsetsState;

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v2, v8, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mSplashscreenContentDrawer:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    iget-object v3, v8, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->createViewContextWrapper(Landroid/content/Context;)Landroid/view/ContextThemeWrapper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v13, v0, v1}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, v12, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v7}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    invoke-static {v10}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    new-instance v14, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

    iget-object v3, v12, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v4

    invoke-virtual/range {p3 .. p3}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result v5

    iget v6, v10, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    move-object v0, v14

    move-object v1, p0

    move-object v2, v13

    move-object/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControl;IZILcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v0, v8, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {v0, v11, v14}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    iget-object v0, v12, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$WindowlessStartingWindow;->mChildSurface:Landroid/view/SurfaceControl;

    iget-object v1, v9, Landroid/window/StartingWindowInfo;->l:Landroid/window/IWindowlessStartingSurfaceCallback;

    if-eqz v1, :cond_93

    :try_start_90
    invoke-interface {v1, v0}, Landroid/window/IWindowlessStartingSurfaceCallback;->onSurfaceAdded(Landroid/view/SurfaceControl;)V
    :try_end_93
    .catch Landroid/os/RemoteException; {:try_start_90 .. :try_end_93} :catch_93

    :catch_93
    :cond_93
    return-void
.end method
