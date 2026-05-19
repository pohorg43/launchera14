.class public Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderExpandAndRename;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/OplusBaseSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderExpandAndRename"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 10

    invoke-static {p2}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderExpandAndRename;->getTitleResId(Lcom/android/launcher3/model/data/ItemInfo;)I

    move-result v2

    const v1, 0x7f080679

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method private static getTitleResId(Lcom/android/launcher3/model/data/ItemInfo;)I
    .registers 1

    const p0, 0x7f12013b

    return p0
.end method


# virtual methods
.method public isEnabled()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_10

    const/4 v1, 0x1

    :cond_10
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    invoke-static {v0}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;)V

    goto :goto_13

    :cond_f
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;Z)V

    :goto_13
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {v0, p0}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/android/launcher3/folder/OplusFolderIcon;

    if-eqz v0, :cond_3d

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/folder/OplusFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/Folder;->setIsOpenForRename(Z)V

    :cond_2f
    invoke-static {p0}, Lcom/android/launcher3/touch/ItemClickHandler;->onClickFolderIcon(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/statistics/LauncherStatistics;->statRenameByLongClick()V

    :cond_3d
    return-void
.end method
