.class public Lcom/android/launcher3/folder/OplusFolderPagedView;
.super Lcom/android/launcher3/folder/FolderPagedView;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusFolderPagedView"


# instance fields
.field private final mLoc:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/folder/FolderPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/folder/OplusFolderPagedView;->mLoc:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mFolderPageSpacingPx:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    return-void
.end method

.method private calculateGridSizeColor(IIIIII)[I
    .registers 7

    const/4 p0, 0x2

    new-array p0, p0, [I

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-lt p1, p6, :cond_8

    goto :goto_11

    :cond_8
    div-int p5, p1, p4

    rem-int/2addr p1, p4

    if-lez p1, :cond_f

    move p1, p2

    goto :goto_10

    :cond_f
    move p1, p3

    :goto_10
    add-int/2addr p5, p1

    :goto_11
    aput p4, p0, p3

    aput p5, p0, p2

    return-object p0
.end method

.method private getSelectedViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/BubbleTextView;
    .registers 5

    const-string v0, "OplusFolderPagedView"

    const/4 v1, 0x0

    if-nez p1, :cond_b

    const-string p0, "getSelectedViewByItemInfo: itemInfo is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_b
    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->getSelectedViewList()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_17

    const-string p0, "getSelectedViewByItemInfo: selected list is empty"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_17
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_1b

    return-object v0

    :cond_2e
    return-object v1
.end method

.method private getSelectedViewList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/BubbleTextView;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_25

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_25

    :cond_23
    const/4 p0, 0x0

    return-object p0

    :cond_25
    :goto_25
    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getBatchDragViewManager()Lcom/android/launcher/batchdrag/BatchDragViewManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/batchdrag/BatchDragViewManager;->getSelectedViewList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$createAndAddNewPage$0(Landroid/view/View;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    move-object p1, p0

    check-cast p1, Lcom/android/launcher3/folder/OplusFolder;

    iget-boolean p1, p1, Lcom/android/launcher3/folder/OplusFolder;->mIsLongPressEventOccur:Z

    if-nez p1, :cond_d

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$notifyPageSwitchListener$1(Lcom/android/launcher3/Alarm;)V
    .registers 4

    const-string p1, "OplusFolderPagedView"

    const-string/jumbo v0, "notifyPageSwitchListener: folder exposed "

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher/folder/download/ReportController;->Companion:Lcom/android/launcher/folder/download/ReportController$Companion;

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    check-cast v1, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0, v1}, Lcom/android/launcher/folder/download/ReportController;->findCurrentPageItems(Lcom/android/launcher3/folder/OplusFolder;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/ReportController$Companion;->getSInstance()Lcom/android/launcher/folder/download/ReportController;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result p0

    invoke-virtual {p1, p0, v0}, Lcom/android/launcher/folder/download/ReportController;->reportAppsExposed(ILjava/util/List;)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/folder/OplusFolderPagedView;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->lambda$createAndAddNewPage$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/folder/OplusFolderPagedView;Lcom/android/launcher3/Alarm;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->lambda$notifyPageSwitchListener$1(Lcom/android/launcher3/Alarm;)V

    return-void
.end method

.method private removeSelectedViewFromChildren()V
    .registers 8

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->getSelectedViewList()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_f

    const-string p0, "OplusFolderPagedView"

    const-string/jumbo v0, "removeSelectedViewFromChildren: selected list is empty"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_15
    if-ltz v1, :cond_40

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_27
    if-ltz v4, :cond_3d

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/launcher3/BubbleTextView;

    if-eqz v6, :cond_3a

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    invoke-virtual {v2, v5}, Lcom/android/launcher3/CellLayout;->removeView(Landroid/view/View;)V

    :cond_3a
    add-int/lit8 v4, v4, -0x1

    goto :goto_27

    :cond_3d
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    :cond_40
    return-void
.end method


# virtual methods
.method public applyOverScroll()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public createAndAddNewPage()Lcom/android/launcher3/CellLayout;
    .registers 8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    if-eqz v1, :cond_18

    instance-of v1, v1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v1, :cond_18

    new-instance v1, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/taskbar/TaskBarFolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    goto :goto_2a

    :cond_18
    new-instance v1, Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-direct {v1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;-><init>(Lcom/android/launcher3/InvariantDeviceProfile;)V

    iput-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_2a

    iget-object v1, v1, Lcom/android/launcher3/folder/FolderIcon;->mPreviewVerifier:Lcom/android/launcher3/folder/FolderGridOrganizer;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/folder/FolderGridOrganizer;->updateFolderGridOrganizer(Lcom/android/launcher3/InvariantDeviceProfile;)V

    :cond_2a
    :goto_2a
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d012a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    iget v3, v1, Lcom/android/launcher3/OplusDeviceProfile;->mFolderPageSpacingPx:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    iget v3, v1, Lcom/android/launcher3/DeviceProfile;->folderCellWidthPx:I

    iget v5, v1, Lcom/android/launcher3/DeviceProfile;->folderCellHeightPx:I

    invoke-virtual {v2, v3, v5}, Lcom/android/launcher3/CellLayout;->setCellDimensions(II)V

    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/CellLayout;->setInvertIfRtl(Z)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v5

    if-eqz v5, :cond_7b

    const-string v5, "OplusFolderPagedView"

    const-string v6, "The parent container does not clip subviews in simple mode."

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    :cond_7b
    iget v5, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numFolderRows:I

    invoke-virtual {v2, v5, v0}, Lcom/android/launcher3/CellLayout;->setGridSize(II)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_a2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_a2

    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f070856

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {v2, v4, v4, v4, v0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_a2
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0, v4}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isProtectAppsFolder(Lcom/android/launcher3/folder/Folder;)Z

    move-result v0

    if-nez v0, :cond_c0

    new-instance v0, Lcom/android/common/util/b1;

    invoke-direct {v0, p0}, Lcom/android/common/util/b1;-><init>(Lcom/android/launcher3/folder/OplusFolderPagedView;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/android/launcher3/folder/OplusFolderPagedView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/folder/OplusFolderPagedView$1;-><init>(Lcom/android/launcher3/folder/OplusFolderPagedView;)V

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :cond_c0
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-eqz v0, :cond_e8

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-nez v0, :cond_e8

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07084c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    iget-object v5, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/android/common/config/ScreenInfo;->getNavigationBarHeight(Landroid/content/Context;Z)I

    move-result v3

    sub-int/2addr v4, v3

    invoke-virtual {v2, v0, v1, v0, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_110

    :cond_e8
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result v0

    if-eqz v0, :cond_110

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    if-eqz v0, :cond_110

    iget-boolean v0, v1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-nez v0, :cond_110

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v0

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070855

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_110
    :goto_110
    const/4 v0, -0x1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p0, v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-object v2
.end method

.method public createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;
    .registers 10

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/OplusFolderPagedView;->getSelectedViewByItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_22

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Landroid/view/ViewGroup;

    if-eqz p1, :cond_21

    check-cast p0, Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_21
    return-object v0

    :cond_22
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-eqz v0, :cond_77

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_77

    iget-object v1, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v1, :cond_77

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    if-eqz v0, :cond_77

    instance-of v0, v1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_77

    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v1, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->isExist(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z

    move-result v1

    if-nez v1, :cond_77

    new-instance v1, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->folderChildIconSizePx:I

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    iget-object v6, v0, Lcom/android/launcher3/folder/FolderIcon;->mPreviewItemManager:Lcom/android/launcher3/folder/PreviewItemManager;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/download/DownloadProgressPreviewDrawable;-><init>(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfoWithIcon;ILcom/android/launcher3/folder/PreviewItemManager;Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/FolderInfo;->mDownloadCache:Lcom/android/launcher3/folder/FolderDownloadDrawableCache;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/folder/FolderDownloadDrawableCache;->addDownloadDrawable(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Lcom/android/launcher/download/DownloadProgressPreviewDrawable;)V

    :cond_77
    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->createNewView(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public findNearestArea(II)I
    .registers 13

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v8

    const/4 v9, 0x1

    if-nez v8, :cond_13

    iget p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    sub-int/2addr p0, v9

    return p0

    :cond_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    sub-int v3, p1, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p1

    sub-int v4, p2, p1

    const/4 v5, 0x1

    const/4 v6, 0x1

    sget-object p1, Lcom/android/launcher3/folder/FolderPagedView;->sTmpArray:[I

    move-object v2, v8

    move-object v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/CellLayout;->findNearestArea(IIII[I)[I

    iget-object p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {p2}, Lcom/android/launcher3/folder/Folder;->isLayoutRtl()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_3b

    invoke-virtual {v8}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result p2

    aget v3, p1, v2

    sub-int/2addr p2, v3

    sub-int/2addr p2, v9

    aput p2, p1, v2

    :cond_3b
    iget p2, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    sub-int/2addr p2, v9

    mul-int/2addr v1, v0

    aget v0, p1, v9

    iget p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    aget p0, p1, v2

    add-int/2addr v0, p0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public getFooterUpLiftHeight()I
    .registers 2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07086e

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    return p0
.end method

.method public getMaxItemsInFolder()I
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getMaxFolderPages()I

    move-result v0

    mul-int/2addr v0, p0

    return v0
.end method

.method public getOrganizer()Lcom/android/launcher3/folder/FolderGridOrganizer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    return-object p0
.end method

.method public handleMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    if-eqz v0, :cond_1d

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/OplusFolderPagedView;->mLoc:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/views/BaseDragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    :cond_1d
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/folder/OplusFolderPagedView;->mLoc:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-super {p0, p1}, Lcom/android/launcher3/OplusDragScrollerPagedView;->handleMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return p0
.end method

.method public isFolderOverScroll()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public isRecommendFolderPageView(Landroid/view/View;)Z
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/PagedView;->isRecommendFolderPageView(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_16

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    instance-of p1, p0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz p1, :cond_16

    check-cast p0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolder;->supportFooterRecommend()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public notifyPageSwitchListener(I)V
    .registers 5

    invoke-super {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->notifyPageSwitchListener(I)V

    const-string/jumbo v0, "notifyPageSwitchListener: CurrentPage = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", prevPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusFolderPagedView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isSupportFolderContentRecommend()Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v1, v0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget v1, v1, Lcom/android/launcher3/model/data/FolderInfo;->mRecommendId:I

    if-lez v1, :cond_60

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    instance-of v0, v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_60

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v0

    if-eq p1, v0, :cond_60

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mFolderIcon:Lcom/android/launcher3/folder/FolderIcon;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    iget-object v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->alarmPending()Z

    move-result v1

    if-eqz v1, :cond_4f

    iget-object v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    invoke-virtual {v1}, Lcom/android/launcher3/Alarm;->cancelAlarm()V

    :cond_4f
    iget-object v1, v0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    new-instance v2, Lcom/android/launcher3/folder/u;

    invoke-direct {v2, p0}, Lcom/android/launcher3/folder/u;-><init>(Lcom/android/launcher3/folder/OplusFolderPagedView;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Alarm;->setOnAlarmListener(Lcom/android/launcher3/OnAlarmListener;)V

    iget-object v0, v0, Lcom/android/launcher3/folder/OplusFolderIcon;->mReportAlarm:Lcom/android/launcher3/Alarm;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/Alarm;->setAlarm(J)V

    :cond_60
    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_6d

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/FolderPagedView;->getPageAt(I)Lcom/android/launcher3/CellLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->clearDragOutlines()V

    :cond_6d
    return-void
.end method

.method public onFoldStateChange(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    invoke-static {}, Lcom/android/launcher/UiConfig;->isXueying()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_27

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->getIconsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->setupContentDimensions(I)V

    check-cast p1, Lcom/android/launcher3/OplusDeviceProfile;

    iget p1, p1, Lcom/android/launcher3/OplusDeviceProfile;->mFolderPageSpacingPx:I

    invoke-virtual {p0, p1}, Lcom/android/launcher3/PagedView;->setPageSpacing(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->createAndAddNewPage()Lcom/android/launcher3/CellLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    :cond_27
    :goto_27
    return-void
.end method

.method public onPageBeginTransition()V
    .registers 1

    invoke-super {p0}, Lcom/android/launcher3/folder/FolderPagedView;->onPageBeginTransition()V

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragController;->onPageBeginTransition()V

    :cond_c
    return-void
.end method

.method public onScrollInteractionBegin()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollInteractionBegin()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object v0, v0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz v0, :cond_20

    iget-object p0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mLauncherDelegate:Lcom/android/launcher3/folder/LauncherDelegate;

    invoke-virtual {p0}, Lcom/android/launcher3/folder/LauncherDelegate;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {p0, v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_20
    return-void
.end method

.method public onScrollOverPageChanged()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/PagedView;->onScrollOverPageChanged()V

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    instance-of v0, v0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {p0}, Lcom/android/launcher3/PagedView;->getDestinationPage()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/folder/OplusFolder;->startSimpleGuid(I)V

    :cond_1a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    instance-of v0, v0, Lcom/android/launcher3/folder/OplusFolder;

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_18

    iget-boolean v0, p0, Lcom/android/launcher3/PagedView;->mIsBeingDragged:Z

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mFolder:Lcom/android/launcher3/folder/Folder;

    check-cast v0, Lcom/android/launcher3/folder/OplusFolder;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/OplusFolder;->close()V

    :cond_18
    invoke-super {p0, p1}, Lcom/android/launcher/OplusPagedViewImpl;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public setupContentDimensions(I)V
    .registers 12

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_16

    const-string/jumbo v0, "setupContentDimensions: mOrganizer.mMaxCountX ="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget v1, v1, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    const-string v2, "OplusFolderPagedView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_16
    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mAllocatedContentSize:I

    invoke-virtual {p0}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result v9

    iget v5, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    iget v6, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    iget-object v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mOrganizer:Lcom/android/launcher3/folder/FolderGridOrganizer;

    iget v7, v0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountX:I

    iget v8, v0, Lcom/android/launcher3/folder/FolderGridOrganizer;->mMaxCountY:I

    move-object v3, p0

    move v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/folder/OplusFolderPagedView;->calculateGridSizeColor(IIIIII)[I

    move-result-object p1

    const/4 v0, 0x0

    aget v0, p1, v0

    iput v0, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountX:I

    const/4 v0, 0x1

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher3/folder/FolderPagedView;->mGridCountY:I

    return-void
.end method

.method public unbindItems()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/OplusFolderPagedView;->removeSelectedViewFromChildren()V

    invoke-super {p0}, Lcom/android/launcher3/folder/FolderPagedView;->unbindItems()V

    return-void
.end method
