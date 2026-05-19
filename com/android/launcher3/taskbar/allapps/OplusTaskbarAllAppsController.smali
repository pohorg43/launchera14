.class public final Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;
.super Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;,
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;,
        Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/AppLauncher;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController<",
        "TT;>;",
        "Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusTaskbarAllAppsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusTaskbarAllAppsController.kt\ncom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController\n+ 2 View.kt\nandroidx/core/view/ViewKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,544:1\n252#2:545\n37#3,2:546\n*S KotlinDebug\n*F\n+ 1 OplusTaskbarAllAppsController.kt\ncom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController\n*L\n231#1:545\n245#1:546,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$Companion;

.field private static final TAG:Ljava/lang/String; = "TaskbarAllAppsController"


# instance fields
.field private final mComponentToAppMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHasRemovedWindow:Z

.field private mIsOldAllAppsOpened:Ljava/lang/Boolean;

.field private mOnVisibilityChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelHeight:I

.field private final mPanelMarginBottom:I

.field private final mPanelMarginLeftRight:I

.field private final mPanelMarginTop:I

.field private final mPanelWidth:I

.field private final subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->Companion:Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    const-string/jumbo v2, "mTaskbarContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mOnVisibilityChangeListeners:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mComponentToAppMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mHasRemovedWindow:Z

    new-instance v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$subscribeIconRunningTaskChangedListener$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$subscribeIconRunningTaskChangedListener$1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c22

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c1c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelHeight:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c1f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginTop:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c1d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginBottom:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070c1e

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginLeftRight:I

    return-void
.end method

.method public static final synthetic access$setMHasRemovedWindow$p(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mHasRemovedWindow:Z

    return-void
.end method

.method private final closeOtherFloatingView()V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->getTopOpenViewWithType(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object p0

    if-eqz p0, :cond_17

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/folder/Folder;

    invoke-static {v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->isTaskbarFolderClosing(Lcom/android/launcher3/folder/Folder;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_17
    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onDestroy$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method private final getTaskbarAllAppsPanelAnchor(I)[I
    .registers 13

    const/4 v0, 0x2

    new-array v1, v0, [I

    sget-object v2, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "mTaskbarContext.applicationContext"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarHotseatAllAppsIconCenter()[I

    move-result-object v4

    aget v5, v4, v3

    iget v6, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelWidth:I

    div-int/lit8 v7, v6, 0x2

    iget v8, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginLeftRight:I

    add-int/2addr v7, v8

    const/4 v9, 0x1

    if-lt v5, v7, :cond_2a

    move v5, v9

    goto :goto_2b

    :cond_2a
    move v5, v3

    :goto_2b
    aget v7, v4, v3

    div-int/lit8 v10, v6, 0x2

    add-int/2addr v10, v7

    add-int/2addr v10, v8

    if-gt v10, v2, :cond_35

    move v7, v9

    goto :goto_36

    :cond_35
    move v7, v3

    :goto_36
    if-eqz v5, :cond_3f

    if-eqz v7, :cond_3f

    aget v0, v4, v3

    aput v0, v1, v3

    goto :goto_4b

    :cond_3f
    if-eqz v5, :cond_47

    sub-int/2addr v2, v8

    div-int/2addr v6, v0

    sub-int/2addr v2, v6

    aput v2, v1, v3

    goto :goto_4b

    :cond_47
    div-int/2addr v6, v0

    add-int/2addr v6, v8

    aput v6, v1, v3

    :goto_4b
    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginBottom:I

    add-int/2addr p1, p0

    aput p1, v1, v9

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_74

    const-string p0, "getTaskbarAllAppsPanelAnchor panelAnchorXY: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "toString(this)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Taskbar"

    const-string v0, "TaskbarAllAppsController"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_74
    return-object v1
.end method

.method private final getTaskbarHotseatDistanceBottom()I
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    instance-of v1, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const-string/jumbo v2, "mTaskbarContext"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_34

    check-cast v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getTaskbarView()Lcom/android/launcher3/taskbar/TaskbarView;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLocationOnScreen()[I

    move-result-object v0

    if-eqz v0, :cond_1b

    aget v4, v0, v3

    :cond_1b
    if-eqz v4, :cond_2b

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    aget p0, p0, v3

    goto :goto_57

    :cond_2b
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarActivityContext;->getDefaultTaskbarWindowHeight()I

    move-result p0

    goto :goto_73

    :cond_34
    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_77

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object v0

    if-eqz v0, :cond_48

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLocationOnScreen()[I

    move-result-object v0

    if-eqz v0, :cond_48

    aget v4, v0, v3

    :cond_48
    if-eqz v4, :cond_59

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p0

    aget p0, p0, v3

    :goto_57
    sub-int/2addr p0, v4

    goto :goto_73

    :cond_59
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->hotseatBarSizePx:I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/DeviceProfile;->getInsets()Landroid/graphics/Rect;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v0, p0

    move p0, v0

    :goto_73
    move v5, v4

    move v4, p0

    move p0, v5

    goto :goto_78

    :cond_77
    move p0, v4

    :goto_78
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_8d

    const-string v0, "getTaskbarHotseatDistanceBottom: "

    const-string v1, ", locationTop: "

    invoke-static {v0, v4, v1, p0}, Landroidx/emoji2/text/flatbuffer/b;->a(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taskbar"

    const-string v1, "TaskbarAllAppsController"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8d
    return v4
.end method

.method private final interceptToShow(Z)Z
    .registers 10

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewShow()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewOpen()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1c

    if-nez v1, :cond_1a

    iget-object v4, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mIsOldAllAppsOpened:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    :cond_1a
    move v4, v2

    goto :goto_1d

    :cond_1c
    move v4, v3

    :goto_1d
    const-string/jumbo v5, "show animate:"

    const-string v6, " needInterceptToShow:"

    const-string v7, ", isNewAllAppsShown: "

    invoke-static {v5, p1, v6, v4, v7}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ", isNewAllAppsOpened: "

    const-string v6, ", mIsOldAllAppsOpened: "

    invoke-static {p1, v0, v5, v1, v6}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mIsOldAllAppsOpened:Ljava/lang/Boolean;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v5, "Taskbar"

    const-string v6, "TaskbarAllAppsController"

    invoke-static {v5, v6, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mIsOldAllAppsOpened:Ljava/lang/Boolean;

    if-eqz v4, :cond_48

    return v2

    :cond_48
    if-eqz v0, :cond_57

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p1, :cond_57

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p1

    if-eqz p1, :cond_57

    invoke-virtual {p1, v3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->close(Z)V

    :cond_57
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mIsOldAllAppsOpened:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->updateTaskbarAllAppsPanelParams()V

    return v3
.end method

.method private final onDestroy(ZZ)V
    .registers 7

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->hideImmediately()V

    sget-object v0, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v0}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    invoke-interface {v0, v1}, Lcom/android/quickstep/ITopTaskTrackerExt;->removeOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;

    invoke-interface {v0, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$onDestroy$1;-><init>(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;Z)V

    new-instance v2, Lcom/android/launcher3/card/h;

    const/4 v3, 0x1

    invoke-direct {v2, v1, v3}, Lcom/android/launcher3/card/h;-><init>(Lkotlin/jvm/functions/Function1;I)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    if-nez p1, :cond_49

    const/4 p1, 0x0

    if-eqz p2, :cond_45

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    instance-of v0, p2, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz v0, :cond_3f

    check-cast p2, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    goto :goto_40

    :cond_3f
    move-object p2, p1

    :goto_40
    if-eqz p2, :cond_45

    invoke-virtual {p2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;->onDestroy()V

    :cond_45
    iput-boolean v3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mHasRemovedWindow:Z

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    :cond_49
    return-void
.end method

.method private static final onDestroy$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final removeNoExistComponent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    if-nez p1, :cond_b

    const-string p0, "TaskbarAllAppsController"

    const-string/jumbo p1, "removeNoExistComponent context is null "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    return-void
.end method

.method private final updateComponentToAppMap(Ljava/util/List;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz p2, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "packageName"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    const-string v4, "app.user"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->removeNoExistComponent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_32
    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mComponentToAppMap:Ljava/util/HashMap;

    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    iget-object v3, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_41
    return-void
.end method

.method private final updateTaskbarAllAppsPanelParams()V
    .registers 5

    sget-object v0, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "mTaskbarContext.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object v0

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarHotseatDistanceBottom()I

    move-result v1

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2f

    goto :goto_3f

    :cond_2f
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070c1c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelHeight:I

    goto :goto_48

    :cond_3f
    :goto_3f
    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginBottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginTop:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelHeight:I

    :goto_48
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "TaskbarAllAppsController"

    const-string v2, "Taskbar"

    if-eqz v0, :cond_68

    const-string/jumbo v0, "updateTaskbarAllAppsPanelParams mPanelWidth: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelWidth:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPanelHeight: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelHeight:I

    invoke-static {v0, v3, v2, v1}, Lcom/android/common/util/g1;->a(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    :cond_68
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->isSlideInViewOpen()Z

    move-result v0

    if-eqz v0, :cond_87

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_7a

    const-string/jumbo v0, "updateTaskbarAllAppsPanelParams updateSlideInViewParams"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7a
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_87

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_87

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->updateSlideInViewParams()V

    :cond_87
    return-void
.end method


# virtual methods
.method public final addOrUpdateApps(Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->updateComponentToAppMap(Ljava/util/List;Z)V

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v1

    if-eqz v1, :cond_22

    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p1, v0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->addOrUpdateApps(Landroid/content/Context;Ljava/util/List;Z)V

    :cond_22
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->bindAppAddOrUpdate(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final addVisibilityChangeListener(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mOnVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mOnVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public final appRemove(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/common/util/DrawAppSortManagerUtil;->bindAppRemove(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 16

    const-string/jumbo v0, "prefix"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pw"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    :goto_1d
    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelPadding()Landroid/graphics/Point;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarHotseatDistanceBottom()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelAnchor(I)[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object v5

    if-eqz v5, :cond_38

    invoke-virtual {v5}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->getSlideInViewParams()Lcom/android/launcher3/views/BaseDragLayer$LayoutParams;

    move-result-object v5

    goto :goto_39

    :cond_38
    move-object v5, v1

    :goto_39
    sget-object v6, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-static {v7, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v7

    const-string v9, "%sOplusTaskbarAllAppsController:"

    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string v9, "format(format, *args)"

    invoke-static {v7, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v7, 0x3

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p1, v10, v8

    iget-object v11, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v11, :cond_6b

    invoke-virtual {v11}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v11

    if-eqz v11, :cond_6b

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_6c

    :cond_6b
    move-object v11, v1

    :goto_6c
    aput-object v11, v10, v6

    iget-object v11, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-virtual {v11}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v10, v12

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%s\t mTaskbarAllAppsVisibility=%d, proxyViewOpen=%b"

    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v10, v7, [Ljava/lang/Object;

    aput-object p1, v10, v8

    if-eqz v0, :cond_98

    iget v11, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_99

    :cond_98
    move-object v11, v1

    :goto_99
    aput-object v11, v10, v6

    if-eqz v0, :cond_a4

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_a5

    :cond_a4
    move-object v0, v1

    :goto_a5
    aput-object v0, v10, v12

    invoke-static {v10, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v10, "%s\t mTaskbarAllAppsDragLayerWH=%d-%d"

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v8

    if-eqz v5, :cond_c4

    iget v10, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_c5

    :cond_c4
    move-object v10, v1

    :goto_c5
    aput-object v10, v0, v6

    if-eqz v5, :cond_cf

    iget v1, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_cf
    aput-object v1, v0, v12

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\t mTaskbarAllAppsSlideInViewWH=%d-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v8

    iget v1, v2, Landroid/graphics/Point;->x:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    iget v1, v2, Landroid/graphics/Point;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\t mTaskbarAllAppsPanelPaddingXY=[%d, %d]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v8

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelWidth()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v12

    invoke-static {v0, v7}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\t mTaskbarAllAppsPanelWH=%d-%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v8

    invoke-static {v4}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object v1, v0, v6

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\t mTaskbarAllAppsPanelAnchorXY=%s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array v0, v12, [Ljava/lang/Object;

    aput-object p1, v0, v8

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarHotseatAllAppsIconCenter()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    aput-object p0, v0, v6

    invoke-static {v0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s\t mTaskbarHotseatAllAppsIconCenter=%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-array p0, v12, [Ljava/lang/Object;

    aput-object p1, p0, v8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v6

    invoke-static {p0, v12}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s\t mTaskbarHotseatDistanceBottom=%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getTaskbarAllAppsPanelHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelHeight:I

    return p0
.end method

.method public final getTaskbarAllAppsPanelPadding()Landroid/graphics/Point;
    .registers 5

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarHotseatDistanceBottom()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->getTaskbarAllAppsPanelAnchor(I)[I

    move-result-object v2

    const/4 v3, 0x0

    aget v2, v2, v3

    iget v3, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iput v2, v0, Landroid/graphics/Point;->x:I

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelMarginBottom:I

    add-int/2addr p0, v1

    iput p0, v0, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTaskbarAllAppsPanelPadding panelPaddingP: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Taskbar"

    const-string v2, "TaskbarAllAppsController"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    return-object v0
.end method

.method public final getTaskbarAllAppsPanelWidth()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mPanelWidth:I

    return p0
.end method

.method public final getTaskbarHotseatAllAppsIconCenter()[I
    .registers 7

    const/4 v0, 0x2

    new-array v1, v0, [I

    new-array v2, v0, [I

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast p0, Lcom/android/launcher3/views/ActivityContext;

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getAllAppsBtnView(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/OplusBubbleTextView;

    move-result-object p0

    if-eqz p0, :cond_28

    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    aget v4, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v0

    add-int/2addr v5, v4

    aput v5, v1, v3

    const/4 v3, 0x1

    aget v4, v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p0, v4

    aput p0, v1, v3

    :cond_28
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5b

    const-string p0, "getTaskbarHotseatAllAppsIconCenter viewPositionXY: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "toString(this)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", centerPositionXY: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Taskbar"

    const-string v2, "TaskbarAllAppsController"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5b
    return-object v1
.end method

.method public final getVisibilityChangeListeners()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mOnVisibilityChangeListeners:Ljava/util/List;

    return-object p0
.end method

.method public final hideImmediately()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    return-void
.end method

.method public final hideWhenStartApp()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsController.OplusTaskbarAllAppsProxyView<@[FlexibleNullability] T of com.android.launcher3.taskbar.allapps.OplusTaskbarAllAppsController?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OplusTaskbarAllAppsProxyView;->closeWhenStartApp(Z)V

    return-void
.end method

.method public final isSlideInViewOpen()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->isSlideInViewOpen()Z

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final isSlideInViewShow()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_f

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;->isSlideInViewShow()Z

    move-result p0

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public maybeCloseWindow()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_d

    const v1, 0x7fffff

    invoke-static {v0, v1}, Lcom/android/launcher3/AbstractFloatingView;->getOpenView(Lcom/android/launcher3/views/ActivityContext;I)Lcom/android/launcher3/AbstractFloatingView;

    move-result-object v0

    if-nez v0, :cond_24

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarDragController;->isSystemDragInProgress()Z

    move-result v0

    if-ne v0, v1, :cond_21

    move v0, v1

    goto :goto_22

    :cond_21
    move v0, v2

    :goto_22
    if-eqz v0, :cond_25

    :cond_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-result-object v0

    if-nez v0, :cond_33

    goto :goto_35

    :cond_33
    iput-boolean v2, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    :goto_35
    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onDestroy(ZZ)V

    return-void
.end method

.method public final onConfigurationChanged(I)V
    .registers 3

    and-int/lit16 p1, p1, 0x80

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    instance-of p1, p1, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz p1, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->removeDragLayer()V

    goto :goto_18

    :cond_e
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarActivityContext()Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    move-result-object p0

    const/4 p1, 0x0

    const/high16 v0, 0x20000

    invoke-static {p0, p1, v0}, Lcom/android/launcher3/AbstractFloatingView;->closeOpenViews(Lcom/android/launcher3/views/ActivityContext;ZI)V

    :cond_18
    :goto_18
    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onDestroy(ZZ)V

    return-void
.end method

.method public final onDestroy(Z)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->onDestroy(ZZ)V

    return-void
.end method

.method public final removeDragLayer()V
    .registers 5

    const-string v0, "TaskbarAllAppsController"

    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mHasRemovedWindow:Z

    if-nez v1, :cond_39

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v2, :cond_22

    const-class v3, Landroid/view/WindowManager;

    invoke-virtual {v2, v3}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v2, :cond_22

    iget-object v3, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v3, :cond_1e

    invoke-virtual {v3}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    move-object v3, v1

    :goto_1f
    invoke-interface {v2, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    :cond_22
    const-string/jumbo v2, "remove taskbar all apps dragLayer when configurationChanged or bubbleTextFontChanged!"

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_28} :catch_29

    goto :goto_34

    :catch_29
    move-exception v2

    const-string/jumbo v3, "remove taskbar all apps dragLayer when configurationChanged or bubbleTextFontChanged e:"

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mHasRemovedWindow:Z

    iput-object v1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    :cond_39
    return-void
.end method

.method public final removeVisibilityChangeListener(Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController$OnTaskbarAllAppsVisibilityChangeListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mOnVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mOnVisibilityChangeListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 5

    const-string v0, "apps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_ALL_APPS_IN_TASKBAR:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {p1}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->updateComponentToAppMap(Ljava/util/List;Z)V

    iput-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    iget-object p1, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-object p2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iget p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    invoke-virtual {p1, p2, p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    :cond_36
    return-void
.end method

.method public show(Z)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->interceptToShow(Z)Z

    move-result v0

    const-string/jumbo v1, "show animate:"

    const-string v2, "Taskbar"

    const-string v3, "TaskbarAllAppsController"

    if-eqz v0, :cond_28

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->closeOtherFloatingView()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " return, when interceptToShow is true!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_28
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->closeOtherFloatingView()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " return, when mProxyView is already open!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4b
    invoke-direct {p0}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->closeOtherFloatingView()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mProxyView:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->show()V

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/TaskbarControllers;->getSharedState()Lcom/android/launcher3/taskbar/TaskbarSharedState;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_5d

    goto :goto_5f

    :cond_5d
    iput-boolean v1, v0, Lcom/android/launcher3/taskbar/TaskbarSharedState;->allAppsVisible:Z

    :goto_5f
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    const/4 v2, 0x0

    if-nez v0, :cond_66

    move v0, v1

    goto :goto_67

    :cond_66
    move v0, v2

    :goto_67
    if-eqz v0, :cond_83

    new-instance v4, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v5, Lcom/android/launcher3/views/ActivityContext;

    iget-object v6, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    iget-object v6, v6, Lcom/android/launcher3/taskbar/TaskbarControllers;->taskbarStashController:Lcom/android/launcher3/taskbar/TaskbarStashController;

    invoke-direct {v4, v5, p0, v6}, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;-><init>(Lcom/android/launcher3/views/ActivityContext;Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;Lcom/android/launcher3/taskbar/TaskbarStashController;)V

    iput-object v4, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragController()Lcom/android/launcher3/taskbar/TaskbarDragController;

    move-result-object v4

    if-eqz v4, :cond_83

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mControllers:Lcom/android/launcher3/taskbar/TaskbarControllers;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/TaskbarDragController;->init(Lcom/android/launcher3/taskbar/TaskbarControllers;)V

    :cond_83
    iget-object v4, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    const-string/jumbo v6, "mTaskbarContext"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;->onShow(Landroid/content/Context;)V

    sget-object v4, Lcom/android/quickstep/TopTaskTracker;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/quickstep/TopTaskTracker;

    invoke-virtual {v4}, Lcom/android/quickstep/TopTaskTracker;->getExt()Lcom/android/quickstep/ITopTaskTrackerExt;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->subscribeIconRunningTaskChangedListener:Lcom/android/launcher3/taskbar/TaskbarSubscribeIconRunningTaskChangedListener;

    invoke-interface {v4, v5}, Lcom/android/quickstep/ITopTaskTrackerExt;->addOnRunningTaskChangedListener(Lcom/android/quickstep/ITopTaskTrackerExt$OnRunningTaskChangedListener;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mTaskbarContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;

    invoke-interface {v4, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object v4, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v4, :cond_e8

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v5

    const-string v6, "it.dragLayer"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_be

    goto :goto_bf

    :cond_be
    move v1, v2

    :goto_bf
    if-nez v1, :cond_c8

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_c8
    iget-boolean v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mHasRemovedWindow:Z

    if-eqz v1, :cond_e8

    :try_start_cc
    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v4, v1}, Landroid/view/ContextThemeWrapper;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-virtual {v4}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getDragLayer()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext$TaskbarAllAppsDragLayer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_cc .. :try_end_dd} :catch_de

    goto :goto_e8

    :catch_de
    move-exception v1

    const-string v4, "add taskbar all apps dragLayer e:"

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_e8
    :goto_e8
    if-eqz v0, :cond_116

    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_116

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_116

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    if-eqz v0, :cond_116

    iget-object v1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsController;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v3, "mComponentToAppMap.values"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    new-array v2, v2, [Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {v1, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/model/data/AppInfo;

    iget v2, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAppsModelFlags:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->setApps([Lcom/android/launcher3/model/data/AppInfo;I)V

    :cond_116
    iget-object v0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz v0, :cond_123

    invoke-virtual {v0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_123

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->updatePredictedApps()V

    :cond_123
    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_130

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAllAppsViewController()Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    move-result-object p0

    if-eqz p0, :cond_130

    invoke-virtual {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsViewController;->show(Z)V

    :cond_130
    return-void
.end method

.method public final updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const-string v0, "app"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController;->mAllAppsContext:Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContext;->getAppsView()Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object p0

    if-eqz p0, :cond_18

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V

    :cond_18
    return-void
.end method
