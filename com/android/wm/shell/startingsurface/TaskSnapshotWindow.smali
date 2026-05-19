.class public Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShellStartingWindow"

.field private static final TITLE_FORMAT:Ljava/lang/String; = "SnapshotStartingWindow for taskId="


# instance fields
.field private final mBackgroundPaint:Landroid/graphics/Paint;

.field private final mClearWindowHandler:Ljava/lang/Runnable;

.field private mHasDrawn:Z

.field private final mHasImeSurface:Z

.field private final mOrientationOnCreation:I

.field private final mSession:Landroid/view/IWindowSession;

.field private final mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;


# direct methods
.method public constructor <init>(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$TaskDescription;ILjava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object p5

    iput-object p5, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    new-instance v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-direct {v1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-virtual {v1, p5}, Lcom/android/internal/view/BaseIWindow;->setSession(Landroid/view/IWindowSession;)V

    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result p2

    if-eqz p2, :cond_23

    goto :goto_24

    :cond_23
    const/4 p2, -0x1

    :goto_24
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    iput p3, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mOrientationOnCreation:I

    iput-object p4, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->hasImeSurface()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasImeSurface:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)Lcom/android/wm/shell/common/ShellExecutor;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)I
    .registers 1

    iget p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mOrientationOnCreation:I

    return p0
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    return-void
.end method

.method public static synthetic access$300(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    return p0
.end method

.method public static synthetic access$400(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->reportDrawn()V

    return-void
.end method

.method private clearWindowSynced()V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSplashScreenExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mClearWindowHandler:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static create(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;Ljava/lang/Runnable;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;
    .registers 34

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-ne v3, v6, :cond_1c

    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v1, 0x376e4b2f

    invoke-static {v0, v1, v4, v5, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1b
    return-object v5

    :cond_1c
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    const/4 v6, 0x1

    if-eqz v3, :cond_32

    int-to-long v7, v2

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v9, 0x3dd969c7

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v10, v4

    invoke-static {v3, v9, v6, v5, v10}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_32
    iget-object v7, v0, Landroid/window/StartingWindowInfo;->c:Landroid/view/InsetsState;

    const-string v3, "SnapshotStartingWindow for taskId="

    invoke-static {v3, v2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/HardwareBuffer;->getFormat()I

    move-result v8

    move-object/from16 v9, p1

    invoke-static {v0, v2, v3, v8, v9}, Landroid/window/SnapshotDrawerUtils;->createLayoutParameters(Landroid/window/StartingWindowInfo;Ljava/lang/CharSequence;IILandroid/os/IBinder;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    const-string v3, "ShellStartingWindow"

    if-nez v2, :cond_53

    const-string v0, "TaskSnapshotWindow no layoutParams"

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    :cond_53
    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v8

    new-instance v15, Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Point;->x:I

    iget v8, v8, Landroid/graphics/Point;->y:I

    invoke-direct {v15, v4, v4, v9, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual/range {p2 .. p2}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v19

    iget v13, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v8

    new-instance v24, Landroid/view/SurfaceControl;

    invoke-direct/range {v24 .. v24}, Landroid/view/SurfaceControl;-><init>()V

    new-instance v14, Landroid/window/ClientWindowFrames;

    invoke-direct {v14}, Landroid/window/ClientWindowFrames;-><init>()V

    new-instance v22, Landroid/view/InsetsSourceControl$Array;

    invoke-direct/range {v22 .. v22}, Landroid/view/InsetsSourceControl$Array;-><init>()V

    new-instance v23, Landroid/util/MergedConfiguration;

    invoke-direct/range {v23 .. v23}, Landroid/util/MergedConfiguration;-><init>()V

    invoke-static {v1}, Landroid/window/SnapshotDrawerUtils;->getOrCreateTaskDescription(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object v18

    new-instance v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-object/from16 v16, v1

    move-object/from16 v17, p2

    move-object/from16 v20, p4

    move-object/from16 v21, p3

    invoke-direct/range {v16 .. v21}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;-><init>(Landroid/window/TaskSnapshot;Landroid/app/ActivityManager$TaskDescription;ILjava/lang/Runnable;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v12, v1, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    new-instance v21, Landroid/view/InsetsState;

    invoke-direct/range {v21 .. v21}, Landroid/view/InsetsState;-><init>()V

    new-instance v16, Landroid/view/InputChannel;

    invoke-direct/range {v16 .. v16}, Landroid/view/InputChannel;-><init>()V

    new-array v6, v6, [F

    const/high16 v9, 0x3f800000  # 1.0f

    aput v9, v6, v4

    const-wide/16 v10, 0x20

    :try_start_a3
    const-string v4, "TaskSnapshot#addToDisplay"

    invoke-static {v10, v11, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/16 v4, 0x8

    iget v9, v0, Landroid/window/StartingWindowInfo;->j:I

    new-instance v18, Landroid/graphics/Rect;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Rect;-><init>()V
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_a3 .. :try_end_b1} :catch_e6

    move/from16 v17, v9

    move-object v9, v8

    move-wide/from16 p3, v10

    move-object v10, v12

    move-object v11, v2

    move-object/from16 v25, v12

    move v12, v4

    move-object v4, v14

    move/from16 v14, v17

    move-object/from16 v26, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v21

    move-object/from16 v17, v22

    move-object/from16 v19, v6

    :try_start_c8
    invoke-interface/range {v9 .. v19}, Landroid/view/IWindowSession;->addToDisplay(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIILandroid/view/InputChannel;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/graphics/Rect;[F)I

    move-result v6

    invoke-static/range {p3 .. p4}, Landroid/os/Trace;->traceEnd(J)V

    if-gez v6, :cond_f0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed to add snapshot starting window res="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catch Landroid/os/RemoteException; {:try_start_c8 .. :try_end_e5} :catch_ed

    return-object v5

    :catch_e6
    move-wide/from16 p3, v10

    move-object/from16 v25, v12

    move-object v4, v14

    move-object/from16 v26, v15

    :catch_ed
    invoke-direct {v1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    :cond_f0
    move-object/from16 v6, v25

    invoke-virtual {v6, v1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;->setOuter(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;)V

    :try_start_f5
    const-string v9, "TaskSnapshot#relayout"

    move-wide/from16 v14, p3

    invoke-static {v14, v15, v9}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v12, -0x1

    const/4 v13, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    new-instance v25, Landroid/os/Bundle;

    invoke-direct/range {v25 .. v25}, Landroid/os/Bundle;-><init>()V

    move-object v9, v8

    move-object v10, v6

    move-object v11, v2

    move-wide/from16 v27, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v16, v18

    move/from16 v17, v19

    move-object/from16 v18, v4

    move-object/from16 v19, v23

    move-object/from16 v20, v24

    move-object/from16 v23, v25

    invoke-interface/range {v9 .. v23}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;Landroid/view/WindowManager$LayoutParams;IIIIIILandroid/window/ClientWindowFrames;Landroid/util/MergedConfiguration;Landroid/view/SurfaceControl;Landroid/view/InsetsState;Landroid/view/InsetsSourceControl$Array;Landroid/os/Bundle;)I

    invoke-static/range {v27 .. v28}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_126
    .catch Landroid/os/RemoteException; {:try_start_f5 .. :try_end_126} :catch_15e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create TaskSnapshotWindow snapshot frame:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v26

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ", tmpFrames:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v4, Landroid/window/ClientWindowFrames;->frame:Landroid/graphics/Rect;

    const/4 v8, 0x1

    move-object/from16 v0, p0

    move-object v9, v1

    move-object v1, v2

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    move-object v4, v6

    move-object v6, v7

    move v7, v8

    invoke-static/range {v0 .. v7}, Landroid/window/SnapshotDrawerUtils;->drawSnapshotOnSurface(Landroid/window/StartingWindowInfo;Landroid/view/WindowManager$LayoutParams;Landroid/view/SurfaceControl;Landroid/window/TaskSnapshot;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/InsetsState;Z)V

    const/4 v0, 0x1

    iput-boolean v0, v9, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    invoke-direct {v9}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->reportDrawn()V

    return-object v9

    :catch_15e
    move-object v9, v1

    invoke-direct {v9}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    const-string v0, "Failed to relayout snapshot starting window"

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private reportDrawn()V
    .registers 11

    const-string/jumbo v0, "setBinderThreadUxFlag"

    :try_start_3
    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v6

    invoke-static {v1, v0, v3, v7}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    const/4 v7, 0x0

    const v9, 0x7fffffff

    invoke-interface {v1, v3, v7, v9}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;Landroid/view/SurfaceControl$Transaction;I)V

    invoke-static {}, Lcom/oplus/uifirst/OplusUIFirstManager;->getInstance()Lcom/oplus/uifirst/OplusUIFirstManager;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Class;

    aput-object v4, v3, v5

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v6

    invoke-static {v1, v0, v3, v2}, Lcom/android/wm/shell/util/ReflectionUtils;->methodInvoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_4a} :catch_4b

    goto :goto_4e

    :catch_4b
    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->clearWindowSynced()V

    :goto_4e
    return-void
.end method


# virtual methods
.method public getBackgroundColor()I
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p0

    return p0
.end method

.method public hasImeSurface()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasImeSurface:Z

    return p0
.end method

.method public removeImmediately()V
    .registers 8

    :try_start_0
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mHasDrawn:Z

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v2, 0x489c755e

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mSession:Landroid/view/IWindowSession;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->mWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow$Window;

    invoke-interface {v0, p0}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_21} :catch_21

    :catch_21
    return-void
.end method
