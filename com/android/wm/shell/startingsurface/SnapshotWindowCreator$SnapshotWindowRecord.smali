.class Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotWindowRecord"
.end annotation


# instance fields
.field private final mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;ILcom/android/wm/shell/common/ShellExecutor;)V
    .registers 4

    invoke-direct {p0, p2, p3}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;-><init>(ILcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    invoke-virtual {p1}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->getBackgroundColor()I

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    return-void
.end method


# virtual methods
.method public hasImeSurface()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->hasImeSurface()Z

    move-result p0

    return p0
.end method

.method public removeImmediately()V
    .registers 1

    invoke-super {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->removeImmediately()V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SnapshotWindowCreator$SnapshotWindowRecord;->mTaskSnapshotWindow:Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/TaskSnapshotWindow;->removeImmediately()V

    return-void
.end method
