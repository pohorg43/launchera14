.class public Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/locksetting/contract/LockSettingContract$Model;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;,
        Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;,
        Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;
    }
.end annotation


# static fields
.field public static final ACTIVITY_DIALTACTSACTIVITYALIAS:Ljava/lang/String; = "com.android.contacts.DialtactsActivityAlias"

.field public static final ACTIVITY_STK_2:Ljava/lang/String;

.field public static final PKG_ONEKEYLOCKSCREEN:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "LockSettingModel"


# instance fields
.field public final mAppIconsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mIOExecutor:Ljava/util/concurrent/ExecutorService;

.field private mIconProvider:Lcom/android/launcher3/icons/IconProvider;

.field private final mInLauncherApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInstalledAppPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadIconRunMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

.field private final mWorker:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const v0, 0x7f120035

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->ACTIVITY_STK_2:Ljava/lang/String;

    const v0, 0x7f120036

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->PKG_ONEKEYLOCKSCREEN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mAppIconsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInstalledAppPkgs:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInLauncherApps:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mLoadIconRunMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mIOExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {v1, v0}, Lcom/android/launcher3/icons/IconProvider;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    invoke-direct {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->loadAllInstalledApp()V

    return-void
.end method

.method public static synthetic a(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$loadAllInstalledApp$0(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;)Lcom/android/launcher3/icons/IconProvider;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mIconProvider:Lcom/android/launcher3/icons/IconProvider;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->updateIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/pm/LauncherActivityInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$loadAllInstalledApp$2(Landroid/content/pm/LauncherActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$loadAllInstalledApp$1(Landroid/content/pm/PackageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private canExcludeApp(Landroid/content/pm/LauncherActivityInfo;ILjava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherActivityInfo;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInstalledAppPkgs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    return v2

    :cond_1d
    const-string v1, "com.android.contacts.DialtactsActivityAlias"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_82

    sget-object v1, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->ACTIVITY_STK_2:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    goto :goto_82

    :cond_2e
    sget-object v1, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->PKG_ONEKEYLOCKSCREEN:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    return v2

    :cond_37
    invoke-direct {p0, v0, p3, p4, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->isRepeated(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z

    move-result p3

    if-eqz p3, :cond_3e

    return v2

    :cond_3e
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object p3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p4

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p4, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSupportLock(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_52

    return v2

    :cond_52
    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object p3

    invoke-virtual {p3, v0, p1}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isForceExludedTask(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5d

    return v2

    :cond_5d
    invoke-static {}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->getInstance()Lcom/oplus/quickstep/privacy/OplusPrivacyManager;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/oplus/quickstep/privacy/OplusPrivacyManager;->isHiddenPkg(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_68

    return v2

    :cond_68
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/OplusAppFilter;->newInstance(Landroid/content/Context;)Lcom/android/launcher3/OplusAppFilter;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/OplusAppFilter;->shouldShowApp(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-nez p0, :cond_80

    const-string p0, "canExcludeApp: not show packageName = "

    const-string p1, "LockSettingModel"

    invoke-static {p0, v0, p1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_80
    const/4 p0, 0x0

    return p0

    :cond_82
    :goto_82
    return v2
.end method

.method private clasifyMultiApp(Landroid/content/pm/LauncherApps;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/oplus/quickstep/applock/OplusLockManager;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_39

    :cond_19
    const/4 v0, 0x0

    new-instance v2, Landroid/os/UserHandle;

    const/16 v3, 0x3e7

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {p0, p1, v0, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->getActivityList(Landroid/content/pm/LauncherApps;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_39

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2e

    goto :goto_39

    :cond_2e
    const/16 v9, 0x3e7

    move-object v4, p0

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->classifyApp(Ljava/util/List;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    const/4 p0, 0x1

    return p0

    :cond_39
    :goto_39
    return v1
.end method

.method private classifyApp(Ljava/util/List;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Lcom/oplus/quickstep/applock/OplusLockManager;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;I)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p5, p3, p4}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->canExcludeApp(Landroid/content/pm/LauncherActivityInfo;ILjava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_4

    :cond_1f
    new-instance v2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    invoke-direct {v2, v0, p5}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;-><init>(Landroid/content/pm/LauncherActivityInfo;I)V

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->setLocked(Z)V

    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_36
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->setLocked(Z)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3e
    return-void
.end method

.method private classifyLauncherApps(Landroid/content/pm/LauncherApps;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps;",
            "Lcom/oplus/quickstep/applock/OplusLockManager;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;",
            ")Z"
        }
    .end annotation

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->getActivityList(Landroid/content/pm/LauncherApps;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_23

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_12

    goto :goto_23

    :cond_12
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v2 .. v7}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->classifyApp(Ljava/util/List;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    const/4 p0, 0x1

    return p0

    :cond_23
    :goto_23
    const-string p1, "LockSettingModel"

    const-string p2, "DesktopShortcutMenuAppFetcher -- doInBackground packages = null"

    invoke-static {p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p5, v1, v1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->updateData(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic d(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$loadAllInstalledApp$3(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$updateData$5(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic f(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$fetchData$4(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)V

    return-void
.end method

.method public static synthetic g(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->lambda$updateIcon$6(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method private getActivityList(Landroid/content/pm/LauncherApps;Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/LauncherApps;",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_e

    :catch_5
    move-exception p0

    const-string p1, "getActivityList: "

    const-string p2, "LockSettingModel"

    invoke-static {p1, p0, p2}, Lcom/android/common/c;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method private isRepeated(Ljava/lang/String;Ljava/util/List;Ljava/util/List;I)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;I)Z"
        }
    .end annotation

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/oplus/quickstep/applock/AppLockModel;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    const/4 p4, 0x1

    sub-int/2addr p1, p4

    :goto_e
    if-ltz p1, :cond_22

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    iget-object v0, v0, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    return p4

    :cond_1f
    add-int/lit8 p1, p1, -0x1

    goto :goto_e

    :cond_22
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, p4

    :goto_27
    if-ltz p1, :cond_3b

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;

    iget-object p2, p2, Lcom/oplus/quickstep/locksetting/contract/AppEntry;->mPkgFormatStr:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_38

    return p4

    :cond_38
    add-int/lit8 p1, p1, -0x1

    goto :goto_27

    :cond_3b
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$fetchData$4(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->unlockUnsupportedApps(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v2, v0

    move-object v3, v7

    move-object v4, v8

    move-object v5, v9

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->classifyLauncherApps(Landroid/content/pm/LauncherApps;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)Z

    move-result v1

    if-nez v1, :cond_28

    return-void

    :cond_28
    invoke-direct {p0, v0, v7, v8, v9}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->clasifyMultiApp(Landroid/content/pm/LauncherApps;Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    sget-object v0, Lcom/android/common/sort/AppNameComparator;->COMPLEX_COMPARATOR:Lcom/android/common/sort/AppNameComparator;

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0, p1, v8, v9}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->updateData(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private static synthetic lambda$loadAllInstalledApp$0(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    if-eqz p0, :cond_8

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private static synthetic lambda$loadAllInstalledApp$1(Landroid/content/pm/PackageInfo;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$loadAllInstalledApp$2(Landroid/content/pm/LauncherActivityInfo;)Z
    .registers 2

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method private static synthetic lambda$loadAllInstalledApp$3(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateData$5(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;->onFetchDataResult(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private synthetic lambda$updateIcon$6(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;->onIconLoad(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mLoadIconRunMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private loadAllInstalledApp()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_47

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_47

    const-string v1, "loadAllInstalledApp() resolveInfos.size = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LockSettingModel"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/c0;->d:Lcom/android/common/util/c0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/locksetting/contract/b;->a:Lcom/oplus/quickstep/locksetting/contract/b;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object v1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInstalledAppPkgs:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/launcher/h;

    const/4 v3, 0x3

    invoke-direct {v2, v1, v3}, Lcom/android/launcher/h;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    :cond_47
    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mContext:Landroid/content/Context;

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/f0;->c:Lcom/android/common/util/f0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/common/util/n0;->c:Lcom/android/common/util/n0;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInLauncherApps:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/launcher3/k0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/k0;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unlockUnsupportedApps(Lcom/oplus/quickstep/applock/OplusLockManager;)V
    .registers 7

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->getLockAppOfList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    return-void

    :cond_b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/oplus/quickstep/applock/AppLockModel;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_22

    goto :goto_f

    :cond_22
    const/4 v2, 0x0

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInstalledAppPkgs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mInLauncherApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v4, 0x1

    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v4, v2, v3, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlock unsupported app : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "LockSettingModel"

    invoke-static {v1, v3, v2}, Lcom/android/common/util/w;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_4f
    return-void
.end method

.method private updateData(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/quickstep/locksetting/contract/AppEntry;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/quickstep/f1;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/quickstep/f1;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mMainExecutor:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/oplus/quickstep/locksetting/contract/a;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/oplus/quickstep/locksetting/contract/a;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public fetchData(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mIOExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/shared/navigationbar/a;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/shared/navigationbar/a;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnFetchDataResultListener;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadApplicationIcon(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    new-instance v0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;-><init>(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;Ljava/lang/String;Landroid/content/pm/LauncherActivityInfo;)V

    iget-object p1, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mLoadIconRunMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mWorker:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mLoadIconRunMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mLoadIconRunMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;

    iget-object v2, p0, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel;->mWorker:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;->access$002(Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$LoadIconRunnable;Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;)Lcom/oplus/quickstep/locksetting/contract/LockSettingModel$OnIconLoadListener;

    goto :goto_a

    :cond_28
    return-void
.end method
