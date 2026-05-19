.class public final Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nGlobalSearchTipsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GlobalSearchTipsManager.kt\ncom/android/launcher3/dragndrop/GlobalSearchTipsManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,192:1\n1#2:193\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;

.field private static final TAG:Ljava/lang/String; = "GlobalSearchTipsManager"

.field private static isShowing:Z


# instance fields
.field private isShowDialogAuthorize:Z

.field private final mContext:Landroid/content/Context;

.field private mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

.field private mHeight:I

.field private mIsLaunchToRecent:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private final mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private final mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/statemanager/StateManager$StateListener<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->Companion:Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mOnScrollListener$1;-><init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    new-instance p1, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;

    invoke-direct {p1, p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager$mStateListener$1;-><init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->onBusEvent$lambda$1(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    return-void
.end method

.method public static final synthetic access$isShowing$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowing:Z

    return v0
.end method

.method public static final synthetic access$setShowing$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowing:Z

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->showCouiToolTips$lambda$2(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->onCreate$lambda$0(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    return-void
.end method

.method private static final onBusEvent$lambda$1(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->isShouldShowDialog(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->setShowDialogAuthorizeState(Landroid/content/Context;I)V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->isShouldShowDialog(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->setShowDialogAuthorizeState(Landroid/content/Context;I)V

    return-void
.end method

.method private static final showCouiToolTips$lambda$2(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->setFirstDrawerSearchGlobal(Landroid/content/Context;Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    return-void
.end method


# virtual methods
.method public final dismissCouiToolTips(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-ne v0, v1, :cond_d

    goto :goto_e

    :cond_d
    move v1, v2

    :goto_e
    if-eqz v1, :cond_2d

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismiss()V

    goto :goto_2b

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_25

    goto :goto_26

    :cond_25
    const/4 p0, 0x0

    :goto_26
    if-eqz p0, :cond_2b

    invoke-virtual {p0}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_2b
    :goto_2b
    sput-boolean v2, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowing:Z

    :cond_2d
    return-void
.end method

.method public final getMContext()Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getMCouiToolTips()Lcom/coui/appcompat/tooltips/COUIToolTips;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-object p0
.end method

.method public final getMHeight()I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mHeight:I

    return p0
.end method

.method public final getMIsLaunchToRecent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mIsLaunchToRecent:Z

    return p0
.end method

.method public final getMLauncher()Lcom/android/launcher/Launcher;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    return-object p0
.end method

.method public final isShowDialogAuthorize()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    return p0
.end method

.method public final onBusEvent(Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;)V
    .registers 4

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/search/SearchAccessGlobalEvent;->getMethod()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_59

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_5a

    goto :goto_59

    :sswitch_14
    const-string/jumbo v0, "packageReplaced"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_59

    :cond_1e
    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Landroidx/core/widget/a;

    invoke-direct {v0, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_59

    :sswitch_29
    const-string v0, "authorize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_32

    goto :goto_59

    :cond_32
    iput-boolean v1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/android/common/util/LauncherSharedPrefs;->setShowDialogAuthorizeState(Landroid/content/Context;I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    goto :goto_59

    :sswitch_3d
    const-string v0, "HIDDEN_TIP_REQUIRED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_46

    goto :goto_59

    :cond_46
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mIsLaunchToRecent:Z

    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    goto :goto_59

    :sswitch_4d
    const-string v0, "HIDDEN_TIP_REQUIRED_CLICK_ICON"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_56

    goto :goto_59

    :cond_56
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->dismissCouiToolTips(Z)V

    :cond_59
    :goto_59
    return-void

    :sswitch_data_5a
    .sparse-switch
        -0x2d0f2fc9 -> :sswitch_4d
        0x38ca3f58 -> :sswitch_3d
        0x57f407e9 -> :sswitch_29
        0x765b9696 -> :sswitch_14
    .end sparse-switch
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onCreate(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getShowDialogAuthorizeState(Landroid/content/Context;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p1, v1, :cond_28

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/widget/b;

    invoke-direct {v1, p0}, Landroidx/core/widget/b;-><init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_35

    :cond_28
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/common/util/LauncherSharedPrefs;->getShowDialogAuthorizeState(Landroid/content/Context;)I

    move-result p1

    if-ne p1, v0, :cond_32

    move p1, v0

    goto :goto_33

    :cond_32
    const/4 p1, 0x0

    :goto_33
    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    :goto_35
    const-string p1, "mIsShowDialogAuthorize："

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    const-string v2, "GlobalSearchTipsManager"

    invoke-static {p1, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-object p1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/android/common/config/ScreenInfo$Companion;->getDisplayScreenSize(Landroid/content/Context;)[I

    move-result-object p1

    aget p1, p1, v0

    iput p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mHeight:I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_5d

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_5d

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->addStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_5d
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_72

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_72

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_72
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3

    const-string v0, "lifecycleOwner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Lcom/coui/appcompat/tooltips/COUIToolTips;->dismissImmediately()V

    :cond_16
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_25

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p1

    if-eqz p1, :cond_25

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mStateListener:Lcom/android/launcher3/statemanager/StateManager$StateListener;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/statemanager/StateManager;->removeStateListener(Lcom/android/launcher3/statemanager/StateManager$StateListener;)V

    :cond_25
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object p1

    if-eqz p1, :cond_3a

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    :cond_3a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public final setMCouiToolTips(Lcom/coui/appcompat/tooltips/COUIToolTips;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    return-void
.end method

.method public final setMHeight(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mHeight:I

    return-void
.end method

.method public final setMIsLaunchToRecent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mIsLaunchToRecent:Z

    return-void
.end method

.method public final setMLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public final setShowDialogAuthorize(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    return-void
.end method

.method public final showCouiToolTips()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isDrawerAppGlobalSearch(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->isFirstDrawerSearchGlobal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_85

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowDialogAuthorize:Z

    if-eqz v0, :cond_85

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_5f

    new-instance v0, Lcom/coui/appcompat/tooltips/COUIToolTips;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v4, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setDismissOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_37

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mContext:Landroid/content/Context;

    const v4, 0x7f1202b1

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setContent(Ljava/lang/CharSequence;)V

    :cond_37
    iget-object v4, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v4, :cond_52

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object v2

    :cond_49
    move-object v5, v2

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    :cond_52
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v0, :cond_85

    new-instance v2, Lcom/android/launcher/folder/recommend/c;

    invoke-direct {v2, p0}, Lcom/android/launcher/folder/recommend/c;-><init>(Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;)V

    invoke-virtual {v0, v2}, Lcom/coui/appcompat/tooltips/COUIToolTips;->setOnCloseIconClickListener(Lcom/coui/appcompat/tooltips/COUIToolTips$OnCloseIconClickListener;)V

    goto :goto_85

    :cond_5f
    if-eqz v0, :cond_68

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-nez v0, :cond_68

    move v3, v1

    :cond_68
    if-eqz v3, :cond_85

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mCouiToolTips:Lcom/coui/appcompat/tooltips/COUIToolTips;

    if-eqz v4, :cond_85

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-eqz p0, :cond_7c

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;->getSearchView()Landroid/view/View;

    move-result-object v2

    :cond_7c
    move-object v5, v2

    const/16 v6, 0x80

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lcom/coui/appcompat/tooltips/COUIToolTips;->showWithDirection(Landroid/view/View;IZII)V

    :cond_85
    :goto_85
    sput-boolean v1, Lcom/android/launcher3/dragndrop/GlobalSearchTipsManager;->isShowing:Z

    return-void
.end method
