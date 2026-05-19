.class Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StartingWindowRecordManager"
.end annotation


# static fields
.field public static final mStartingWindowRecords:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/window/StartingWindowRemovalInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowRemovalInfo;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    return-void
.end method


# virtual methods
.method public addRecord(ILcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;)V
    .registers 3

    sget-object p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public clearAllWindows()V
    .registers 6

    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v3, v0

    :goto_b
    if-ltz v3, :cond_18

    sget-object v4, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, -0x1

    goto :goto_b

    :cond_18
    :goto_18
    if-ltz v0, :cond_22

    aget v3, v1, v0

    invoke-virtual {p0, v3, v2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(IZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_18

    :cond_22
    return-void
.end method

.method public getRecord(I)Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;
    .registers 2

    sget-object p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    return-object p0
.end method

.method public recordSize()I
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    sget-object p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public removeWindow(IZ)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mTmpRemovalInfo:Landroid/window/StartingWindowRemovalInfo;

    iput p1, v0, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    invoke-virtual {p0, v0, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V

    return-void
.end method

.method public removeWindow(Landroid/window/StartingWindowRemovalInfo;Z)V
    .registers 5

    iget p0, p1, Landroid/window/StartingWindowRemovalInfo;->taskId:I

    sget-object v0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecordManager;->mStartingWindowRecords:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;

    if-eqz v1, :cond_15

    invoke-virtual {v1, p1, p2}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->removeIfPossible(Landroid/window/StartingWindowRemovalInfo;Z)Z

    move-result p1

    if-eqz p1, :cond_15

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->remove(I)V

    :cond_15
    return-void
.end method
