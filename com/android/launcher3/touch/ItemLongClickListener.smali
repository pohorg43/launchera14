.class public Lcom/android/launcher3/touch/ItemLongClickListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

.field public static final INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

.field private static final TAG:Ljava/lang/String; = "ItemLongClickListener"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/touch/e;->a:Lcom/android/launcher3/touch/e;

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_WORKSPACE:Landroid/view/View$OnLongClickListener;

    sget-object v0, Lcom/android/launcher3/touch/f;->a:Lcom/android/launcher3/touch/f;

    sput-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onWorkspaceItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(Landroid/view/View;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/touch/ItemLongClickListener;->onAllAppsItemLongClick(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V
    .registers 6

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ltz v0, :cond_1d

    invoke-static {p1}, Lcom/android/launcher3/folder/Folder;->getOpen(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    goto :goto_1d

    :cond_19
    invoke-virtual {v0, p0, p3}, Lcom/android/launcher3/folder/Folder;->startDrag(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragOptions;)Z

    return-void

    :cond_1d
    :goto_1d
    new-instance v0, Lcom/android/launcher3/CellLayout$CellInfo;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/CellLayout$CellInfo;-><init>(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/OplusWorkspace;->startDrag(Lcom/android/launcher3/CellLayout$CellInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return-void
.end method

.method public static canStartDrag(Lcom/android/launcher3/Launcher;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/dragndrop/DragController;->isDragging()Z

    move-result v1

    if-eqz v1, :cond_16

    return v0

    :cond_16
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->isGlobalDragging()Z

    move-result p0

    if-eqz p0, :cond_21

    return v0

    :cond_21
    const/4 p0, 0x1

    return p0
.end method

.method private static onAllAppsItemLongClick(Landroid/view/View;)Z
    .registers 6

    const-string v0, "Main"

    const-string/jumbo v1, "onAllAppsItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->cancelLongPress()V

    instance-of v0, p0, Lcom/android/launcher3/views/BubbleTextHolder;

    if-eqz v0, :cond_15

    check-cast p0, Lcom/android/launcher3/views/BubbleTextHolder;

    invoke-interface {p0}, Lcom/android/launcher3/views/BubbleTextHolder;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_25

    return v2

    :cond_25
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_36

    sget-object v1, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_36

    return v2

    :cond_36
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v1

    if-eqz v1, :cond_41

    return v2

    :cond_41
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAllAppsViewInSelectState()Z

    move-result v1

    if-eqz v1, :cond_48

    return v2

    :cond_48
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    if-eqz v1, :cond_66

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v3

    if-eqz v3, :cond_66

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/COUIRecyclerView;->getScrollState()I

    move-result v1

    if-eqz v1, :cond_66

    const-string p0, "ItemLongClickListener"

    const-string v0, "all apps recyclerView not in SCROLL_STATE_IDLE, do not start drag!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_66
    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Lcom/android/launcher/download/DownloadAppsManager;->longPressInstallingPrompts(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_75

    return v2

    :cond_75
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_8e

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    :cond_8e
    sget-object v3, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ALLAPPS_ITEM_LONG_PRESSED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-interface {v1, v3}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/touch/ItemLongClickListener$1;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/touch/ItemLongClickListener$1;-><init>(Landroid/view/View;Lcom/android/launcher3/dragndrop/DragController;)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/dragndrop/DragController;->addDragListener(Lcom/android/launcher3/dragndrop/DragController$DragListener;)V

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    new-instance v3, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v3}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    iget v4, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconSizePx:I

    int-to-float v4, v4

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    div-float/2addr v4, v1

    iput v4, v3, Lcom/android/launcher3/dragndrop/DragOptions;->intrinsicIconScaleFactor:F

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v1, p0, v0, v3}, Lcom/android/launcher3/Workspace;->beginDragShared(Landroid/view/View;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return v2
.end method

.method private static onWorkspaceItemLongClick(Landroid/view/View;)Z
    .registers 9

    const-string v0, "Main"

    const-string/jumbo v1, "onWorkspaceItemLongClick"

    invoke-static {v0, v1}, Lcom/android/launcher3/testing/TestLogging;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->canStartDrag(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    const-string v2, "ItemLongClickListener"

    const/4 v3, 0x0

    if-nez v1, :cond_2e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can\'t start drag, not responding long click "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2e
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfo;

    if-nez v1, :cond_4b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is not ItemInfo, not responding long click "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4b
    invoke-static {p0, v0}, Lcom/android/launcher3/touch/ItemLongClickListener;->oplusWorkspaceItemLongClick(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z

    move-result v1

    if-nez v1, :cond_67

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "oplusWorkspaceItemLongClick is false, not responding long click "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_67
    instance-of v1, p0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v1, :cond_89

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-static {v1}, Lcom/android/launcher3/folder/big/FolderManager;->longClickEnable(Lcom/android/launcher3/folder/big/BigFolderIcon;)Z

    move-result v1

    if-nez v1, :cond_89

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "longClickEnable disable for bigFolder = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_89
    instance-of v1, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v1, :cond_a2

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->isBatchDropping()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_a2

    const-string v4, "We need to terminate the Batch dropping animation immediately!!!"

    invoke-static {v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/folder/OplusFolderIcon;->endBatchDropping()V

    :cond_a2
    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_c8

    move-object v4, v0

    check-cast v4, Lcom/android/launcher/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v4

    if-nez v4, :cond_c8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Floating animate is not finish, not responding long click "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_c8
    instance-of v4, p0, Lcom/android/launcher3/BubbleTextView;

    const/4 v5, 0x1

    if-eqz v4, :cond_112

    if-eqz v1, :cond_112

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/views/FloatingIconViewContainer;->isFinished()Z

    move-result v6

    if-nez v6, :cond_112

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/views/FloatingIconViewContainer;->getMOriginalView()Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/BubbleTextView;

    if-eqz v7, :cond_112

    sget-object v7, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v7}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v7, v6}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->releaseIconSurface(Landroid/view/View;)V

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/views/FloatingIconViewContainer;->finish()V

    instance-of v1, v6, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v1, :cond_112

    check-cast v6, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v6}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getIsIconVisible()Z

    move-result v1

    if-nez v1, :cond_112

    iget-object v1, v6, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, v5, v3}, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;->forceHideDot(ZZ)V

    invoke-virtual {v6, v5}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_112
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->setWaitingForResult(Lcom/android/launcher3/util/PendingRequestArgs;)V

    move-object v1, v0

    check-cast v1, Lcom/android/launcher/Launcher;

    invoke-static {v1, p0}, Lcom/android/launcher3/hotseat/HotseatDragController;->isInterceptDragDuringExpandAnimating(Lcom/android/launcher/Launcher;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_127

    const-string p0, "Hotseat_expand"

    const-string v0, "hotseat expand animating,not responding long click"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_127
    const v1, 0x7f0a064d

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_145

    invoke-virtual {p0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_145

    const-string/jumbo p0, "onWorkspaceItemLongClick is skipped for area widget is transforming"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_145
    if-eqz v4, :cond_156

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->isCallOnClick()Z

    move-result v1

    if-eqz v1, :cond_156

    const-string p0, "intercept onClick, not responding long click"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_156
    invoke-static {v0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher/download/DownloadAppsManager;->longPressInstallingPrompts(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_165

    return v3

    :cond_165
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDefaultWorkspaceDragOptions()Lcom/android/launcher3/dragndrop/DragOptions;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/touch/ItemLongClickListener;->beginDrag(Landroid/view/View;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/dragndrop/DragOptions;)V

    return v5
.end method

.method private static oplusWorkspaceItemLongClick(Landroid/view/View;Lcom/android/launcher3/Launcher;)Z
    .registers 7

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v1

    const-string v2, "ItemLongClickListener"

    const/4 v3, 0x0

    if-nez v1, :cond_12

    const-string p0, "Launcher has not been resumed! ignored item long click!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_12
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {v1, v4}, Lcom/android/common/util/OplusLauncherDbUtils;->checkLauncherLockedAndToast(Landroid/content/Context;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_32

    return v3

    :cond_32
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getToggleBarManager()Lcom/android/launcher/togglebar/ToggleBarManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/ToggleBarManager;->getTopState()Lcom/android/launcher/togglebar/state/ToggleBarBaseState;

    move-result-object v1

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Lcom/android/launcher/togglebar/state/ToggleBarBaseState;->supportIconSelected()Z

    move-result v1

    if-nez v1, :cond_43

    return v3

    :cond_43
    invoke-static {p1}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v1

    if-eqz v1, :cond_4e

    return v3

    :cond_4e
    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_59

    return v3

    :cond_59
    move-object v0, p1

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isLoadingViewShowing()Z

    move-result v0

    if-eqz v0, :cond_63

    return v3

    :cond_63
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/statemanager/StateManager;->getState()Lcom/android/launcher3/statemanager/BaseState;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherState;

    sget v1, Lcom/android/launcher3/LauncherState;->FLAG_WORKSPACE_ICONS_CAN_BE_DRAGGED:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherState;->hasFlag(I)Z

    move-result v0

    if-nez v0, :cond_76

    return v3

    :cond_76
    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_85

    const-string/jumbo p0, "onWorkspaceItemLongClick: is OVERVIEW state."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_85
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getAnimatedView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_90

    return v3

    :cond_90
    invoke-static {p1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenFolder(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    if-eqz p1, :cond_b0

    invoke-virtual {p1}, Lcom/android/launcher3/folder/Folder;->getInfo()Lcom/android/launcher3/model/data/FolderInfo;

    move-result-object p1

    if-eqz p1, :cond_b0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getViewId()I

    move-result p1

    if-eq p0, p1, :cond_b0

    const-string p0, "Don`t long click view on other container."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b0
    const/4 p0, 0x1

    return p0
.end method
