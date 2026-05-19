.class public Lcom/android/launcher3/model/PendingStaticShortcutsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final KEY_LAUNCHER_STATIC_SHORTCUT:Ljava/lang/String; = "launcher_pending_static_shortcuts"

.field private static final MAX_RETRY_TIMES:I = 0x3

.field private static final RETRY_TIME_INTERVAL:I = 0x1388

.field private static final TAG:Ljava/lang/String; = "PendingStaticShortcutsManager"

.field private static volatile mInstance:Lcom/android/launcher3/model/PendingStaticShortcutsManager;


# instance fields
.field private mLauncherApps:Landroid/content/pm/LauncherApps;

.field private final mOnFocusChangeCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRetryCount:I

.field private final mRetryPendingRunnable:Ljava/lang/Runnable;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryCount:I

    new-instance v0, Lcom/android/launcher3/model/b1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/model/b1;-><init>(Lcom/android/launcher3/model/PendingStaticShortcutsManager;)V

    iput-object v0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/common/a;

    invoke-direct {v0, p0}, Lcom/android/common/a;-><init>(Lcom/android/launcher3/model/PendingStaticShortcutsManager;)V

    iput-object v0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mOnFocusChangeCallback:Ljava/util/function/Consumer;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/PendingStaticShortcutsManager;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->lambda$new$1(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/PendingStaticShortcutsManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->lambda$new$0()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/model/PendingStaticShortcutsManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mInstance:Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mInstance:Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    invoke-direct {v1}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mInstance:Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mInstance:Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    return-object v0
.end method

.method private isHasShortcutHostPermission(Lcom/android/launcher/Launcher;)Z
    .registers 3

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    iput-object p1, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z

    move-result p1

    if-nez p1, :cond_1c

    const-string p1, "PendingStaticShortcutsManager"

    const-string v0, "launcher has no shortcut permission"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->retryPendingForNoPermission()V

    const/4 p0, 0x1

    return p0

    :cond_1c
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$new$0()V
    .registers 3

    const-string/jumbo v0, "mRetryCount="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingStaticShortcutsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->startPendingStaticShortcuts()V

    return-void
.end method

.method private synthetic lambda$new$1(Ljava/lang/Boolean;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnFocusChange focused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PendingStaticShortcutsManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1f

    invoke-virtual {p0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->startPendingStaticShortcuts()V

    :cond_1f
    return-void
.end method

.method private retryPendingForNoPermission()V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1f

    sget-object v0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mRetryPendingRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method

.method private startPendingStaticShortcuts(Lcom/android/launcher/Launcher;)V
    .registers 13

    const-string v0, "PendingStaticShortcutsManager"

    const-string/jumbo v1, "startPendingStaticShortcuts"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "launcher_pending_static_shortcuts"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    const-string/jumbo v1, "static shortcut is null"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_32

    const-string/jumbo v1, "user setup is not complete, retry after launcher is resumed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mOnFocusChangeCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Lcom/android/launcher/Launcher;->addOplusOnFocusChangeCallback(Ljava/util/function/Consumer;)V

    :cond_32
    return-void

    :cond_33
    :try_start_33
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->isHasShortcutHostPermission(Lcom/android/launcher/Launcher;)Z

    move-result v2

    if-eqz v2, :cond_3a

    return-void

    :cond_3a
    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startPendingStaticShortcuts find packages count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_59
    if-ge v4, v2, :cond_bb

    aget-object v5, v1, v4

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_64

    goto :goto_a2

    :cond_64
    const-string v6, "\\+"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a2

    new-instance v7, Lcom/android/launcher3/shortcuts/ShortcutKey;

    aget-object v8, v6, v3

    sget-object v9, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v10, 0x1

    aget-object v6, v6, v10

    invoke-direct {v7, v8, v9, v6}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/launcher3/OplusLauncherModel;->isShortcutExist(Lcom/android/launcher3/shortcuts/ShortcutKey;)Z

    move-result v6

    if-nez v6, :cond_88

    invoke-virtual {p0, p1, v7, v3}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->createShortcutQuery(Lcom/android/launcher/Launcher;Lcom/android/launcher3/shortcuts/ShortcutKey;Z)V

    goto :goto_a2

    :cond_88
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shortcut "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " already exist."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a2
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_33 .. :try_end_a2} :catch_a5
    .catch Ljava/lang/IllegalStateException; {:try_start_33 .. :try_end_a2} :catch_a5

    :cond_a2
    :goto_a2
    add-int/lit8 v4, v4, 0x1

    goto :goto_59

    :catch_a5
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "pending static shortcut error:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_bb
    return-void
.end method


# virtual methods
.method public createShortcutQuery(Lcom/android/launcher/Launcher;Lcom/android/launcher3/shortcuts/ShortcutKey;Z)V
    .registers 7

    const-string v0, "PendingStaticShortcutsManager"

    if-eqz p1, :cond_c9

    if-nez p2, :cond_8

    goto/16 :goto_c9

    :cond_8
    const-string v1, "createShortcutQuery shortcutKey="

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_31

    :try_start_2a
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->isHasShortcutHostPermission(Lcom/android/launcher/Launcher;)Z

    move-result p3

    if-eqz p3, :cond_31

    return-void

    :cond_31
    new-instance p3, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    const/16 v1, 0x8

    invoke-virtual {p3, v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object p0, p0, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p3, p2}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getShortcuts count:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_75
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_a7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ShortcutInfo;

    sget-object p3, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {p3, p2}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "queue item success. info="

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_75

    :cond_a2
    const-string p0, "getShortcuts is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a7
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "launcher_pending_static_shortcuts"

    const-string p2, ""

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_b2
    .catch Ljava/lang/SecurityException; {:try_start_2a .. :try_end_b2} :catch_b3
    .catch Ljava/lang/IllegalStateException; {:try_start_2a .. :try_end_b2} :catch_b3

    goto :goto_c8

    :catch_b3
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "create shortcut queue error:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_c8
    return-void

    :cond_c9
    :goto_c9
    const-string p0, "createShortcutQuery launcher is null"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startOrCreatePendingStaticShortcuts(Lcom/android/launcher/Launcher;Landroid/content/Context;)V
    .registers 4

    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLoadShortcutFromRestore()Z

    move-result v0

    if-nez v0, :cond_a

    invoke-direct {p0, p1}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->startPendingStaticShortcuts(Lcom/android/launcher/Launcher;)V

    goto :goto_14

    :cond_a
    invoke-static {p2}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->loadShortcutFromMetaData(Landroid/content/Context;)V

    const-string p0, "PendingStaticShortcutsManager"

    const-string p1, "The logic of creating shortcuts when moving mobile phones"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void
.end method

.method public startPendingStaticShortcuts()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->startPendingStaticShortcuts(Lcom/android/launcher/Launcher;)V

    :cond_17
    return-void
.end method
