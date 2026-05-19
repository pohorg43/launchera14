.class public Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;
.super Lcom/android/launcher3/popup/SystemShortcut;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/popup/OplusBaseSystemShortcut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FolderDisband"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 10

    const v1, 0x7f0806e7

    const v2, 0x7f120225

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/popup/SystemShortcut;-><init>(IILandroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;->lambda$showConfirmAlertPopup$0(Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$showConfirmAlertPopup$0(Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p3, v0, :cond_18

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p2

    iget-object p3, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p3, p3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p2, p3}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p2

    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher/Launcher;->disbandFolder(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-static {p1}, Lcom/android/launcher/folder/DisbandFolderHelper;->statsClickDisbandFolder(Landroid/content/Context;)V

    goto :goto_1b

    :cond_18
    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    :goto_1b
    return-void
.end method

.method private showConfirmAlertPopup(Lcom/android/launcher/Launcher;)V
    .registers 9

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v0, Lcom/android/launcher3/popup/OplusAlertPopup;

    invoke-direct {v0, p1}, Lcom/android/launcher3/popup/OplusAlertPopup;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120227

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/android/launcher3/popup/u;

    invoke-direct {v6, p0, p1}, Lcom/android/launcher3/popup/u;-><init>(Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;Lcom/android/launcher/Launcher;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f120226

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v3, 0x7f120225

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1200c2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/popup/OplusAlertPopup;->createMultiMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public isEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/launcher/folder/DisbandFolderHelper;->isSupportDisbandFolder()Z

    move-result v0

    if-nez v0, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-nez v0, :cond_1c

    return v1

    :cond_1c
    iget-object p0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mItemInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-ne p0, v0, :cond_24

    const/4 v1, 0x1

    :cond_24
    return v1
.end method

.method public onClick(Landroid/view/View;)V
    .registers 4

    invoke-static {}, Lcom/oplus/compatui/FastClickUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_f

    const-string p0, "SystemShortcut"

    const-string/jumbo p1, "onClick(), isFastClick, return."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    return-void

    :cond_1a
    invoke-static {p1}, Lcom/android/launcher3/folder/big/FolderManager;->isSmallFolderIcon(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_25

    const/4 p1, 0x2

    invoke-static {v0, p1}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenContainer(Lcom/android/launcher3/views/ActivityContext;I)V

    goto :goto_2a

    :cond_25
    const/16 p1, 0x5a

    invoke-static {v0, p1}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->closeOpenContainer(Lcom/android/launcher/Launcher;I)V

    :goto_2a
    invoke-direct {p0, v0}, Lcom/android/launcher3/popup/OplusBaseSystemShortcut$FolderDisband;->showConfirmAlertPopup(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/popup/SystemShortcut;->mTarget:Landroid/content/Context;

    const v1, 0x7f040215

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/popup/SystemShortcut;->setIconAndLabelFor(Landroid/view/View;Landroid/widget/TextView;)V

    return-void
.end method
