.class Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StageChangeRecord"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;
    }
.end annotation


# instance fields
.field private final mChanges:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener;",
            "Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;",
            ">;"
        }
    .end annotation
.end field

.field public mContainShowFullscreenChange:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mContainShowFullscreenChange:Z

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method public addRecord(Lcom/android/wm/shell/splitscreen/StageTaskListener;ZI)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    new-instance v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;-><init>(Lcom/android/wm/shell/splitscreen/StageTaskListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1c

    :cond_13
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    :goto_1c
    if-eqz p2, :cond_24

    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mAddedTaskId:Landroid/util/IntArray;

    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    goto :goto_29

    :cond_24
    iget-object p0, v0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    invoke-virtual {p0, p3}, Landroid/util/IntArray;->add(I)V

    :goto_29
    return-void
.end method

.method public getShouldDismissedStage()Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Lcom/android/wm/shell/splitscreen/StageTaskListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_25

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->shouldDismissStage()Z

    move-result v3

    if-eqz v3, :cond_22

    iget-object v2, v2, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mStageTaskListener:Lcom/android/wm/shell/splitscreen/StageTaskListener;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    :cond_25
    return-object v0
.end method

.method public recheckDismissStage(Lcom/android/wm/shell/splitscreen/StageTaskListener;)Z
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;

    const/4 p1, 0x1

    if-nez p0, :cond_c

    return p1

    :cond_c
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mAddedTaskId:Landroid/util/IntArray;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$StageChangeRecord$StageChange;->mRemovedTaskId:Landroid/util/IntArray;

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v1

    if-ne v1, p1, :cond_2c

    invoke-virtual {v0}, Landroid/util/IntArray;->size()I

    move-result v1

    invoke-virtual {p0}, Landroid/util/IntArray;->size()I

    move-result v2

    if-ne v1, v2, :cond_2c

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/util/IntArray;->get(I)I

    move-result p0

    invoke-virtual {v0, v1}, Landroid/util/IntArray;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_2c

    return v1

    :cond_2c
    return p1
.end method
