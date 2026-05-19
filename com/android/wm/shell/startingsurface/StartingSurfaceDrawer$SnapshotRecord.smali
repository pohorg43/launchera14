.class abstract Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SnapshotRecord"
.end annotation


# static fields
.field private static final DELAY_REMOVAL_TIME_GENERAL:J = 0x64L

.field private static final MAX_DELAY_REMOVAL_TIME_FIXED_ROTATION:J = 0xbb8L

.field private static final MAX_DELAY_REMOVAL_TIME_IME_VISIBLE:J = 0x258L


# instance fields
.field public final mActivityType:I
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation
.end field

.field public final mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field private final mScheduledRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/common/ShellExecutor;)V
    .registers 4

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;-><init>()V

    new-instance v0, Lcom/android/wm/shell/startingsurface/w;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/startingsurface/w;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Ljava/lang/Runnable;

    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mActivityType:I

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->lambda$scheduleRemove$0()V

    return-void
.end method

.method private synthetic lambda$scheduleRemove$0()V
    .registers 3

    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_c

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_c
    return-void
.end method


# virtual methods
.method public abstract hasImeSurface()Z
.end method

.method public final removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z
    .registers 3

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->removeImmediately()V

    const/4 p0, 0x1

    return p0

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->scheduleRemove(Landroid/window/StartingWindowRemovalInfo;)Z

    move-result p0

    return p0
.end method

.method public removeImmediately()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scheduleRemove(Landroid/window/StartingWindowRemovalInfo;)Z
    .registers 10

    iget v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mActivityType:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->removeImmediately()V

    return v2

    :cond_a
    iget p1, p1, Landroid/window/StartingWindowRemovalInfo;->deferRemoveForImeMode:I

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v3}, Lcom/android/wm/shell/common/ShellExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eq p1, v2, :cond_1d

    if-eq p1, v1, :cond_1a

    const-wide/16 v0, 0x64

    goto :goto_1f

    :cond_1a
    const-wide/16 v0, 0xbb8

    goto :goto_1f

    :cond_1d
    const-wide/16 v0, 0x258

    :goto_1f
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mScheduledRunnable:Ljava/lang/Runnable;

    invoke-interface {p1, v3, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    sget-boolean p1, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    const/4 v3, 0x0

    if-eqz p1, :cond_3c

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const v4, 0x1e4a015b

    const/4 v5, 0x0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {p1, v4, v2, v5, v6}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3c
    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->mRemoveExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v2, Lcom/android/wm/shell/startingsurface/v;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/startingsurface/v;-><init>(Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;)V

    invoke-interface {p1, v2, v0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    return v3
.end method
