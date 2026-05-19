.class public Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;
.super Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;
    }
.end annotation


# instance fields
.field private final mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public mDragLayer:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;

.field public mEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

.field private final mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

.field private final mWindowController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/taskbar/TaskbarActivityContext;Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;)V
    .registers 5

    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/ContextThemeWrapper;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mWindowController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance p1, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    new-instance p1, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;

    invoke-direct {p1, p0}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mDragLayer:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;

    iget-object p2, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d0255

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    iput-object p1, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;)Lcom/android/launcher3/taskbar/TaskbarDragController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object p0
.end method


# virtual methods
.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mDragLayer:Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext$TaskbarGuideDragLayer;

    return-object p0
.end method

.method public getEduView()Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mEduView:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduView;

    return-object p0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public isBindingItems()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mTaskbarContext:Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->isBindingItems()Z

    move-result p0

    return p0
.end method

.method public onDragEnd()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/guide/OplusTaskbarGuideContext;->mWindowController:Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/guide/FirstTaskbarEduController;->closeWindow()V

    return-void
.end method

.method public onDragStart()V
    .registers 1

    return-void
.end method

.method public onPopupVisibilityChanged(Z)V
    .registers 2

    return-void
.end method

.method public updateDeviceProfile(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const/4 p1, 0x0

    const v0, 0x4da274

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViewsExcept(Lcom/android/launcher3/views/ActivityContext;ZI)V

    invoke-interface {p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->dispatchDeviceProfileChanged()V

    return-void
.end method
