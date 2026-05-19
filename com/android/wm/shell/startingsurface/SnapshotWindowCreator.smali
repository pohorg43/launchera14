.class Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;
    }
.end annotation


# instance fields
.field private final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->lambda$makeTaskSnapshotWindow$0(I)V

    return-void
.end method

.method private synthetic lambda$makeTaskSnapshotWindow$0(I)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(IZ)V

    return-void
.end method


# virtual methods
.method public makeTaskSnapshotWindow(Landroid/window/StartingWindowInfo;Landroid/window/TaskSnapshot;)V
    .registers 7

    iget-object v0, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(IZ)V

    iget-object v1, p1, Landroid/window/StartingWindowInfo;->k:Landroid/os/IBinder;

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v3, Lcom/android/wm/shell/startingsurface/b;

    invoke-direct {v3, p0, v0}, Lcom/android/wm/shell/startingsurface/b;-><init>(Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;I)V

    invoke-static {p1, v1, p2, v2, v3}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->create(Landroid/window/StartingWindowInfo;Landroid/os/IBinder;Landroid/window/TaskSnapshot;Lcom/android/wm/shell/common/ShellExecutor;Ljava/lang/Runnable;)Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    move-result-object p2

    if-eqz p2, :cond_29

    new-instance v1, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;

    iget-object p1, p1, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    iget-object v2, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v1, p2, p1, v2}, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;-><init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;ILcom/android/wm/shell/common/ShellExecutor;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;->mStartingWindowRecordManager:Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V

    :cond_29
    return-void
.end method
