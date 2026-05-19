.class public final Lcom/android/common/util/OplusFoldStateHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;,
        Lcom/android/common/util/OplusFoldStateHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusFoldStateHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusFoldStateHelper.kt\ncom/android/common/util/OplusFoldStateHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,311:1\n1#2:312\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATOR_DURATION:J = 0x12cL

.field public static final Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

.field private static final ENSURE_IDP_DELAY:J = 0x258L

.field public static final FOLDING_MODE_EXPANDED:I = 0x1

.field public static final FOLDING_MODE_FOLDED:I = 0x0

.field public static final STATE_CHANGING_DELAY:J = 0x258L

.field private static final TAG:Ljava/lang/String; = "OplusFoldStateHelper"

.field public static hasUpdatedIdp:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static isUpdatingIdp:Z

.field public static mChangingFoldState:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

.field public static mFoldChangeElapseTime:J
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static mFolderConfigurationChange:Z

.field private static mFoldingMode:I

.field private static final mHandler:Landroid/os/Handler;

.field private static mLastFoldingMode:I

.field public static mRootViewHidden:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static sInstance:Lcom/android/common/util/OplusFoldStateHelper;


# instance fields
.field private callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnsureIdpTask:Ljava/lang/Runnable;

.field private final mFoldStateChangeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mResetChangeStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/OplusFoldStateHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, -0x1

    sput v0, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v0, Lcom/android/common/util/p0;->b:Lcom/android/common/util/p0;

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/common/util/q0;->b:Lcom/android/common/util/q0;

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/common/a;

    invoke-direct {v0, p0}, Lcom/android/common/a;-><init>(Lcom/android/common/util/OplusFoldStateHelper;)V

    iput-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldStateChangeCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask$lambda$1()V

    return-void
.end method

.method public static final synthetic access$getMFoldAnimation$cp()Lcom/android/launcher3/anim/LauncherFoldAnimation;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    return-object v0
.end method

.method public static final synthetic access$getMFolderConfigurationChange$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->mFolderConfigurationChange:Z

    return v0
.end method

.method public static final synthetic access$getMFoldingMode$cp()I
    .registers 1

    sget v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    return v0
.end method

.method public static final synthetic access$getMHandler$cp()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static final synthetic access$getMLastFoldingMode$cp()I
    .registers 1

    sget v0, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    return v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/common/util/OplusFoldStateHelper;
    .registers 1

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->sInstance:Lcom/android/common/util/OplusFoldStateHelper;

    return-object v0
.end method

.method public static final synthetic access$isUpdatingIdp$cp()Z
    .registers 1

    sget-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->isUpdatingIdp:Z

    return v0
.end method

.method public static final synthetic access$setMFoldAnimation$cp(Lcom/android/launcher3/anim/LauncherFoldAnimation;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    return-void
.end method

.method public static final synthetic access$setMFolderConfigurationChange$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/common/util/OplusFoldStateHelper;->mFolderConfigurationChange:Z

    return-void
.end method

.method public static final synthetic access$setMFoldingMode$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    return-void
.end method

.method public static final synthetic access$setMLastFoldingMode$cp(I)V
    .registers 1

    sput p0, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/common/util/OplusFoldStateHelper;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/OplusFoldStateHelper;->sInstance:Lcom/android/common/util/OplusFoldStateHelper;

    return-void
.end method

.method public static final synthetic access$setUpdatingIdp$cp(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/common/util/OplusFoldStateHelper;->isUpdatingIdp:Z

    return-void
.end method

.method public static synthetic b(Lcom/android/common/util/OplusFoldStateHelper;Ljava/lang/Boolean;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/OplusFoldStateHelper;->mFoldStateChangeCallback$lambda$3(Lcom/android/common/util/OplusFoldStateHelper;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/common/util/OplusFoldStateHelper;->onFoldChange$lambda$4(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public static synthetic d()V
    .registers 0

    invoke-static {}, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable$lambda$0()V

    return-void
.end method

.method public static final getFoldingMode()I
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getFoldingMode()I

    move-result v0

    return v0
.end method

.method public static final getInstance()Lcom/android/common/util/OplusFoldStateHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->getInstance()Lcom/android/common/util/OplusFoldStateHelper;

    move-result-object v0

    return-object v0
.end method

.method public static final isFold()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFold()Z

    move-result v0

    return v0
.end method

.method public static final isFoldScreenExpandedFromDisplay()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenExpandedFromDisplay()Z

    move-result v0

    return v0
.end method

.method public static final isFoldScreenFoldedFromDisplay()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldScreenFoldedFromDisplay()Z

    move-result v0

    return v0
.end method

.method public static final isFoldingModeMismatchSizeInfo(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isFoldingModeMismatchSizeInfo(II)Z

    move-result p0

    return p0
.end method

.method public static final isLargeScreen(II)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->Companion:Lcom/android/common/util/OplusFoldStateHelper$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/OplusFoldStateHelper$Companion;->isLargeScreen(II)Z

    move-result p0

    return p0
.end method

.method private static final mEnsureIdpTask$lambda$1()V
    .registers 4

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->isVerifyIconChanged()Z

    move-result v2

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/config/ContextFetcher;->isAppConfigCalled()Z

    move-result v3

    if-nez v3, :cond_25

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/common/config/ContextFetcher;->isLauncherConfigCalled()Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_25
    if-eqz v2, :cond_32

    :cond_27
    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    invoke-static {v0, v2}, Lcom/android/common/util/DisplayUtils;->updateIdpAndRefreshLauncher(Lcom/android/launcher/Launcher;Z)Z

    if-nez v0, :cond_2f

    goto :goto_32

    :cond_2f
    invoke-virtual {v0, v1}, Lcom/android/launcher/Launcher;->setVerifyIconChanged(Z)V

    :cond_32
    :goto_32
    return-void
.end method

.method private static final mFoldStateChangeCallback$lambda$3(Lcom/android/common/util/OplusFoldStateHelper;Ljava/lang/Boolean;)V
    .registers 3

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/common/util/OplusFoldStateHelper;->onFoldChange(Z)V

    return-void
.end method

.method private static final mResetChangeStateRunnable$lambda$0()V
    .registers 2

    const-string v0, "OplusFoldStateHelper"

    const-string v1, "check idp from settings change with delay"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/common/util/DisplayUtils;->updateIdpAndRefreshLauncher(Lcom/android/launcher/Launcher;Z)Z

    sput-boolean v1, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    return-void
.end method

.method private final onFoldChange(Z)V
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RestrictedApi"
        }
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0}, Lcom/android/launcher/guide/DrawerGuideManager;->cancelAllAnim()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldChangeElapseTime:J

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    sget v1, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    return-void

    :cond_27
    sput p1, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    sput p1, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    sget-object v1, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    if-eqz v1, :cond_32

    invoke-virtual {v1, p1}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->onFoldStateSettingsChange(I)V

    :cond_32
    xor-int/lit8 v1, p1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChange->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isFold: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OplusFoldStateHelper"

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v0, Lcom/android/common/util/OplusFoldStateHelper;->mChangingFoldState:Z

    const/4 p1, 0x0

    sput-boolean p1, Lcom/android/common/util/OplusFoldStateHelper;->hasUpdatedIdp:Z

    sget-object v3, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->INSTANCE:Lcom/android/launcher3/hotseat/expand/ExpandDataManager;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->setEnableUpdateExpandFlag(Z)V

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandGuidHelper;->dismissExpandGuidTip()V

    const-string v3, "Hotseat_expand"

    const-string v4, "fold state onChange,set enableUpdateExpandFlag false"

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v3}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/Launcher;

    const/4 v4, 0x0

    if-eqz v3, :cond_85

    invoke-virtual {v3}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v5

    if-eqz v5, :cond_85

    iget-object v5, v5, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    if-eqz v5, :cond_85

    invoke-virtual {v5}, Lcom/android/launcher3/OplusInvariantDeviceProfile;->updateFoldScreenNumShownHotseatIcons()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_86

    :cond_85
    move-object v5, v4

    :goto_86
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_98

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/android/common/util/o0;

    invoke-direct {v6, v3, p1}, Lcom/android/common/util/o0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_98
    if-eqz v3, :cond_a1

    invoke-virtual {v3}, Landroid/app/Activity;->isResumed()Z

    move-result v3

    if-ne v3, v0, :cond_a1

    goto :goto_a2

    :cond_a1
    move v0, p1

    :goto_a2
    if-eqz v0, :cond_a7

    invoke-static {}, Lcom/android/launcher3/hotseat/expand/ExpandSwitchHelper;->switchExpandHotseatIfNeeded()V

    :cond_a7
    invoke-static {}, Lcom/android/common/config/FeatureOption;->updateSupportIconFallen()V

    invoke-static {}, Lcom/oplus/anim/model/EffectiveCompositionCache;->getInstance()Lcom/oplus/anim/model/EffectiveCompositionCache;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/anim/model/EffectiveCompositionCache;->clear()V

    invoke-static {}, Lcom/android/launcher/mode/AbsLauncherMode;->updateMaxFolderPages()V

    sget-object p1, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x258

    invoke-virtual {p1, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_c6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;

    invoke-interface {p1, v1}, Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;->onFoldStateChange(Z)V

    goto :goto_c6

    :cond_d6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onFoldChange: will clear display info cache when fold state changed: isFold: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->clearDisplayCache()V

    return-void
.end method

.method private static final onFoldChange$lambda$4(Lcom/android/launcher/Launcher;)V
    .registers 1

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getHotseat()Lcom/android/launcher3/OplusHotseat;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_b
    return-void
.end method


# virtual methods
.method public final addCallBack(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public final ensureIdpWithDelay()V
    .registers 5

    sget-object v0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/Launcher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v3

    if-ne v3, v1, :cond_14

    move v3, v1

    goto :goto_15

    :cond_14
    move v3, v2

    :goto_15
    if-eqz v3, :cond_3b

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInMinimize()Z

    move-result v0

    if-nez v0, :cond_20

    goto :goto_21

    :cond_20
    move v1, v2

    :goto_21
    if-eqz v1, :cond_3b

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAppContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/common/util/ScreenUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p0, "OplusFoldStateHelper"

    const-string/jumbo v0, "no need execute ensureIdpWithDelay return"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3b
    sget-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x258

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final getCallbacks()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public final getMEnsureIdpTask()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mEnsureIdpTask:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final getMResetChangeStateRunnable()Ljava/lang/Runnable;
    .registers 1

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "OplusFoldStateHelper"

    const-string v1, "initialize"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_15

    return-void

    :cond_15
    sget-object v0, Lcom/android/common/util/FoldStateMonitor;->Companion:Lcom/android/common/util/FoldStateMonitor$Companion;

    invoke-virtual {v0, p1}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/util/FoldStateMonitor;->isFold()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/common/util/OplusFoldStateHelper;->mFoldingMode:I

    sput v1, Lcom/android/common/util/OplusFoldStateHelper;->mLastFoldingMode:I

    invoke-virtual {v0, p1}, Lcom/android/common/util/FoldStateMonitor$Companion;->getInstance(Landroid/content/Context;)Lcom/android/common/util/FoldStateMonitor;

    move-result-object p1

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldStateChangeCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Lcom/android/common/util/FoldStateMonitor;->addCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isOrientationChange(I)Z
    .registers 2

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isLargeDisplayDevice()Z

    move-result p0

    if-eqz p0, :cond_c

    and-int/lit16 p0, p1, 0x80

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final onConfigurationChange()V
    .registers 1

    sget-object p0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;->onConfigurationChange()V

    :cond_7
    return-void
.end method

.method public final removeCallback(Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object p0, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1b
    return-void
.end method

.method public final setCallbacks(Ljava/util/concurrent/CopyOnWriteArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/common/util/OplusFoldStateHelper$OnFoldStateChangeCallback;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/common/util/OplusFoldStateHelper;->callbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method

.method public final setMResetChangeStateRunnable(Ljava/lang/Runnable;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/common/util/OplusFoldStateHelper;->mResetChangeStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public final updateLauncherContext()V
    .registers 2

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    new-instance v0, Lcom/android/launcher3/anim/LauncherFoldAnimation;

    invoke-direct {v0, p0}, Lcom/android/launcher3/anim/LauncherFoldAnimation;-><init>(Lcom/android/launcher/Launcher;)V

    sput-object v0, Lcom/android/common/util/OplusFoldStateHelper;->mFoldAnimation:Lcom/android/launcher3/anim/LauncherFoldAnimation;

    const-string p0, "OplusFoldStateHelper"

    const-string/jumbo v0, "updateLauncherContext"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
