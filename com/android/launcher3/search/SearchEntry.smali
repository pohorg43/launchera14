.class public final Lcom/android/launcher3/search/SearchEntry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/search/SearchEntry$Companion;
    }
.end annotation


# static fields
.field public static final ACTION_DOMESTIC_SEARCH_APP:Ljava/lang/String; = "android.search.action.DOCK_SEARCH"

.field public static final ACTION_EXP_SEARCH_APP:Ljava/lang/String; = "com.oppo.quicksearchbox.action.Dispatch"

.field public static final Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

.field private static final DEBUG_DEPTH:I = 0x5

.field private static final DEFAULT_VALUE:Z = true

.field private static final DELAY_RESTORE:J = 0x3e8L

.field public static final IS_SEARCH_ENTRY_ENABLE:Ljava/lang/String; = "is_search_entry_enable"

.field private static final MSG_SHOW_SEARCH_ENTRY:I = 0x65

.field private static final SEARCH_ENTRY_OPEN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SearchEntry"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

.field private mIsForceAnim:Z

.field private mIsSupport:Z

.field private mIsSwitchEnableState:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

.field private mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

.field private mWallpaperColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/search/SearchEntry$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/search/SearchEntry$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/pageindicators/OplusPageIndicator;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pageIndicator"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSwitchDefaultValue()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/search/SearchEntry$mHandler$1;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/search/SearchEntry$mHandler$1;-><init>(Lcom/android/launcher3/search/SearchEntry;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    invoke-virtual {v0, p1}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    new-instance p1, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p2}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/search/SearchEntry;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp$lambda$0(Lcom/android/launcher3/search/SearchEntry;)V

    return-void
.end method

.method public static final synthetic access$getMIndicator$p(Lcom/android/launcher3/search/SearchEntry;)Lcom/android/launcher/pageindicators/OplusPageIndicator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    return-object p0
.end method

.method public static final synthetic access$getMIsForceAnim$p(Lcom/android/launcher3/search/SearchEntry;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsForceAnim:Z

    return p0
.end method

.method public static synthetic b(Lcom/android/launcher3/search/SearchEntry;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp$lambda$1(Lcom/android/launcher3/search/SearchEntry;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/search/SearchEntry;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/search/SearchEntry;->startSearchApp$lambda$2(Lcom/android/launcher3/search/SearchEntry;)V

    return-void
.end method

.method private final doRealStartSearchApp()V
    .registers 4

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->isShowGuide()Z

    move-result v0

    const-string v1, "SearchEntry"

    if-eqz v0, :cond_10

    const-string p0, "doRealStartSearchApp: DrawerGuide is showing!!!"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_10
    :try_start_10
    sget-object v0, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-static {v2}, Lcom/android/launcher3/search/SearchEntry$Companion;->access$getSearchAppLaunchIntent(Lcom/android/launcher3/search/SearchEntry$Companion;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->startOpenSearchAppAnim()V

    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarStateUtils;->isTaskbarPresent()Z

    move-result p0

    if-eqz p0, :cond_3b

    sget-object p0, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent;->Companion:Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oplus/launcher/lifecycle/LauncherOccludesActivityWatchEvent$Companion;->updateTaskbarNoOccludeState(Z)V

    :cond_3b
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_3d
    .catchall {:try_start_10 .. :try_end_3d} :catchall_3e

    goto :goto_43

    :catchall_3e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_43
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_4a

    goto :goto_5e

    :cond_4a
    const-string v0, "doRealStartSearchApp: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5e
    return-void
.end method

.method public static final getSearchAppAction()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSearchAppPackageName()Ljava/lang/String;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSearchAppPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final getSwitchDefaultValue()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->getSwitchDefaultValue()Z

    move-result v0

    return v0
.end method

.method public static final isEmptyPageIndicatorSearchSwitchValue(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isEmptyPageIndicatorSearchSwitchValue(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isSearchEntrySupported()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v0

    return v0
.end method

.method public static final isSwitchEnable(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/search/SearchEntry$Companion;->setSwitchEnable(Landroid/content/Context;ZLcom/android/launcher3/search/SearchEntry;)V

    return-void
.end method

.method private final startOpenSearchAppAnim()V
    .registers 2

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/oplus/quickstep/multiwindow/MultiWindowManager;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_b

    return-void

    :cond_b
    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;->startOpenSearchAppAnim()V

    return-void
.end method

.method private static final startSearchApp$lambda$0(Lcom/android/launcher3/search/SearchEntry;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->doRealStartSearchApp()V

    return-void
.end method

.method private static final startSearchApp$lambda$1(Lcom/android/launcher3/search/SearchEntry;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->doRealStartSearchApp()V

    return-void
.end method

.method private static final startSearchApp$lambda$2(Lcom/android/launcher3/search/SearchEntry;)V
    .registers 2

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->doRealStartSearchApp()V

    return-void
.end method

.method public static final updatePageIndicatorSearchSwitchValue(Landroid/content/Context;)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/search/SearchEntry$Companion;->updatePageIndicatorSearchSwitchValue(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final cancelReplaceAnimation()V
    .registers 5

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->isSupport()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsForceAnim:Z

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->isStateAnimRunning()Z

    move-result v1

    const-string v2, "cancelReplaceAnimation, running = "

    const-string v3, "SearchEntry"

    invoke-static {v2, v1, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v1, :cond_30

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->cancel()V

    :cond_1e
    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    :cond_30
    return-void
.end method

.method public final cancelScrollXAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->cancelScrollXAnim()V

    :cond_7
    return-void
.end method

.method public final changeSupportState()V
    .registers 3

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportSearchEntry()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    const-string v0, "changeSupportState, mIsSupport = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchEntry"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    return-void
.end method

.method public final doReplaceAnimation(ZZIZ)V
    .registers 11

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    const-string v1, "SearchEntry"

    if-eqz v0, :cond_29

    const-string v0, "doReplaceAnimation, showSearchEntry="

    const-string v2, ", delay="

    const-string v3, ", toState="

    invoke-static {v0, p1, v2, p2, v3}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", caller="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_29
    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-nez v2, :cond_2f

    return-void

    :cond_2f
    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v2

    if-eqz v2, :cond_38

    return-void

    :cond_38
    iget-boolean v2, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-nez v2, :cond_42

    if-eqz p1, :cond_41

    move p3, v3

    :cond_41
    move v0, v4

    :cond_42
    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v5, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v2

    if-nez v2, :cond_54

    if-nez p4, :cond_54

    const-string p0, "doReplaceAnimation, ignore as other launcher state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_54
    iget-object v2, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Workspace;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_66

    const-string p0, "doReplaceAnimation, ignore as state switching"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_66
    const-string v2, "doReplaceAnimation, showSearchEntry = "

    const-string v5, ", delay = "

    invoke-static {v2, p1, v5, p2, v1}, Lcom/android/common/multiapp/a;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)V

    const/16 v2, 0x65

    if-eqz p1, :cond_82

    if-eqz p2, :cond_82

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean p4, p0, Lcom/android/launcher3/search/SearchEntry;->mIsForceAnim:Z

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    const-wide/16 p1, 0x3e8

    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    :cond_82
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result p2

    if-ne p2, p3, :cond_9d

    iget-object p1, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_97

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_97
    const-string p0, "Ignore as change to an existing state"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9d
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->getCurrentState()I

    move-result p2

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    if-ne p2, v3, :cond_ab

    goto :goto_ac

    :cond_ab
    move v4, v0

    :goto_ac
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    if-eqz p2, :cond_b8

    invoke-virtual {p2}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->cancel()V

    :cond_b8
    iget-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p2}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->resetBgPadding()V

    iput-boolean p4, p0, Lcom/android/launcher3/search/SearchEntry;->mIsForceAnim:Z

    new-instance p2, Lcom/android/launcher3/search/SearchEntryStateAnimation;

    iget-object p4, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-direct {p2, p4, p1, p3, v4}, Lcom/android/launcher3/search/SearchEntryStateAnimation;-><init>(Lcom/android/launcher/pageindicators/OplusPageIndicator;ZIZ)V

    iput-object p2, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    invoke-virtual {p2}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->start()V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0, p3}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(I)V

    return-void
.end method

.method public final getSearchAppLaunchAnimRunner()Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mSearchAppLaunchAnim:Lcom/android/launcher3/search/SearchAppLaunchAnimationRunner;

    return-object p0
.end method

.method public final initViewStateIfNeeded()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    :cond_8
    return-void
.end method

.method public final isEnable()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isForceAnim()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsForceAnim:Z

    return p0
.end method

.method public final isStateAnimRunning()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->isRunning()Z

    move-result v0

    if-ne v0, v1, :cond_e

    move v0, v1

    goto :goto_f

    :cond_e
    move v0, v2

    :goto_f
    if-nez v0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x65

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :cond_1d
    :goto_1d
    return v1
.end method

.method public final isStateAnimRunningWithoutMsgCheck()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->isRunning()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final isStateBgAnimRunning()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mStateAnimation:Lcom/android/launcher3/search/SearchEntryStateAnimation;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntryStateAnimation;->isBgAnimRunning()Z

    move-result p0

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    move v0, v1

    :goto_e
    return v0
.end method

.method public final isSupport()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    return p0
.end method

.method public final isSwitchEnableState()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    return p0
.end method

.method public final reInitEnableState()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSearchEntrySupported()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/search/SearchEntry$Companion;->isSwitchEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/search/SearchEntry;->setSwitchEnableState(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reInitEnableState: mIsSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsSwitchEnableState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    const-string v1, "SearchEntry"

    invoke-static {v0, p0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public final resetForceState()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsForceAnim:Z

    return-void
.end method

.method public final setSwitchEnableState(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/search/SearchEntry;->updateContent(Z)V

    return-void
.end method

.method public final startSearchApp()V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/statistics/LauncherStatistics;->statsClickSearchEntry()V

    const-string v0, "SearchEntry"

    const-string/jumbo v1, "startSearchApp"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmDrawerSearchEntrySupport()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/AbstractFloatingView;->closeAllOpenViews(Lcom/android/launcher3/views/ActivityContext;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    return-void

    :cond_36
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6e

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v2, Lcom/android/launcher3/search/SearchEntry;->Companion:Lcom/android/launcher3/search/SearchEntry$Companion;

    invoke-static {v2}, Lcom/android/launcher3/search/SearchEntry$Companion;->access$getSearchAppLaunchIntent(Lcom/android/launcher3/search/SearchEntry$Companion;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Landroidx/constraintlayout/helper/widget/a;

    invoke-direct {v4, p0}, Landroidx/constraintlayout/helper/widget/a;-><init>(Lcom/android/launcher3/search/SearchEntry;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->delayStartActivityIfNeed(Landroid/content/Context;Landroid/content/Intent;Ljava/util/function/Supplier;Ljava/lang/Runnable;)Z

    move-result v0

    move v1, v0

    goto :goto_6e

    :cond_5f
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v0

    const/4 v2, 0x5

    new-instance v3, Lcom/android/common/util/n;

    invoke-direct {v3, p0}, Lcom/android/common/util/n;-><init>(Lcom/android/launcher3/search/SearchEntry;)V

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    :cond_6e
    :goto_6e
    if-eqz v1, :cond_71

    return-void

    :cond_71
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/BaseActivity;->hasBeenResumed()Z

    move-result v0

    if-nez v0, :cond_89

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    new-instance v1, Lcom/android/launcher3/pullup/controller/a;

    invoke-direct {v1, p0}, Lcom/android/launcher3/pullup/controller/a;-><init>(Lcom/android/launcher3/search/SearchEntry;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BaseDraggingActivity;->addOnResumeCallback(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->onDeferredActivityLaunch()V

    goto :goto_8c

    :cond_89
    invoke-direct {p0}, Lcom/android/launcher3/search/SearchEntry;->doRealStartSearchApp()V

    :goto_8c
    return-void
.end method

.method public final updateBackground(I)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/search/SearchEntry;->mWallpaperColor:I

    if-eq p1, v0, :cond_10

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0, p1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->updateBackground(I)V

    iput p1, p0, Lcom/android/launcher3/search/SearchEntry;->mWallpaperColor:I

    iget-object p0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_10
    return-void
.end method

.method public final updateContent(Z)V
    .registers 9

    invoke-virtual {p0}, Lcom/android/launcher3/search/SearchEntry;->cancelReplaceAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isSearchEntryEnable()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(I)V

    goto :goto_43

    :cond_1c
    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSupport:Z

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    invoke-virtual {v0}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->isFolderHost()Z

    move-result v0

    if-nez v0, :cond_3d

    iget-boolean v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIsSwitchEnableState:Z

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    sget-object v1, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(I)V

    goto :goto_43

    :cond_3d
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mIndicator:Lcom/android/launcher/pageindicators/OplusPageIndicator;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher/pageindicators/OplusPageIndicator;->setState(I)V

    :goto_43
    iget-object v0, p0, Lcom/android/launcher3/search/SearchEntry;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_5d

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_5d

    sget-object v0, Lm7/y0;->a:Lm7/y0;

    sget-object v2, Lr7/v;->a:Lm7/b2;

    new-instance v4, Lcom/android/launcher3/search/SearchEntry$updateContent$1;

    const/4 v0, 0x0

    invoke-direct {v4, p1, p0, v0}, Lcom/android/launcher3/search/SearchEntry$updateContent$1;-><init>(ZLcom/android/launcher3/search/SearchEntry;Ll4/d;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_5d
    return-void
.end method
