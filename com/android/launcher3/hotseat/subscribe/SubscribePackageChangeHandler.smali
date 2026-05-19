.class public final Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final FILE_MANAGER_PACKGE_NAME:Ljava/lang/String; = "com.coloros.smartsidebar"

.field public static final INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;

.field private static final TAG:Ljava/lang/String; = "SubscribePackageChangeHandler"

.field private static final UPDATE_STATE_DELAY:J = 0x1f4L

.field private static final globalSearchPackages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static updateFileManagerStateRunnable:Ljava/lang/Runnable;

.field private static updateGlobalSearchStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;

    invoke-direct {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;-><init>()V

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->INSTANCE:Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;

    const-string v0, "com.oppo.quicksearchbox"

    const-string v1, "com.heytap.quicksearchbox"

    const-string v2, "com.google.android.googlequicksearchbox"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Li4/o;->g([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->globalSearchPackages:Ljava/util/List;

    sget-object v0, Lcom/android/launcher3/h3;->c:Lcom/android/launcher3/h3;

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateGlobalSearchStateRunnable:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/launcher/guide/side/d;->c:Lcom/android/launcher/guide/side/d;

    sput-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateFileManagerStateRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateFileManagerStateRunnable$lambda$1()V

    return-void
.end method

.method public static synthetic b()V
    .registers 0

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateGlobalSearchStateRunnable$lambda$0()V

    return-void
.end method

.method public static final isGlobalSearchApplicationEnable()Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Taskbar"

    const-string v1, "SubscribePackageChangeHandler"

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "search"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type android.app.SearchManager"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/SearchManager;

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_19
    invoke-virtual {v2}, Landroid/app/SearchManager;->getGlobalSearchActivity()Landroid/content/ComponentName;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/IllegalStateException; {:try_start_19 .. :try_end_1d} :catch_1e

    goto :goto_4e

    :catch_1e
    move-exception v2

    const-string v5, "globalSearchActivity exception:"

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_44

    const/4 v5, 0x2

    const-string v6, "isn\'t unlocked"

    invoke-static {v2, v6, v4, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v2

    if-ne v2, v3, :cond_44

    move v2, v3

    goto :goto_45

    :cond_44
    move v2, v4

    :goto_45
    if-eqz v2, :cond_4d

    const-string v2, "isGlobalSearchApplicationEnable,user isn\'t unlocked,return default enable"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_4d
    const/4 v2, 0x0

    :goto_4e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "globalSearchActivity,globalSearchComponent:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v1, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_65

    return v4

    :cond_65
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v2

    const-string v5, "globalSearchActivity,getComponentEnabledSetting:"

    invoke-static {v5, v2, v0, v1}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7c

    if-ne v2, v3, :cond_7b

    goto :goto_7c

    :cond_7b
    move v3, v4

    :cond_7c
    :goto_7c
    return v3
.end method

.method public static final onFileManagerAppStateChange()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Taskbar"

    const-string v1, "SubscribePackageChangeHandler"

    const-string/jumbo v2, "onFileManagerAppStateChange"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateFileManagerStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateFileManagerStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final onGlobalSearchAppStateChange()V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "Taskbar"

    const-string v1, "SubscribePackageChangeHandler"

    const-string/jumbo v2, "onGlobalSearchAppStateChange"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateGlobalSearchStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->updateGlobalSearchStateRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final onSubscribeItemPackageChanged(Landroid/content/Intent;)V
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "intent"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_14

    return-void

    :cond_14
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v1

    const/4 v2, 0x2

    const-string v3, "com.coloros.smartsidebar"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_58

    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v6, "android.intent.action.PACKAGE_CHANGED"

    invoke-static {v6, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-static {v3, v0, v5, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_58

    sget-object v1, Lcom/android/common/util/IntentUtils;->Companion:Lcom/android/common/util/IntentUtils$Companion;

    const-string v6, "android.intent.extra.changed_component_name_list"

    invoke-virtual {v1, p0, v6}, Lcom/android/common/util/IntentUtils$Companion;->getStringArrayExtra(Landroid/content/Intent;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4c

    array-length v1, p0

    move v6, v5

    move v7, v6

    :goto_3e
    if-ge v6, v1, :cond_4d

    aget-object v8, p0, v6

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_49

    move v7, v4

    :cond_49
    add-int/lit8 v6, v6, 0x1

    goto :goto_3e

    :cond_4c
    move v7, v5

    :cond_4d
    if-nez v7, :cond_58

    const-string p0, "SubscribePackageChangeHandler"

    const-string/jumbo v0, "tablet do not need subscribe smartside bar component change."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_58
    invoke-static {}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getOplusLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    if-eqz p0, :cond_65

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->isWorkspaceLoading()Z

    move-result p0

    if-nez p0, :cond_65

    goto :goto_66

    :cond_65
    move v4, v5

    :goto_66
    if-eqz v4, :cond_7c

    sget-object p0, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->globalSearchPackages:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_73

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->onGlobalSearchAppStateChange()V

    :cond_73
    invoke-static {v3, v0, v5, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result p0

    if-eqz p0, :cond_7c

    invoke-static {}, Lcom/android/launcher3/hotseat/subscribe/SubscribePackageChangeHandler;->onFileManagerAppStateChange()V

    :cond_7c
    return-void
.end method

.method private static final updateFileManagerStateRunnable$lambda$1()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->updateFileManagerState()V

    return-void
.end method

.method private static final updateGlobalSearchStateRunnable$lambda$0()V
    .registers 1

    sget-object v0, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->Companion:Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper$Companion;->getInstance()Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/hotseat/subscribe/SubscribeItemStateHelper;->updateGlobalSearchState()V

    return-void
.end method
