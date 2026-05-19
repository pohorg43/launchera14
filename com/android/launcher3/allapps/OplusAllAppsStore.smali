.class public Lcom/android/launcher3/allapps/OplusAllAppsStore;
.super Lcom/android/launcher3/allapps/AllAppsStore;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OplusAllAppsStore"


# instance fields
.field private mAsyncTraceCallback:Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;

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

.field private final mContext:Landroid/content/Context;

.field private mPendingNotifyUpdateRunnable:Ljava/lang/Runnable;

.field private final mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/allapps/AllAppsStore;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;

    invoke-direct {p1, p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsStore;)V

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mAsyncTraceCallback:Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/allapps/OplusAllAppsStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->notifyAnimationStart()V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher3/allapps/OplusAllAppsStore;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->notifyAnimationEnd()V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/BubbleTextView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->lambda$onAppUpdateDotSwitchChange$1(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/BubbleTextView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->lambda$onAppHighTempStateChanged$2(Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public static synthetic e(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->lambda$updateProgressBar$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V

    return-void
.end method

.method public static equals(Ljava/util/List;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_51

    if-nez p1, :cond_a

    goto :goto_51

    :cond_a
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_15

    return v1

    :cond_15
    move v2, v1

    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_50

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    if-ne v3, v4, :cond_2b

    goto :goto_4c

    :cond_2b
    if-eqz v3, :cond_4f

    if-nez v4, :cond_30

    goto :goto_4f

    :cond_30
    iget-object v5, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_4f

    iget-object v6, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4f

    iget v5, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    iget v6, v4, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    if-ne v5, v6, :cond_4f

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v3

    invoke-virtual {v4}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v4

    if-ne v3, v4, :cond_4f

    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_4f
    :goto_4f
    return v1

    :cond_50
    return v0

    :cond_51
    :goto_51
    return v1
.end method

.method private static synthetic lambda$onAppHighTempStateChanged$2(Lcom/android/launcher3/BubbleTextView;)V
    .registers 3

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_18

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v1, v0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyHighTempProtectedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    :cond_18
    return-void
.end method

.method private static synthetic lambda$onAppUpdateDotSwitchChange$1(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_9

    check-cast p0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->onAppUpdateDotSwitchChange()V

    :cond_9
    return-void
.end method

.method private static synthetic lambda$updateProgressBar$0(Lcom/android/launcher3/model/data/AppInfo;Lcom/android/launcher3/BubbleTextView;)V
    .registers 7

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_9c

    iget-object v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v1

    if-nez v1, :cond_24

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v1}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_24

    :cond_19
    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p0, :cond_9c

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    goto/16 :goto_9c

    :cond_24
    :goto_24
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2d

    const-string v1, ""

    goto :goto_35

    :cond_2d
    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9c

    iget-object v2, p0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-object v1, p0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_6d

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v3

    aput-object p0, v1, v2

    const-string v0, "[updateProgressBar] itemInfo:%s,appInfo:%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallApp"

    const-string v4, "OplusAllAppsStore"

    invoke-static {v1, v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6d
    instance-of v0, p1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v0, :cond_99

    instance-of v0, p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    if-eqz v0, :cond_87

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    check-cast p0, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget p0, p0, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_82

    goto :goto_83

    :cond_82
    move v2, v3

    :goto_83
    invoke-interface {v0, p0, v2, v3}, Lcom/android/launcher3/IBubbleTextViewExt;->applyOplusProgressLevel(IZZ)V

    goto :goto_9c

    :cond_87
    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result p0

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_94

    goto :goto_95

    :cond_94
    move v2, v3

    :goto_95
    invoke-interface {v0, p0, v2, v3}, Lcom/android/launcher3/IBubbleTextViewExt;->applyOplusProgressLevel(IZZ)V

    goto :goto_9c

    :cond_99
    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_9c
    :goto_9c
    return-void
.end method

.method private notifyAnimationEnd()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPendingNotifyUpdateRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPendingNotifyUpdateRunnable:Ljava/lang/Runnable;

    :cond_c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "OplusAllAppsStore"

    const-string/jumbo v0, "notifyAnimationEnd PendingNotifyUpdate"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private notifyAnimationStart()V
    .registers 2

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_e

    const-string p0, "OplusAllAppsStore"

    const-string/jumbo v0, "notifyAnimationStart PendingNotifyUpdate"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method private processPredictedAppComponents(Ljava/util/List;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/common/util/OplusComponentKeyMapper;",
            ">;I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/common/util/OplusComponentKeyMapper;

    invoke-virtual {v1, p0}, Lcom/android/common/util/OplusComponentKeyMapper;->getApp(Lcom/android/launcher3/allapps/AllAppsStore;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    if-eqz v1, :cond_2d

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/AppInfo;->clone()Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, p2, :cond_14

    :cond_33
    return-object v0
.end method

.method private removeNoExistComponent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 4

    if-nez p1, :cond_b

    const-string p0, "OplusAllAppsStore"

    const-string/jumbo p1, "removeNoExistComponent context is null "

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_b
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addOrUpdateApps(Landroid/content/Context;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mContext:Landroid/content/Context;

    instance-of v0, v0, Lcom/android/launcher3/secondarydisplay/SecondaryDisplayLauncher;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_21

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_21

    :cond_1f
    move v0, v1

    goto :goto_22

    :cond_21
    :goto_21
    move v0, v2

    :goto_22
    if-nez v0, :cond_2b

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v3

    if-nez v3, :cond_2b

    return-void

    :cond_2b
    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->updatePredictedApps(Ljava/util/List;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_32
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz p3, :cond_4f

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {p0, p1, v4, v5}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->removeNoExistComponent(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)V

    :cond_4f
    iget-object v4, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v6, v3, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v7, v3, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v5, v6, v7}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    :cond_5e
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result p1

    if-nez p1, :cond_6c

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_79

    :cond_6c
    iget-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result p1

    if-eqz p1, :cond_79

    move v1, v2

    :cond_79
    if-nez v0, :cond_7d

    if-eqz v1, :cond_80

    :cond_7d
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->notifyUpdate()V

    :cond_80
    return-void
.end method

.method public addOrUpdateApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->addOrUpdateApps(Landroid/content/Context;Ljava/util/List;Z)V

    return-void
.end method

.method public getApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method

.method public getApps()[Lcom/android/launcher3/model/data/AppInfo;
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/model/data/AppInfo;->EMPTY_ARRAY:[Lcom/android/launcher3/model/data/AppInfo;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method

.method public getPredictedApps()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    return-object p0
.end method

.method public notifyUpdate()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->AVOID_ANIM_TYPES:Ljava/util/List;

    invoke-static {v0}, Lcom/android/launcher3/card/LauncherCardUtil;->checkDuringAnimation(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Landroidx/appcompat/widget/g;

    invoke-direct {v0, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/allapps/OplusAllAppsStore;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPendingNotifyUpdateRunnable:Ljava/lang/Runnable;

    const-string p0, "OplusAllAppsStore"

    const-string/jumbo v0, "notifyUpdate delayed by animation"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-super {p0}, Lcom/android/launcher3/allapps/AllAppsStore;->notifyUpdate()V

    return-void
.end method

.method public onAppHighTempStateChanged()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/android/launcher3/allapps/n;->a:Lcom/android/launcher3/allapps/n;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onAppUpdateDotSwitchChange()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    sget-object v0, Lcom/android/launcher3/allapps/m;->a:Lcom/android/launcher3/allapps/m;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public registerAsyncTraceListener()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mAsyncTraceCallback:Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;

    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->registerAsyncTraceListener(Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;)V

    return-void
.end method

.method public setApps([Lcom/android/launcher3/model/data/AppInfo;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mApps:[Lcom/android/launcher3/model/data/AppInfo;

    iput p2, p0, Lcom/android/launcher3/allapps/AllAppsStore;->mModelFlags:I

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    if-eqz p1, :cond_12

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->addOrUpdateApps(Ljava/util/List;)V

    :cond_12
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_a

    if-eqz p2, :cond_30

    :cond_a
    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "test,setPredictedApps,mPredictedApps:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OplusAllAppsStore"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsStore;->notifyUpdate()V

    :cond_30
    return-void
.end method

.method public unregisterAsyncTraceListener()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mAsyncTraceCallback:Lcom/android/launcher3/allapps/OplusAllAppsStore$AsyncTraceCallback;

    invoke-static {p0}, Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil;->unregisterAsyncTraceListener(Lcom/android/launcher3/allapps/AllAppsAvoidUpdateDuringAnimUtil$AsyncTraceListener;)V

    return-void
.end method

.method public updateAppForSort(Ljava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mComponentToAppMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    :goto_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->resetAlphabeticIndex()V

    goto :goto_a

    :cond_24
    return-void
.end method

.method public updatePredictedApps(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_a

    const-string p0, "OplusAllAppsStore"

    const-string p1, "list is null."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/OplusAllAppsStore;->mPredictedApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/AppInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v4, v2, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/model/data/AppInfo;->onAppUpdated(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_20

    :cond_48
    return-void
.end method

.method public updateProgressBar(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/allapps/d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/launcher3/allapps/d;-><init>(Lcom/android/launcher3/model/data/AppInfo;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsStore;->updateAllIcons(Ljava/util/function/Consumer;)V

    return-void
.end method
