.class public Lcom/android/launcher/predictedapps/PredictedAppManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "AppPredictorManager"

.field private static final sSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/launcher/predictedapps/PredictedAppManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDao:Lcom/android/launcher/predictedapps/PredictedInfoDao;

.field private mEnoughData:Z

.field private mLauncherApps:Landroid/content/pm/LauncherApps;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/common/config/Constants$Packages;->PACKAGE_CLOCK:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/config/Constants$Packages;->PACKAGE_WEATHER:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/common/config/Constants$Packages;->PACKAGE_GALLERY:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const/4 v1, 0x3

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oplus.camera"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.coloros.calendar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.google.android.calendar"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher/predictedapps/PredictedAppManager;->DEFAULT_PACKAGES:[Ljava/lang/String;

    new-instance v0, Lcom/android/launcher/predictedapps/PredictedAppManager$1;

    invoke-direct {v0}, Lcom/android/launcher/predictedapps/PredictedAppManager$1;-><init>()V

    sput-object v0, Lcom/android/launcher/predictedapps/PredictedAppManager;->sSingleton:Landroid/util/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher/predictedapps/PredictedAppManager;->registerUserRemovedBroadcast()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher/predictedapps/PredictedAppManager$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher/predictedapps/PredictedAppManager;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->lambda$onPackageRemoved$1(ILjava/lang/String;)V

    return-void
.end method

.method private addAppByUser(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/List;I)Lcom/android/launcher3/model/data/AppInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;I)",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0, v1, p2}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getKey(Lcom/android/launcher3/model/data/AppInfo;Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-ne v1, p5, :cond_4

    const-string p0, "addApp, ignore duplicated package: "

    const-string p2, "AppPredictorManager"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2b
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/launcher/predictedapps/PredictedAppManager;->filterAppByUser(Ljava/lang/String;ZLjava/util/ArrayList;I)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    if-eqz p0, :cond_39

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/AppInfo;->clone()Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p1

    invoke-interface {p4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_39
    return-object v2
.end method

.method public static synthetic b(I)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/predictedapps/PredictedAppManager;->lambda$onUserRemoved$2(I)V

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->lambda$reportAppLaunch$0(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V

    return-void
.end method

.method private fillFromCursor(ILjava/util/List;Ljava/util/ArrayList;ILandroid/database/Cursor;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;I",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher/predictedapps/PredictedInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    if-eqz p5, :cond_46

    invoke-interface {p5}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_43

    :cond_d
    if-lt p4, p1, :cond_10

    goto :goto_43

    :cond_10
    invoke-static {p5}, Lcom/android/launcher/predictedapps/PredictedInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/launcher/predictedapps/PredictedInfo;

    move-result-object v1

    iget-object v3, v1, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    const/4 v4, 0x1

    iget v7, v1, Lcom/android/launcher/predictedapps/PredictedInfo;->mUser:I

    move-object v2, p0

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher/predictedapps/PredictedAppManager;->addAppByUser(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/List;I)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v2

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecommendedApps from database, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppPredictorManager"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    :cond_3d
    invoke-interface {p5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_d

    :cond_43
    :goto_43
    invoke-interface {p5}, Landroid/database/Cursor;->close()V

    :cond_46
    return-object v0
.end method

.method private filterAppByUser(Ljava/lang/String;ZLjava/util/ArrayList;I)Lcom/android/launcher3/model/data/AppInfo;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;I)",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/launcher/predictedapps/PredictedAppManager;->shouldHideFromSuggestions(Ljava/lang/String;ZI)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    :try_start_8
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    invoke-direct {p0, v0, p2}, Lcom/android/launcher/predictedapps/PredictedAppManager;->getKey(Lcom/android/launcher3/model/data/AppInfo;Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_28} :catch_2b

    if-ne p4, v2, :cond_c

    return-object v0

    :catch_2b
    move-exception p0

    const-string p1, "filterApp exception, e = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPredictorManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    return-object v1
.end method

.method public static getInstance()Lcom/android/launcher/predictedapps/PredictedAppManager;
    .registers 1

    sget-object v0, Lcom/android/launcher/predictedapps/PredictedAppManager;->sSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/predictedapps/PredictedAppManager;

    return-object v0
.end method

.method private getKey(Lcom/android/launcher3/model/data/AppInfo;Z)Ljava/lang/String;
    .registers 3

    iget-object p0, p1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    if-eqz p2, :cond_d

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_d
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :goto_11
    return-object p0
.end method

.method private static synthetic lambda$onPackageRemoved$1(ILjava/lang/String;)V
    .registers 7

    const-string v0, "AppPredictorManager"

    :try_start_2
    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p0, v2}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->deletePackageWithUser(ILjava/lang/String;)I

    move-result v1
    :try_end_1f
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_37

    :catch_20
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageRemoved: SQLiteFullException error occurs."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    :goto_37
    const-string/jumbo v2, "onPackageRemoved:"

    const-string v3, ", userId="

    const-string v4, ", ret="

    invoke-static {v2, p1, v3, p0, v4}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p0, v1, v0}, Lcom/android/common/config/k;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$onUserRemoved$2(I)V
    .registers 5

    const-string v0, "AppPredictorManager"

    :try_start_2
    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->deleteUser(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUserRemoved:, userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", ret="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Landroid/database/sqlite/SQLiteCantOpenDatabaseException; {:try_start_2 .. :try_end_2b} :catch_2c

    goto :goto_31

    :catch_2c
    const-string p0, "can\'t open database file."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_31
    return-void
.end method

.method private static synthetic lambda$reportAppLaunch$0(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->getInfoByUser(Ljava/lang/String;I)Lcom/android/launcher/predictedapps/PredictedInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_26

    iget p0, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    add-int/2addr p0, v1

    iput p0, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->update(Lcom/android/launcher/predictedapps/PredictedInfo;)I

    goto :goto_4f

    :cond_26
    new-instance v0, Lcom/android/launcher/predictedapps/PredictedInfo;

    invoke-direct {v0}, Lcom/android/launcher/predictedapps/PredictedInfo;-><init>()V

    iput v1, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mLaunchCount:I

    iput-object p0, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mComponent:Ljava/lang/String;

    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    iput p0, v0, Lcom/android/launcher/predictedapps/PredictedInfo;->mUser:I

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->insert(Lcom/android/launcher/predictedapps/PredictedInfo;)J
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_4f

    :catch_43
    move-exception p0

    const-string p1, "PredictedDatabase Error e="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "AppPredictorManager"

    invoke-static {p0, p1, v0}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4f
    return-void
.end method

.method private onPackageRemoved(ILjava/lang/String;)V
    .registers 4

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Landroidx/core/content/res/c;

    invoke-direct {v0, p1, p2}, Landroidx/core/content/res/c;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private registerUserRemovedBroadcast()V
    .registers 7

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/predictedapps/PredictedAppManager$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/predictedapps/PredictedAppManager$2;-><init>(Lcom/android/launcher/predictedapps/PredictedAppManager;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public canDisablePackage()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/predictedapps/PredictedAppManager;->mEnoughData:Z

    return p0
.end method

.method public disablePackage(Ljava/lang/String;I)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->getInfoByUser(Ljava/lang/String;I)Lcom/android/launcher/predictedapps/PredictedInfo;

    move-result-object p0

    if-eqz p0, :cond_3c

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    iput p2, p0, Lcom/android/launcher/predictedapps/PredictedInfo;->mUser:I

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->update(Lcom/android/launcher/predictedapps/PredictedInfo;)I
    :try_end_24
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_3c

    :catch_25
    move-exception p0

    const-string p1, "PredictedDatabase Error e="

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppPredictorManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method public getPredictedApps(I)Ljava/util/List;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, p1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sget-object v0, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/LauncherModel;->mBgAllAppsList:Lcom/android/launcher3/model/AllAppsList;

    iget-object v9, v0, Lcom/android/launcher3/model/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->getEnabledCursor()Landroid/database/Cursor;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, v6

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/predictedapps/PredictedAppManager;->fillFromCursor(ILjava/util/List;Ljava/util/ArrayList;ILandroid/database/Cursor;)Ljava/util/List;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v0, "getPredictedApps after enabledCursor, count = "

    const-string v10, "AppPredictorManager"

    invoke-static {v0, v4, v10}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 v11, 0x0

    if-ge v4, p1, :cond_89

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->getDisabledCursor()Landroid/database/Cursor;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move-object v2, v6

    move-object v3, v9

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/predictedapps/PredictedAppManager;->fillFromCursor(ILjava/util/List;Ljava/util/ArrayList;ILandroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/predictedapps/PredictedInfo;

    iput-boolean v11, v1, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnored:Z

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/launcher/predictedapps/PredictedInfo;->mIgnoreTime:J

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/android/launcher/predictedapps/PredictedInfoDao;->update(Lcom/android/launcher/predictedapps/PredictedInfo;)I

    goto :goto_57

    :cond_75
    const-string v0, "getPredictedApps after disabledCursor, count = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v0, p1, :cond_91

    const/4 v1, 0x1

    goto :goto_92

    :cond_91
    move v1, v11

    :goto_92
    iput-boolean v1, p0, Lcom/android/launcher/predictedapps/PredictedAppManager;->mEnoughData:Z

    move v12, v11

    move v11, v0

    :goto_96
    if-ge v11, p1, :cond_c9

    sget-object v13, Lcom/android/launcher/predictedapps/PredictedAppManager;->DEFAULT_PACKAGES:[Ljava/lang/String;

    array-length v0, v13

    if-lt v12, v0, :cond_9e

    goto :goto_c9

    :cond_9e
    aget-object v1, v13, v12

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    move-object v0, p0

    move-object v3, v9

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher/predictedapps/PredictedAppManager;->addAppByUser(Ljava/lang/String;ZLjava/util/ArrayList;Ljava/util/List;I)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object v0

    if-eqz v0, :cond_c6

    const-string v0, "getPredictedApps from default packages, "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, v13, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    :cond_c6
    add-int/lit8 v12, v12, 0x1

    goto :goto_96

    :cond_c9
    :goto_c9
    const-string p0, "getPredictedApps cost = "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v10, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method

.method public init()V
    .registers 2

    invoke-static {}, Lcom/android/launcher/predictedapps/PredictedDatabase;->getInstance()Lcom/android/launcher/predictedapps/PredictedDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/predictedapps/PredictedDatabase;->predictedInfoDao()Lcom/android/launcher/predictedapps/PredictedInfoDao;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/predictedapps/PredictedAppManager;->mDao:Lcom/android/launcher/predictedapps/PredictedInfoDao;

    return-void
.end method

.method public varargs onPackagesRemoved(I[Ljava/lang/String;)V
    .registers 6

    array-length v0, p2

    if-lez v0, :cond_f

    array-length v0, p2

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lcom/android/launcher/predictedapps/PredictedAppManager;->onPackageRemoved(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 4

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/android/common/util/e1;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/common/util/e1;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reportAppLaunch(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_9

    goto :goto_2a

    :cond_9
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string p0, "AppPredictorManager"

    const-string/jumbo p1, "reportAppLaunch, component is null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Landroidx/constraintlayout/motion/widget/c;

    invoke-direct {v1, p0, p1}, Landroidx/constraintlayout/motion/widget/c;-><init>(Ljava/lang/String;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public shouldHideFromSuggestions(Ljava/lang/String;ZI)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_d

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_d
    iget-object p2, p0, Lcom/android/launcher/predictedapps/PredictedAppManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    if-nez p2, :cond_1f

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p2

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    iput-object p2, p0, Lcom/android/launcher/predictedapps/PredictedAppManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    :cond_1f
    iget-object p0, p0, Lcom/android/launcher/predictedapps/PredictedAppManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/content/pm/LauncherApps;->shouldHideFromSuggestions(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_34

    const-string p0, "filterApp, shouldHideFromSuggestions package: "

    const-string p2, "AppPredictorManager"

    invoke-static {p0, p1, p2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_34
    return v0
.end method
