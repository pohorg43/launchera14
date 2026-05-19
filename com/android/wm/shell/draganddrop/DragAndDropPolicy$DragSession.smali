.class Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DragSession"
.end annotation


# instance fields
.field public final displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

.field public dragData:Landroid/content/Intent;

.field public dragItemSupportsSplitscreen:Z

.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mInitialDragData:Landroid/content/ClipData;

.field public runningTaskActType:I
    .annotation build Landroid/app/WindowConfiguration$ActivityType;
    .end annotation
.end field

.field public runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public runningTaskWinMode:I
    .annotation build Landroid/app/WindowConfiguration$WindowingMode;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    return-void
.end method


# virtual methods
.method public update()V
    .registers 7

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ac

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v3

    iput v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    invoke-static {v0}, Lcom/oplus/splitscreen/ReflectionHelper;->FlexibleWindowManager_isInFlexibleEmbedded(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_ac

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v2}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ac

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_ac

    move v3, v1

    :goto_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    if-gt v3, v4, :cond_ac

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->isRunning:Z

    if-eqz v4, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    if-ne v4, v1, :cond_a9

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    iput v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskWinMode:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskActType:I

    invoke-static {}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v3, " update isInFlexibleEmbedded "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ac

    :cond_a9
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_ac
    :goto_ac
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget v0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v0

    if-eqz v0, :cond_c1

    goto :goto_c2

    :cond_c1
    move v1, v2

    :cond_c2
    :goto_c2
    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragItemSupportsSplitscreen:Z

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->mInitialDragData:Landroid/content/ClipData;

    invoke-virtual {v0, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DragSession;->dragData:Landroid/content/Intent;

    return-void
.end method
