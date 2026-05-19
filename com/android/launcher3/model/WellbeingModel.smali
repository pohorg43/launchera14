.class public final Lcom/android/launcher3/model/WellbeingModel;
.super Lcom/android/launcher3/util/BgObjectWithLooper;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1d
.end annotation


# static fields
.field private static final DB_NAME_MINIMAL_DEVICE:Ljava/lang/String; = "minimal.db"

.field private static final DEBUG:Z = false

.field private static final EXTRA_ACTION:Ljava/lang/String; = "action"

.field private static final EXTRA_ACTIONS:Ljava/lang/String; = "actions"

.field private static final EXTRA_MAX_NUM_ACTIONS_SHOWN:Ljava/lang/String; = "max_num_actions_shown"

.field private static final EXTRA_MINIMAL_DEVICE_STATE:Ljava/lang/String; = "minimal_device_state"

.field private static final EXTRA_PACKAGES:Ljava/lang/String; = "packages"

.field private static final EXTRA_SUCCESS:Ljava/lang/String; = "success"

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/model/WellbeingModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final IN_MINIMAL_DEVICE:I = 0x2

.field private static final METHOD_GET_ACTIONS:Ljava/lang/String; = "get_actions"

.field private static final METHOD_GET_MINIMAL_DEVICE_CONFIG:Ljava/lang/String; = "get_minimal_device_config"

.field private static final PATH_ACTIONS:Ljava/lang/String; = "actions"

.field private static final PATH_MINIMAL_DEVICE:Ljava/lang/String; = "minimal_device"

.field private static final RETRY_TIMES_MS:[I

.field public static final SHORTCUT_FACTORY:Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher3/BaseDraggingActivity;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "WellbeingModel"

.field private static final UNKNOWN_MINIMAL_DEVICE_STATE:I


# instance fields
.field private final mActionIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/RemoteAction;",
            ">;"
        }
    .end annotation
.end field

.field public mBroadcastReceiverPkg:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field public mBroadcastReceiverPkgRemoved:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private final mContext:Landroid/content/Context;

.field private mIsInTest:Z

.field private final mModelLock:Ljava/lang/Object;

.field private final mPackageToActionId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWellbeingProviderPkg:Ljava/lang/String;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_16

    sput-object v0, Lcom/android/launcher3/model/WellbeingModel;->RETRY_TIMES_MS:[I

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/model/b2;->a:Lcom/android/launcher3/model/b2;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v0, Lcom/android/launcher3/model/a2;->a:Lcom/android/launcher3/model/a2;

    sput-object v0, Lcom/android/launcher3/model/WellbeingModel;->SHORTCUT_FACTORY:Lcom/android/launcher3/popup/SystemShortcut$Factory;

    return-void

    :array_16
    .array-data 4
        0x1388
        0x3a98
        0x7530
    .end array-data
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/util/BgObjectWithLooper;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mActionIdMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    const v0, 0x7f1206ac

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    const-string p1, "WellbeingHandler"

    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/BgObjectWithLooper;->initializeInBackground(Ljava/lang/String;)V

    return-void
.end method

.method private apiBuilder()Landroid/net/Uri$Builder;
    .registers 3

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".api"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/android/launcher3/model/WellbeingModel;Landroid/net/Uri;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/WellbeingModel;->onWellbeingUriChanged(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/WellbeingModel;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/WellbeingModel;->onAppPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic d(I)[Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/model/WellbeingModel;->lambda$updateActionsWithRetry$2(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/model/WellbeingModel;->lambda$updateActionsWithRetry$1(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Landroid/content/Context;)Lcom/android/launcher3/model/WellbeingModel;
    .registers 2

    new-instance v0, Lcom/android/launcher3/model/WellbeingModel;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/WellbeingModel;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic g(Lcom/android/launcher3/model/WellbeingModel;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/WellbeingModel;->lambda$onInitialized$0(Landroid/content/Intent;)V

    return-void
.end method

.method private getShortcutForApp(Ljava/lang/String;ILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 9
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertUIThread()V

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-eq p2, v0, :cond_2a

    iget-boolean p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz p0, :cond_29

    const-string p0, "WellbeingModel"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getShortcutForApp ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: not current user"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    return-object v1

    :cond_2a
    iget-object p2, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_2d
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_40

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mActionIdMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    goto :goto_41

    :cond_40
    move-object v0, v1

    :goto_41
    if-nez v0, :cond_64

    iget-boolean p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz p0, :cond_62

    const-string p0, "WellbeingModel"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getShortcutForApp ["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: no action"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_62
    monitor-exit p2

    return-object v1

    :cond_64
    iget-boolean p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz p0, :cond_8f

    const-string p0, "WellbeingModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutForApp ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: action: \'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8f
    new-instance p0, Lcom/android/launcher3/popup/RemoteActionShortcut;

    invoke-direct {p0, v0, p3, p4, p5}, Lcom/android/launcher3/popup/RemoteActionShortcut;-><init>(Landroid/app/RemoteAction;Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    monitor-exit p2

    return-object p0

    :catchall_96
    move-exception p0

    monitor-exit p2
    :try_end_98
    .catchall {:try_start_2d .. :try_end_98} :catchall_96

    throw p0
.end method

.method public static synthetic h(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/model/WellbeingModel;->lambda$static$4(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/WellbeingModel;->lambda$updateActionsWithRetry$3(ILjava/lang/String;)V

    return-void
.end method

.method private isInMinimalDeviceMode()Z
    .registers 7
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MINIMAL_DEVICE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    const-string v2, "WellbeingModel"

    if-eqz v0, :cond_15

    const-string v0, "isInMinimalDeviceMode() called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    :try_start_20
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_2a} :catch_55

    const/4 v4, 0x0

    if-nez v3, :cond_2e

    goto :goto_34

    :cond_2e
    :try_start_2e
    const-string v5, "get_minimal_device_config"

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    :goto_34
    if-eqz v4, :cond_42

    const-string/jumbo v5, "minimal_device_state"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_3d
    .catchall {:try_start_2e .. :try_end_3d} :catchall_49

    const/4 v5, 0x2

    if-ne v4, v5, :cond_42

    const/4 v4, 0x1

    goto :goto_43

    :cond_42
    move v4, v1

    :goto_43
    if-eqz v3, :cond_48

    :try_start_45
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_55

    :cond_48
    return v4

    :catchall_49
    move-exception v4

    if-eqz v3, :cond_54

    :try_start_4c
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_4f
    .catchall {:try_start_4c .. :try_end_4f} :catchall_50

    goto :goto_54

    :catchall_50
    move-exception v3

    :try_start_51
    invoke-virtual {v4, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_54
    :goto_54
    throw v4
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_55} :catch_55

    :catch_55
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to retrieve data from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-nez p0, :cond_7e

    if-eqz p0, :cond_7d

    const-string p0, "isInMinimalDeviceMode(): finished"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7d
    return v1

    :cond_7e
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private synthetic lambda$onInitialized$0(Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->restartObserver()V

    return-void
.end method

.method private static synthetic lambda$static$4(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 10

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    goto :goto_26

    :cond_8
    sget-object v0, Lcom/android/launcher3/model/WellbeingModel;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/model/WellbeingModel;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/model/WellbeingModel;->getShortcutForApp(Ljava/lang/String;ILcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    :goto_26
    return-object p0
.end method

.method private static synthetic lambda$updateActionsWithRetry$1(Landroid/content/pm/LauncherActivityInfo;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$updateActionsWithRetry$2(I)[Ljava/lang/String;
    .registers 1

    new-array p0, p0, [Ljava/lang/String;

    return-object p0
.end method

.method private synthetic lambda$updateActionsWithRetry$3(ILjava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_18

    const-string v0, "Retrying; attempt "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WellbeingModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    add-int/lit8 p1, p1, 0x1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/model/WellbeingModel;->updateActionsWithRetry(ILjava/lang/String;)V

    return-void
.end method

.method private onAppPackageChanged(Landroid/content/Intent;)V
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_1f

    const-string v0, "WellbeingModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Changes in apps: intent = ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_33

    goto :goto_5d

    :cond_33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_47
    iget-object p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    goto :goto_5d

    :catchall_4e
    move-exception p0

    monitor-exit v1
    :try_end_50
    .catchall {:try_start_47 .. :try_end_50} :catchall_4e

    throw p0

    :cond_51
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    const/4 p1, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/model/WellbeingModel;->updateActionsWithRetry(ILjava/lang/String;)V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private onWellbeingUriChanged(Landroid/net/Uri;)V
    .registers 5
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentObserver.onChange() called with: uri = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WellbeingModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "actions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->updateAllPackages()V

    goto :goto_8c

    :cond_32
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "minimal_device"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_8c

    sget-object p1, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_MINIMAL_DEVICE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {p1}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result p1

    if-nez p1, :cond_48

    return-void

    :cond_48
    iget-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "minimal.db"

    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->isInMinimalDeviceMode()Z

    move-result v1

    if-eqz v1, :cond_74

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".api"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KEY_LAYOUT_PROVIDER_AUTHORITY"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_74
    sget-object v0, Lcom/android/launcher3/InvariantDeviceProfile;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget-object v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->dbFile:Ljava/lang/String;

    :goto_80
    iget-object p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "switch_database"

    invoke-static {p0, v1, v0, p1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_8c
    :goto_8c
    return-void
.end method

.method private restartObserver()V
    .registers 6
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "actions"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string/jumbo v3, "minimal_device"

    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    :try_start_28
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_33} :catch_34

    goto :goto_57

    :catch_34
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to register content observer for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WellbeingModel"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-nez v1, :cond_5b

    :goto_57
    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->updateAllPackages()V

    return-void

    :cond_5b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method private updateActions([Ljava/lang/String;)Z
    .registers 16
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    array-length v0, p1

    const/4 v1, 0x1

    if-nez v0, :cond_5

    return v1

    :cond_5
    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_27

    const-string v0, "WellbeingModel"

    const-string/jumbo v2, "retrieveActions() called with: packageNames = ["

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-static {v3, p1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertNonUiThread()V

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->apiBuilder()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_33
    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v3
    :try_end_3d
    .catch Landroid/os/DeadObjectException; {:try_start_33 .. :try_end_3d} :catch_131
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3d} :catch_107

    if-nez v3, :cond_51

    :try_start_3f
    iget-boolean p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz p1, :cond_4b

    const-string p1, "WellbeingModel"

    const-string/jumbo v4, "retrieveActions(): null provider"

    invoke-static {p1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4b
    .catchall {:try_start_3f .. :try_end_4b} :catchall_fb

    :cond_4b
    if-eqz v3, :cond_50

    :try_start_4d
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_50
    .catch Landroid/os/DeadObjectException; {:try_start_4d .. :try_end_50} :catch_131
    .catch Ljava/lang/Exception; {:try_start_4d .. :try_end_50} :catch_107

    :cond_50
    return v2

    :cond_51
    :try_start_51
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "packages"

    invoke-virtual {v4, v5, p1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string/jumbo v5, "max_num_actions_shown"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v5, "get_actions"

    const/4 v6, 0x0

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    const-string/jumbo v5, "success"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5
    :try_end_70
    .catchall {:try_start_51 .. :try_end_70} :catchall_fb

    if-nez v5, :cond_76

    :try_start_72
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_75
    .catch Landroid/os/DeadObjectException; {:try_start_72 .. :try_end_75} :catch_131
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_107

    return v2

    :cond_76
    :try_start_76
    iget-object v5, p0, Lcom/android/launcher3/model/WellbeingModel;->mModelLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_79
    .catchall {:try_start_76 .. :try_end_79} :catchall_fb

    :try_start_79
    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    iget-object v6, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/common/util/n;

    invoke-direct {v7, v6}, Lcom/android/common/util/n;-><init>(Ljava/util/Map;)V

    invoke-interface {p1, v7}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    const-string p1, "actions"

    invoke-virtual {v4, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v6, p1

    move v7, v2

    :goto_92
    if-ge v7, v6, :cond_e7

    aget-object v8, p1, v7

    invoke-virtual {v4, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/model/WellbeingModel;->mActionIdMap:Ljava/util/Map;

    const-string v11, "action"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/app/RemoteAction;

    invoke-interface {v10, v8, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v10, "packages"

    invoke-virtual {v9, v10}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v10, :cond_d6

    const-string v10, "WellbeingModel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "....actionId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", packages: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", "

    invoke-static {v12, v9}, Ljava/lang/String;->join(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d6
    array-length v10, v9

    move v11, v2

    :goto_d8
    if-ge v11, v10, :cond_e4

    aget-object v12, v9, v11

    iget-object v13, p0, Lcom/android/launcher3/model/WellbeingModel;->mPackageToActionId:Ljava/util/Map;

    invoke-interface {v13, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_d8

    :cond_e4
    add-int/lit8 v7, v7, 0x1

    goto :goto_92

    :cond_e7
    monitor-exit v5
    :try_end_e8
    .catchall {:try_start_79 .. :try_end_e8} :catchall_f8

    :try_start_e8
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_eb
    .catch Landroid/os/DeadObjectException; {:try_start_e8 .. :try_end_eb} :catch_131
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_eb} :catch_107

    iget-boolean p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz p0, :cond_f7

    const-string p0, "WellbeingModel"

    const-string/jumbo p1, "retrieveActions(): finished"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f7
    return v1

    :catchall_f8
    move-exception p1

    :try_start_f9
    monitor-exit v5
    :try_end_fa
    .catchall {:try_start_f9 .. :try_end_fa} :catchall_f8

    :try_start_fa
    throw p1
    :try_end_fb
    .catchall {:try_start_fa .. :try_end_fb} :catchall_fb

    :catchall_fb
    move-exception p1

    if-eqz v3, :cond_106

    :try_start_fe
    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->close()V
    :try_end_101
    .catchall {:try_start_fe .. :try_end_101} :catchall_102

    goto :goto_106

    :catchall_102
    move-exception v3

    :try_start_103
    invoke-virtual {p1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_106
    :goto_106
    throw p1
    :try_end_107
    .catch Landroid/os/DeadObjectException; {:try_start_103 .. :try_end_107} :catch_131
    .catch Ljava/lang/Exception; {:try_start_103 .. :try_end_107} :catch_107

    :catch_107
    move-exception p1

    const-string v2, "WellbeingModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve data from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-nez p0, :cond_12b

    return v1

    :cond_12b
    new-instance p0, Ljava/lang/RuntimeException;

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_131
    const-string p0, "WellbeingModel"

    const-string/jumbo p1, "retrieveActions(): DeadObjectException"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private updateActionsWithRetry(ILjava/lang/String;)V
    .registers 6
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateActionsWithRetry(); retryCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WellbeingModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_23
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

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

    sget-object v1, Lcom/android/launcher3/allapps/b;->c:Lcom/android/launcher3/allapps/b;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->distinct()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/c2;->a:Lcom/android/launcher3/model/c2;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_59

    :cond_53
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    :goto_59
    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/WellbeingModel;->updateActions([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    return-void

    :cond_65
    sget-object v0, Lcom/android/launcher3/model/WellbeingModel;->RETRY_TIMES_MS:[I

    array-length v1, v0

    if-lt p1, v1, :cond_6b

    return-void

    :cond_6b
    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/launcher/badge/c;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher3/model/WellbeingModel;ILjava/lang/String;)V

    aget p0, v0, p1

    int-to-long p0, p0

    invoke-virtual {v1, v2, p2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method

.method private updateAllPackages()V
    .registers 3
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation

    iget-boolean v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    if-eqz v0, :cond_c

    const-string v0, "WellbeingModel"

    const-string/jumbo v1, "updateAllPackages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/model/WellbeingModel;->updateActionsWithRetry(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mBroadcastReceiverPkg:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    if-eqz v0, :cond_18

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/common/util/ContextExtKt;->asyncUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_18
    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mBroadcastReceiverPkgRemoved:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    if-eqz v0, :cond_2c

    iget-object p0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/common/util/ContextExtKt;->asyncUnregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_2c

    :catch_22
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "WellbeingModel"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void
.end method

.method public onInitialized(Landroid/os/Looper;)V
    .registers 9

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/common/a;

    invoke-direct {p1, p0}, Lcom/android/common/a;-><init>(Lcom/android/launcher3/model/WellbeingModel;)V

    invoke-static {v0, p1}, Lcom/android/launcher3/Utilities;->newContentObserver(Landroid/os/Handler;Ljava/util/function/Consumer;)Landroid/database/ContentObserver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContentObserver:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    new-instance p1, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v0, Landroidx/core/location/a;

    invoke-direct {v0, p0}, Landroidx/core/location/a;-><init>(Lcom/android/launcher3/model/WellbeingModel;)V

    invoke-direct {p1, v0}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mBroadcastReceiverPkg:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mWellbeingProviderPkg:Ljava/lang/String;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    const-string v3, "android.intent.action.PACKAGE_CHANGED"

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    const-string v5, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string v6, "android.intent.action.PACKAGE_RESTARTED"

    filled-new-array {v2, v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    const/4 v5, 0x0

    invoke-static {v0, p1, v1, v5, v3}, Lcom/android/common/util/ContextExtKt;->asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher/guide/side/e;

    invoke-direct {v1, p0}, Lcom/android/launcher/guide/side/e;-><init>(Lcom/android/launcher3/model/WellbeingModel;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/model/WellbeingModel;->mBroadcastReceiverPkgRemoved:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/launcher3/model/WellbeingModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/model/WellbeingModel;->mWorkerHandler:Landroid/os/Handler;

    invoke-static {v1, v0, p1, v5, v2}, Lcom/android/common/util/ContextExtKt;->asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/WellbeingModel;->restartObserver()V

    :cond_66
    return-void
.end method

.method public setInTest(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/model/WellbeingModel;->mIsInTest:Z

    return-void
.end method
