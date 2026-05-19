.class Lcom/android/launcher3/folder/LauncherDelegate$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/LauncherDelegate;->replaceFolderWithFinalItem(Lcom/android/launcher3/folder/Folder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher3/folder/LauncherDelegate;

.field public final synthetic val$callers:Ljava/lang/String;

.field public final synthetic val$folder:Lcom/android/launcher3/folder/Folder;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/folder/LauncherDelegate;Lcom/android/launcher3/folder/Folder;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    iput-object p2, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iput-object p3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$callers:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    iget-object v0, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getItemCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    const/4 v10, 0x1

    if-gt v0, v10, :cond_15c

    const/4 v2, 0x0

    const/4 v11, 0x0

    if-ne v0, v10, :cond_4a

    iget-object v2, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v4, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/Launcher;->getCellLayout(II)Lcom/android/launcher3/CellLayout;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v4}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/Launcher;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v4}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v4

    iget v6, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    iget v7, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    iget v8, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    iget v9, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellY:I

    move-object v5, v3

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/model/ModelWriter;->addOrMoveItemInDatabase(Lcom/android/launcher3/model/data/ItemInfo;IIII)V

    move-object v12, v2

    move-object v13, v3

    goto :goto_4c

    :cond_4a
    move-object v12, v2

    move-object v13, v12

    :goto_4c
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    if-eqz v2, :cond_5b

    iget-object v2, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->stopAppStoreContentRecommend(Landroid/content/Context;Lcom/android/launcher3/model/data/FolderInfo;)V

    :cond_5b
    iget-object v2, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v2}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v3, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    const/4 v5, 0x1

    if-nez v0, :cond_6c

    move v6, v10

    goto :goto_6d

    :cond_6c
    move v6, v11

    :goto_6d
    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$callers:Ljava/lang/String;

    move-object v4, v1

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZLjava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v3, v2, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v4, v3, Lcom/android/launcher3/DropTarget;

    if-eqz v4, :cond_84

    iget-object v2, v2, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    check-cast v3, Lcom/android/launcher3/DropTarget;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/dragndrop/DragController;->removeDropTarget(Lcom/android/launcher3/DropTarget;)V

    :cond_84
    const/16 v2, -0x65

    if-eqz v12, :cond_100

    invoke-static {v1}, Lcom/android/launcher3/folder/big/FolderManager;->isBigFolderInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_96

    iput v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iput v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    iput v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanX:I

    iput v10, v1, Lcom/android/launcher3/model/data/ItemInfo;->minSpanY:I

    :cond_96
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v3

    if-eqz v3, :cond_ca

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result v3

    if-eqz v3, :cond_ca

    iget v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v2, :cond_ca

    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataNormalItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v4}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/hotseat/subscribe/SubscribeUtils;->getBgDataSubscribeAndDividerItemCount(Lcom/android/launcher3/Launcher;)I

    move-result v4

    add-int/2addr v3, v4

    iget v5, v1, Lcom/android/launcher3/model/data/ItemInfo;->cellX:I

    add-int/2addr v5, v10

    sub-int/2addr v3, v5

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    :cond_ca
    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->sOPlusFolderExtV2:Lcom/android/launcher3/folder/IFolderExt;

    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$callers:Ljava/lang/String;

    invoke-interface {v1, v12, v3}, Lcom/android/launcher3/folder/IFolderExt;->addInScreen(Landroid/view/View;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_f0

    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object v1

    invoke-virtual {v1, v12, v11}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->selectViewIfNessary(Landroid/view/View;Z)V

    :cond_f0
    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v3, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v3}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/folder/big/FolderManager;->fillEmptyCellIfNeed(Lcom/android/launcher3/folder/FolderIcon;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v12}, Landroid/view/View;->requestFocus()Z

    :cond_100
    if-eqz v13, :cond_133

    iget-object v1, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->this$0:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-static {v1}, Lcom/android/launcher3/folder/LauncherDelegate;->access$000(Lcom/android/launcher3/folder/LauncherDelegate;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-interface {v1, v13}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/folder/LauncherDelegate$1;->val$folder:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->getLogInstanceId()Ljava/util/Optional;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/launcher3/folder/b;

    invoke-direct {v3, v1}, Lcom/android/launcher3/folder/b;-><init>(Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;)V

    invoke-virtual {p0, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_FOLDER_CONVERTED_TO_ICON:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {p0, v1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_133
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isSupportDockerExpandScreen()Z

    move-result p0

    if-eqz p0, :cond_15c

    if-ne v0, v10, :cond_15c

    if-eqz v13, :cond_15c

    iget p0, v13, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne p0, v2, :cond_15c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "hotseat folder convert to item,check and update hotseat recent task finalItem:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Hotseat_expand"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x320

    invoke-static {v13, v10, v0, v1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->checkAndRemoveDuplicateItem(Lcom/android/launcher3/model/data/ItemInfo;ZJ)V

    :cond_15c
    return-void
.end method
