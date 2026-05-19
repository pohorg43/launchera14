.class public Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final LEFT_OR_TOP:F = 0.325f

.field private static final RIGHT_OR_BOTTOM:F = 0.675f

.field private static final SIZE_NUM_1:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DragAndDropPolicyExt"


# instance fields
.field private mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mContext:Landroid/content/Context;

.field private mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

.field private mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field private mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/content/Context;Landroid/app/ActivityTaskManager;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    new-instance p3, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-direct {p3, p2, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v0

    :cond_1b
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-static {}, Lcom/oplus/zoom/OplusZoomFeature;->getInstance()Lcom/oplus/zoom/OplusZoomFeature;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/zoom/OplusZoomFeature;->injectDragAndDropControllerEx(Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;)V

    return-void
.end method

.method private getTopRunningTaskForSplit(Z)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 13

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p0, :cond_c

    const/4 v2, 0x5

    invoke-virtual {p0, v2, v1}, Landroid/app/ActivityTaskManager;->getTasks(IZ)Ljava/util/List;

    move-result-object p0

    goto :goto_d

    :cond_c
    move-object p0, v0

    :goto_d
    if-eqz p0, :cond_75

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_75

    move v2, v1

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_75

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v3, :cond_29

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    goto :goto_2a

    :cond_29
    move v4, v1

    :goto_2a
    if-eqz v3, :cond_31

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    goto :goto_32

    :cond_31
    move v5, v1

    :goto_32
    if-eqz v3, :cond_37

    iget v6, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_38

    :cond_37
    const/4 v6, -0x1

    :goto_38
    sget-object v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string v8, "getTopRunningTaskForSplit() mode="

    const-string v9, ",type="

    const-string v10, ",list["

    invoke-static {v8, v4, v9, v5, v10}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v7, 0x64

    if-ne v4, v7, :cond_5b

    goto :goto_72

    :cond_5b
    if-eqz v6, :cond_5e

    goto :goto_72

    :cond_5e
    if-eqz p1, :cond_64

    const/4 v6, 0x2

    if-ne v5, v6, :cond_64

    goto :goto_72

    :cond_64
    if-nez p1, :cond_6a

    const/4 v5, 0x6

    if-ne v4, v5, :cond_6a

    goto :goto_72

    :cond_6a
    if-eqz v3, :cond_72

    iget-boolean v4, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v4, :cond_72

    move-object v0, v3

    goto :goto_75

    :cond_72
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_75
    :goto_75
    return-object v0
.end method

.method private isDragAppSupportSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 4

    if-eqz p1, :cond_25

    new-instance p0, Lcom/oplus/splitscreen/OplusRunningTaskInfo;

    invoke-direct {p0, p1}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0}, Lcom/oplus/splitscreen/OplusRunningTaskInfo;->getIsSupportSplitScreenMultiWindow()Z

    move-result p0

    if-nez p0, :cond_25

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDragAppSupportSplitScreen(), don\'t support split screen. DragTaskInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_25
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addTargetsCenterPad(Ljava/util/ArrayList;Landroid/graphics/Rect;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;",
            ">;",
            "Landroid/graphics/Rect;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result p0

    if-eqz p0, :cond_24

    new-instance p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v0, 0x5

    invoke-direct {p0, v0, p2, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-direct {p0, p2, p2, p2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance p2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-direct {p2, v0, p0, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;-><init>(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    return-void
.end method

.method public getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->getDragItemInfo()Lcom/oplus/splitscreen/SplitScreenDragIconPanel$DragItemInfo;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInSideBarTarget(Ljava/util/ArrayList;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;
    .registers 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;",
            ">;)",
            "Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;"
        }
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1b

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    iget v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_18

    return-object v1

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_1b
    return-object p0
.end method

.method public hookAllowSplit(Z)Z
    .registers 2

    invoke-virtual {p0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isSideBarDragging()Z

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    return p1
.end method

.method public hookPositionWithDeviceType(ZI)I
    .registers 3

    if-nez p1, :cond_3

    return p2

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {p0, p2}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->hookPositionWithDeviceType(Lcom/android/wm/shell/splitscreen/SplitScreenController;I)I

    move-result p0

    return p0
.end method

.method public hookTaskInfoForSplit(Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 14

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v2

    goto :goto_15

    :cond_14
    move v2, v1

    :goto_15
    if-eqz p1, :cond_1a

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    goto :goto_1b

    :cond_1a
    const/4 v3, -0x1

    :goto_1b
    if-eqz p1, :cond_22

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    goto :goto_23

    :cond_22
    move v4, v1

    :goto_23
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v5

    goto :goto_2b

    :cond_2a
    move v5, v1

    :goto_2b
    if-eqz p1, :cond_30

    iget-boolean v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    goto :goto_31

    :cond_30
    move v6, v1

    :goto_31
    const/4 v7, 0x1

    if-nez v0, :cond_39

    const/4 v8, 0x6

    if-ne v4, v8, :cond_39

    move v8, v7

    goto :goto_3a

    :cond_39
    move v8, v1

    :goto_3a
    const/16 v9, 0x64

    if-ne v4, v9, :cond_40

    move v9, v7

    goto :goto_41

    :cond_40
    move v9, v1

    :goto_41
    if-eqz v0, :cond_48

    const/4 v10, 0x2

    if-ne v5, v10, :cond_48

    move v10, v7

    goto :goto_49

    :cond_48
    move v10, v1

    :goto_49
    if-eqz v3, :cond_4c

    move v1, v7

    :cond_4c
    if-nez v9, :cond_59

    if-nez v10, :cond_59

    if-nez v1, :cond_59

    if-eqz v6, :cond_59

    if-eqz v8, :cond_57

    goto :goto_59

    :cond_57
    const/4 p0, 0x0

    goto :goto_5d

    :cond_59
    :goto_59
    invoke-direct {p0, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->getTopRunningTaskForSplit(Z)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    :goto_5d
    sget-object v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string v6, "hookTaskInfoForSplit() inSplit="

    const-string v7, ",splitVisible="

    const-string v11, ",mode="

    invoke-static {v6, v0, v7, v2, v11}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",type="

    const-string v6, ",filterZoom="

    invoke-static {v0, v4, v2, v5, v6}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v2, ",filterHome="

    const-string v4, ",filterNonDefDisplay="

    invoke-static {v0, v9, v2, v10, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    const-string v2, ",filterMulti="

    const-string v4, ",newTask="

    invoke-static {v0, v1, v2, v8, v4}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",oldTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_93

    return-object p0

    :cond_93
    return-object p1
.end method

.method public isDirectToNormal(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p1

    goto :goto_9

    :cond_8
    move p1, v0

    :goto_9
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result p0

    if-nez p0, :cond_15

    const/4 p0, 0x1

    if-ne p1, p0, :cond_15

    return p0

    :cond_15
    return v0
.end method

.method public isDragSupportSplit()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragSupportSplit()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isDragSupportZoom()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragSupportZoom()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isInSideBarRegion(Landroid/view/DragEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSideBarDragging()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isSideBarDragging()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportApkCalled(Landroid/view/DragEvent;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isSupportApkCalled(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public isZoom()Z
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isZoom()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public notifyDragAction(Landroid/view/DragEvent;IZ)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->notifyDragActionEvent(Landroid/view/DragEvent;IZ)V

    :cond_7
    return-void
.end method

.method public onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V
    .registers 5

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->onDragLocation(Landroid/view/DragEvent;ZLandroid/graphics/Rect;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)V

    :cond_7
    return-void
.end method

.method public onHandleDrop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/DragEvent;IZ)Z
    .registers 12

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isInSideBarRegion(Landroid/view/DragEvent;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p4, :cond_15

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {p0}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseWhenEndNoDrop()V

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onHandleDrop() in NoSupportMode,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_15
    if-eqz p2, :cond_20

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onHandleDrop() in sidebar region,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_20
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz p2, :cond_33

    invoke-virtual {p2, p3}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->canDropAtPosition(I)Z

    move-result p2

    if-nez p2, :cond_33

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onHandleDrop() in invalid area,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_33
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz p2, :cond_46

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->isKeyguardShowing()Z

    move-result p2

    if-eqz p2, :cond_46

    sget-object p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "onHandleDrop() keyguard showing,don\'t start app"

    invoke-static {p0, p1}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_46
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 p4, 0x5

    const/4 v1, 0x1

    if-eqz p2, :cond_c3

    invoke-virtual {p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result p2

    if-eqz p1, :cond_56

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    :cond_56
    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragMirageBgTask()Z

    move-result p1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {v2}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->getDragTaskinfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isDragAppSupportSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    sget-object v3, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onHandleDrop() activityType= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",inSplit="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isMirage="

    const-string v6, ", isDragSupportSplit="

    invoke-static {v4, p3, v5, p1, v6}, Lcom/android/launcher/k0;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v3, p3}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_c3

    if-nez p2, :cond_c3

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz p1, :cond_c3

    if-eqz v2, :cond_c3

    if-ne v0, v1, :cond_a4

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterNormal(Z)Z

    goto :goto_c3

    :cond_a4
    const/4 p2, 0x2

    if-ne v0, p2, :cond_c3

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterMinimize(Z)V

    iget-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->onStartTaskToSplit()V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->setDropAnimalStatus(Z)V

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterMinimizedType(I)I

    :cond_c3
    :goto_c3
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object p0

    invoke-virtual {p0, p4}, Lcom/oplus/splitscreen/SplitToggleHelper;->setStartType(I)V

    return v1
.end method

.method public prepareAddTargetsLandPad(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;
    .registers 9

    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_4f

    if-nez p4, :cond_b

    goto :goto_4f

    :cond_b
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p5, :cond_29

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iput p2, p3, Landroid/graphics/Rect;->bottom:I

    iput v0, p4, Landroid/graphics/Rect;->top:I

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    iput p1, p4, Landroid/graphics/Rect;->right:I

    goto :goto_34

    :cond_29
    const/4 p5, 0x2

    new-array p5, p5, [Landroid/graphics/Rect;

    aput-object p3, p5, v0

    const/4 p3, 0x1

    aput-object p4, p5, p3

    invoke-virtual {v1, p5}, Landroid/graphics/Rect;->splitVertically([Landroid/graphics/Rect;)V

    :goto_34
    if-eqz p6, :cond_4f

    int-to-float p1, p1

    const p3, 0x3ea66666  # 0.325f

    mul-float p4, p1, p3

    float-to-int p4, p4

    iput p4, p0, Landroid/graphics/Rect;->left:I

    const p4, 0x3f2ccccd  # 0.675f

    mul-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p2

    mul-float/2addr p3, p1

    float-to-int p2, p3

    iput p2, p0, Landroid/graphics/Rect;->top:I

    mul-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public prepareAddTargetsPortPad(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)Landroid/graphics/Rect;
    .registers 9

    new-instance p0, Landroid/graphics/Rect;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p3, :cond_4f

    if-nez p4, :cond_b

    goto :goto_4f

    :cond_b
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitToggleHelper;->isTabletDevice()Z

    move-result v1

    if-eqz v1, :cond_4f

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, v0, v0, p1, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    if-eqz p5, :cond_29

    iput v0, p3, Landroid/graphics/Rect;->left:I

    iput p1, p3, Landroid/graphics/Rect;->right:I

    iput v0, p3, Landroid/graphics/Rect;->top:I

    iput v0, p4, Landroid/graphics/Rect;->left:I

    iput p1, p4, Landroid/graphics/Rect;->right:I

    iput p2, p4, Landroid/graphics/Rect;->bottom:I

    goto :goto_34

    :cond_29
    const/4 p5, 0x2

    new-array p5, p5, [Landroid/graphics/Rect;

    aput-object p3, p5, v0

    const/4 p3, 0x1

    aput-object p4, p5, p3

    invoke-virtual {v1, p5}, Landroid/graphics/Rect;->splitHorizontally([Landroid/graphics/Rect;)V

    :goto_34
    if-eqz p6, :cond_4f

    int-to-float p1, p1

    const p3, 0x3ea66666  # 0.325f

    mul-float p4, p1, p3

    float-to-int p4, p4

    iput p4, p0, Landroid/graphics/Rect;->left:I

    const p4, 0x3f2ccccd  # 0.675f

    mul-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->right:I

    int-to-float p1, p2

    mul-float/2addr p3, p1

    float-to-int p2, p3

    iput p2, p0, Landroid/graphics/Rect;->top:I

    mul-float/2addr p1, p4

    float-to-int p1, p1

    iput p1, p0, Landroid/graphics/Rect;->bottom:I

    :cond_4f
    :goto_4f
    return-object p0
.end method

.method public releaseSurface()V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_a

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->releaseSurface(Ljava/lang/String;Z)Z

    :cond_a
    return-void
.end method

.method public setIsEnterNoSupportMode(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->setIsEnterNoSupportMode(Z)V

    :cond_7
    return-void
.end method

.method public setStatusDragToSplitMiniZed(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_7

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->setStatusDragToSplitMiniZed(Z)V

    :cond_7
    return-void
.end method

.method public startIntentAndTask(Landroid/app/PendingIntent;Landroid/content/Intent;ILandroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/content/Intent;)Z
    .registers 24

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v1, p6

    const/4 v2, 0x0

    if-eqz v1, :cond_17

    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    move-object v10, v1

    goto :goto_18

    :cond_17
    move-object v10, v2

    :goto_18
    const/4 v11, 0x0

    if-eqz v10, :cond_20

    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_21

    :cond_20
    move v1, v11

    :goto_21
    const/4 v3, -0x1

    if-eqz v9, :cond_27

    iget v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    const/4 v12, 0x1

    if-eqz v9, :cond_b8

    new-instance v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;

    invoke-direct {v5}, Lcom/oplus/splitscreen/applock/PendingStartInfo;-><init>()V

    const/16 v6, 0xb

    iput v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->enterSplitType:I

    iget-object v6, v9, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_47

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v13, "com.android.launcher"

    invoke-virtual {v13, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_47

    iput v11, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    goto :goto_49

    :cond_47
    iput v12, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    :goto_49
    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getMainTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v6

    iget-object v13, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getSideTopTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v13

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v14

    invoke-virtual {v14}, Lcom/oplus/splitscreen/SplitToggleHelper;->peekDivider()Lcom/android/wm/shell/splitscreen/SplitScreenController;

    move-result-object v14

    if-eqz v14, :cond_69

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getExtImpl()Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->getSplitRatio()F

    move-result v14

    iput v14, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->splitRatio:F

    :cond_69
    move/from16 v14, p3

    if-ne v14, v12, :cond_87

    if-nez v13, :cond_70

    move-object v13, v9

    :cond_70
    iget-object v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iget v6, v13, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    iput v3, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    iput v1, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    goto :goto_ae

    :cond_87
    if-nez v6, :cond_8a

    move-object v6, v9

    :cond_8a
    iget-object v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    iput-object v13, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    iget v13, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iput v13, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->userId:I

    iput v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainIntent:Landroid/content/Intent;

    iput v3, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainTaskId:I

    iput v1, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->mainUser:I

    iget v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->toType:I

    if-nez v6, :cond_ae

    invoke-virtual/range {p1 .. p1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    iput-object v6, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideIntent:Landroid/content/Intent;

    iput v3, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideTaskId:I

    iput v1, v5, Lcom/oplus/splitscreen/applock/PendingStartInfo;->sideUser:I

    :cond_ae
    :goto_ae
    invoke-static {v5, v2}, Lcom/oplus/splitscreen/applock/AppLockManager;->createExtraBundle(Lcom/oplus/splitscreen/applock/PendingStartInfo;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    const-string v5, "androidx.activity.extra"

    invoke-virtual {v8, v5, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_ba

    :cond_b8
    move/from16 v14, p3

    :goto_ba
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isInSplitScreenMode()Z

    move-result v2

    if-eqz v2, :cond_e1

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v2

    if-nez v2, :cond_e1

    :try_start_ca
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v3, p2

    move-object/from16 v7, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_ca .. :try_end_d9} :catch_da

    return v12

    :catch_da
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_e1
    invoke-virtual {v0, v9}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isDirectToNormal(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v13

    if-eqz v13, :cond_ed

    invoke-static {v7, v1}, Lcom/oplus/splitscreen/SplitScreenDragUtils;->isEncryptAndNoPassApp(Landroid/app/PendingIntent;I)Z

    move-result v1

    move v15, v1

    goto :goto_ee

    :cond_ed
    move v15, v11

    :goto_ee
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->isDragMirageBgTask()Z

    move-result v6

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    invoke-virtual {v1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->getDragTaskinfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->isDragAppSupportSplitScreen(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    if-eqz v6, :cond_105

    const-string v1, "TYPE_DRAG"

    invoke-virtual {v8, v1, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_105
    if-nez v6, :cond_135

    if-nez v15, :cond_135

    if-eqz v13, :cond_135

    if-eq v4, v3, :cond_135

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz v1, :cond_135

    if-eqz v5, :cond_135

    move v2, v4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move v12, v5

    move-object/from16 v5, p4

    move/from16 v16, v6

    move/from16 v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->moveToSplitScreen(ILandroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;I)Z

    move-result v1

    if-eqz v1, :cond_133

    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/oplus/splitscreen/SplitToggleHelper;->setEnterNormalType(I)I

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    invoke-virtual {v2, v11}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->prepareEnterNormal(Z)Z

    :cond_133
    move v11, v1

    goto :goto_138

    :cond_135
    move v12, v5

    move/from16 v16, v6

    :goto_138
    sget-object v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "startIntentAndTask() hookRes="

    const-string v3, ",isDirectNormal="

    const-string v4, ",isPrivacyApp="

    invoke-static {v2, v11, v3, v13, v4}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",isMirage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, v16

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", taskInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", isSupportSplitScreen="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oplus/splitscreen/util/LogUtil;->debugD(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v15, :cond_175

    if-nez v12, :cond_197

    :cond_175
    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mSplitScreenControllerExt:Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    if-eqz v0, :cond_197

    if-eqz v9, :cond_197

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1, v8, v9}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->startIntentToFullScreen(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v11

    invoke-static {}, Lcom/oplus/splitscreen/applock/AppLockManager;->getInstance()Lcom/oplus/splitscreen/applock/AppLockManager;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v15}, Lcom/oplus/splitscreen/applock/AppLockManager;->shouldShowToast(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_18f

    if-nez v12, :cond_197

    :cond_18f
    invoke-static {}, Lcom/oplus/splitscreen/SplitToggleHelper;->getInstance()Lcom/oplus/splitscreen/SplitToggleHelper;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/splitscreen/SplitToggleHelper;->showAppNotSupportWarn(Ljava/lang/String;I)V

    :cond_197
    return v11
.end method

.method public startZoomWindowFromDrag(Landroid/view/DragEvent;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicyExt;->mDragIconPanel:Lcom/oplus/splitscreen/SplitScreenDragIconPanel;

    if-eqz p0, :cond_d

    invoke-virtual {p0, p1}, Lcom/oplus/splitscreen/SplitScreenDragIconPanel;->startZoomWindowFromDrag(Landroid/view/DragEvent;)Z

    move-result p0

    return p0

    :cond_d
    return v0
.end method
