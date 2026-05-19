.class public Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;
.super Lcom/android/launcher3/taskbar/BaseTaskbarContext;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;
    }
.end annotation


# instance fields
.field public mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

.field private final mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

.field public mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

.field public mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

.field private final mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;"
        }
    .end annotation
.end field

.field private final mStashedTaskbarHeight:I

.field public mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

.field private final mWillTaskbarBeVisuallyStashed:Z

.field public final mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V
    .registers 8

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    const/16 v1, 0x7f6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarDragController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarDragController;-><init>(Lcom/android/launcher3/taskbar/BaseTaskbarContext;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    new-instance v0, Lcom/android/launcher3/util/OnboardingPrefs;

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/util/OnboardingPrefs;-><init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext$OplusTaskbarAllAppsDragLayer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0d01d7

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    invoke-direct {v1, p0, v0, p2, p3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;-><init>(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    iput-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsSlideInView;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p2

    iput-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz p3, :cond_58

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->supportsVisualStashing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWillTaskbarBeVisuallyStashed:Z

    invoke-virtual {p3}, Lcom/android/launcher3/taskbar/TaskbarStashController;->getStashedHeight()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mStashedTaskbarHeight:I

    goto :goto_6e

    :cond_58
    move-object p2, p1

    check-cast p2, Landroid/content/Context;

    invoke-static {p2}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p2

    sget-object p3, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq p2, p3, :cond_64

    const/4 v3, 0x1

    :cond_64
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWillTaskbarBeVisuallyStashed:Z

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->stashedTaskbarSize:I

    iput p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mStashedTaskbarHeight:I

    :goto_6e
    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWillTaskbarBeVisuallyStashed:Z

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mStashedTaskbarHeight:I

    return p0
.end method


# virtual methods
.method public createSearchAdapterProvider(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/ActivityAllAppsContainerView<",
            "*>;)",
            "Lcom/android/launcher3/allapps/search/SearchAdapterProvider<",
            "*>;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/search/DefaultSearchAdapterProvider;-><init>(Lcom/android/launcher3/views/AppLauncher;)V

    return-object p1
.end method

.method public getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAllAppsViewController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    return-object p0
.end method

.method public bridge synthetic getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p0

    return-object p0
.end method

.method public getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mAppsView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    return-object p0
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getDragController()Lcom/android/launcher3/dragndrop/DragController;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object p0

    return-object p0
.end method

.method public getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragController:Lcom/android/launcher3/taskbar/TaskbarDragController;

    return-object p0
.end method

.method public getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mDragLayer:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    return-object p0
.end method

.method public bridge synthetic getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object p0

    return-object p0
.end method

.method public getItemOnClickListener()Landroid/view/View$OnClickListener;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object p0

    return-object p0
.end method

.method public getOnboardingPrefs()Lcom/android/launcher3/util/OnboardingPrefs;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/OnboardingPrefs<",
            "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mOnboardingPrefs:Lcom/android/launcher3/util/OnboardingPrefs;

    return-object p0
.end method

.method public getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->getPopupDataProvider()Lcom/android/launcher3/popup/PopupDataProvider;

    move-result-object p0

    return-object p0
.end method

.method public getmWindowController()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    return-object p0
.end method

.method public isBindingItems()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mTaskbarContext:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p0}, Lcom/android/launcher3/views/ActivityContext;->isBindingItems()Z

    move-result p0

    return p0
.end method

.method public onDragEnd()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->mWindowController:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->maybeCloseWindow()V

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
