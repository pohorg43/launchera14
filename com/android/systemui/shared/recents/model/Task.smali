.class public Lcom/android/systemui/shared/recents/model/Task;
.super Lcom/oplus/systemui/shared/system/OplusBaseTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Task"


# instance fields
.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public icon:Landroid/graphics/drawable/Drawable;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field public lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public thumbnail:Lcom/android/systemui/shared/recents/model/ThumbnailData;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;-><init>()V

    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;-><init>()V

    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    new-instance p1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {p1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Lcom/oplus/systemui/shared/system/OplusBaseTask;-><init>()V

    new-instance v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v0}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput p2, p0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iput p3, p0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iput-object p6, p0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-boolean p4, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iput-boolean p5, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iput-object p7, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 10

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iget-boolean v4, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iget-boolean v5, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iget-object v6, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-object v7, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v1, p1, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V

    iget v0, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    iput v0, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    iget p1, p1, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    iput p1, p0, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    return-void
.end method

.method public static from(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/app/TaskInfo;Z)Lcom/android/systemui/shared/recents/model/Task;
    .registers 14

    iget-object v6, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iget-boolean v0, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    const/4 v1, -0x1

    :try_start_5
    new-instance v2, Lcom/oplus/splitscreen/OplusRunningTaskInfo;

    invoke-direct {v2}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;-><init>()V

    invoke-virtual {v2, p1}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;->updateFrom(Landroid/app/TaskInfo;)V

    invoke-virtual {v2}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;->getIsSupportSplitScreenMultiWindow()Z

    move-result v0

    invoke-static {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getTaskInfoPid(Landroid/app/TaskInfo;)I

    move-result v2
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_1c

    :try_start_15
    invoke-static {p1}, Lcom/oplus/systemui/shared/system/OplusBaseTask;->getTaskInfoUid(Landroid/app/TaskInfo;)I

    move-result v1
    :try_end_19
    .catchall {:try_start_15 .. :try_end_19} :catchall_1a

    goto :goto_34

    :catchall_1a
    move-exception v3

    goto :goto_1e

    :catchall_1c
    move-exception v3

    move v2, v1

    :goto_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getIsSupportSplitScreenMultiWindow, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Task"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    move v8, v1

    move v9, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    move-result v0

    if-eqz v0, :cond_57

    sget-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    invoke-virtual {p1}, Landroid/app/TaskInfo;->getActivityType()I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_5a

    :cond_57
    const/4 v0, 0x1

    move v4, v0

    goto :goto_5b

    :cond_5a
    move v4, v1

    :goto_5b
    new-instance v10, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v6, :cond_65

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v0

    move v2, v0

    goto :goto_66

    :cond_65
    move v2, v1

    :goto_66
    if-eqz v6, :cond_6e

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v0

    move v3, v0

    goto :goto_6f

    :cond_6e
    move v3, v1

    :goto_6f
    iget-object v7, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    move-object v0, v10

    move-object v1, p0

    move v5, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/shared/recents/model/Task;-><init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;IIZZLandroid/app/ActivityManager$TaskDescription;Landroid/content/ComponentName;)V

    iput v9, v10, Lcom/oplus/systemui/shared/system/OplusBaseTask;->pid:I

    iput v8, v10, Lcom/oplus/systemui/shared/system/OplusBaseTask;->uid:I

    return-object v10
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 3

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez p1, :cond_11

    const-string p1, " dockable=N"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_11
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-eqz p1, :cond_1a

    const-string p1, " locked=Y"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1a
    const-string p1, " "

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/systemui/shared/recents/model/Task;

    if-eqz v0, :cond_12

    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-nez p1, :cond_b

    goto :goto_12

    :cond_b
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_12
    :goto_12
    const/4 p0, 0x0

    return p0
.end method

.method public getId()I
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_7

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    goto :goto_8

    :cond_7
    const/4 p0, -0x1

    :goto_8
    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    const-string p0, " "

    return-object p0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5

    goto :goto_d

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_d
    return-object v0
.end method

.method public getVisibleThumbnailRatio(Z)F
    .registers 5

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    if-eqz v0, :cond_23

    iget-object p0, p0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    if-nez p0, :cond_b

    goto :goto_23

    :cond_b
    iget v1, v0, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    if-eqz p1, :cond_21

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v2

    int-to-float p1, p1

    sub-float/2addr v1, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, p0

    int-to-float p0, p1

    sub-float/2addr v0, p0

    :cond_21
    div-float/2addr v1, v0

    return v1

    :cond_23
    :goto_23
    const/4 p0, 0x0

    return p0
.end method

.method public setLastSnapshotData(Landroid/app/ActivityManager$RecentTaskInfo;)V
    .registers 2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object p1, p1, Landroid/app/ActivityManager$RecentTaskInfo;->lastSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
