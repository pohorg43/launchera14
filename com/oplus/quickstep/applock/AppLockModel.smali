.class public final Lcom/oplus/quickstep/applock/AppLockModel;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/quickstep/applock/IAppLockDataHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/AppLockModel$Companion;,
        Lcom/oplus/quickstep/applock/AppLockModel$WhenMappings;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppLockModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLockModel.kt\ncom/oplus/quickstep/applock/AppLockModel\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 5 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,666:1\n1855#2,2:667\n1855#2,2:669\n1855#2:671\n1856#2:673\n1603#2,9:676\n1855#2:685\n1856#2:687\n1612#2:688\n1855#2,2:689\n1855#2,2:691\n1603#2,9:695\n1855#2:704\n1856#2:706\n1612#2:707\n1855#2,2:708\n1855#2,2:710\n1855#2,2:712\n1855#2,2:714\n1855#2,2:716\n1855#2,2:718\n1855#2,2:720\n1855#2,2:722\n1603#2,9:724\n1855#2:733\n1856#2:735\n1612#2:736\n1603#2,9:737\n1855#2:746\n1856#2:748\n1612#2:749\n1747#2,3:750\n1#3:672\n1#3:686\n1#3:705\n1#3:734\n1#3:747\n215#4,2:674\n13309#5,2:693\n*S KotlinDebug\n*F\n+ 1 AppLockModel.kt\ncom/oplus/quickstep/applock/AppLockModel\n*L\n243#1:667,2\n256#1:669,2\n301#1:671\n301#1:673\n323#1:676,9\n323#1:685\n323#1:687\n323#1:688\n397#1:689,2\n410#1:691,2\n451#1:695,9\n451#1:704\n451#1:706\n451#1:707\n455#1:708,2\n481#1:710,2\n487#1:712,2\n503#1:714,2\n534#1:716,2\n558#1:718,2\n576#1:720,2\n593#1:722,2\n621#1:724,9\n621#1:733\n621#1:735\n621#1:736\n625#1:737,9\n625#1:746\n625#1:748\n625#1:749\n664#1:750,3\n323#1:686\n451#1:705\n621#1:734\n625#1:747\n319#1:674,2\n440#1:693,2\n*E\n"
    }
.end annotation


# static fields
.field private static final APP_LOCK_DATA_FILE_NAME:Ljava/lang/String; = "app_lock_data_file_name"

.field private static final CONFIGURATION_SP_NAME:Ljava/lang/String; = "Configuration"

.field public static final Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

.field private static final DEFAULT_LOCK_APPS_FILE_NAME:Ljava/lang/String; = "default_locked_apps.xml"

.field private static final FORBID_LOCK_APPS_FILE_NAME:Ljava/lang/String; = "forbid_lock_apps.xml"

.field private static final LOCK_DATA_LOCAL_CACHE_PATH:Ljava/lang/String;

.field private static final LOCK_DATA_SETTING_CACHE_PATH:Ljava/lang/String;

.field private static final NOTIFY_AMS_LOCKING_UPDATE_KEY:Ljava/lang/String; = "recent_lock_list"

.field private static final NOTIFY_AMS_SUPER_LOCKING_UPDATE_KEY:Ljava/lang/String; = "recent_super_lock_list"

.field private static final NO_DEFAULT_LOCKED_APP_LIMIT_DEFAULT_VALUE:I = 0x5

.field private static final NO_DEFAULT_LOCKED_APP_LIMIT_SP_KEY:Ljava/lang/String; = "lock_app_limit"

.field private static final READ_WRITE_LOCK_DATA_XML_TAG:Ljava/lang/String; = "p"

.field private static final REAL_LOCKED_APPS_FILE_NAME:Ljava/lang/String; = "locked_apps.xml"

.field private static final SEPARATOR:Ljava/lang/String; = "#"

.field private static final TAG:Ljava/lang/String;

.field private static final USER_MULTI_APP:I = 0x3e7

.field private static final USER_OPERATE_LOCK_APPS_FILE_NAME:Ljava/lang/String; = "fixed_lock_apps.xml"

.field private static final USER_OWNER:I

.field private static final VIRTUAL_LOCKED_APPS_FILE_NAME:Ljava/lang/String; = "backup_locked_apps.xml"


# instance fields
.field private final appLockInfoMap$delegate:Lh4/f;

.field private final ioExecutor$delegate:Lh4/f;

.field private isVirtual:Z

.field private final mayLockAppsByBackupRestore$delegate:Lh4/f;

.field private noDefaultLockedAppLimit:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    const-string v0, "Lock-AppLockModel"

    sput-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    sput v0, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "oplus"

    const-string v3, "recenttask"

    invoke-static {v0, v1, v2, v1, v3}, Landroidx/room/d0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->LOCK_DATA_LOCAL_CACHE_PATH:Ljava/lang/String;

    invoke-static {v1, v3, v1}, Landroidx/concurrent/futures/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->LOCK_DATA_SETTING_CACHE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$ioExecutor$2;->INSTANCE:Lcom/oplus/quickstep/applock/AppLockModel$ioExecutor$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->ioExecutor$delegate:Lh4/f;

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$appLockInfoMap$2;->INSTANCE:Lcom/oplus/quickstep/applock/AppLockModel$appLockInfoMap$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->appLockInfoMap$delegate:Lh4/f;

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$mayLockAppsByBackupRestore$2;->INSTANCE:Lcom/oplus/quickstep/applock/AppLockModel$mayLockAppsByBackupRestore$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mayLockAppsByBackupRestore$delegate:Lh4/f;

    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    return-void
.end method

.method public static synthetic a(Ljava/util/Collection;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData$lambda$22(Ljava/util/Collection;)V

    return-void
.end method

.method public static final synthetic access$getAppLockInfoMap(Lcom/oplus/quickstep/applock/AppLockModel;)Ljava/util/HashMap;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->LOCK_DATA_LOCAL_CACHE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLOCK_DATA_SETTING_CACHE_PATH$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->LOCK_DATA_SETTING_CACHE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$isVirtual$p(Lcom/oplus/quickstep/applock/AppLockModel;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    return p0
.end method

.method public static final convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final generateAppLockInfoByCacheData(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lcom/oplus/quickstep/applock/AppLockInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oplus/quickstep/applock/AppLockInfo;"
        }
    .end annotation

    new-instance p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsForbidLock(Z)V

    invoke-interface {p3, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowDefaultLock(Z)V

    invoke-interface {p4, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3e

    invoke-interface {p5, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_20

    goto :goto_3e

    :cond_20
    invoke-interface {p6, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_52

    :cond_29
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isForbidLock()Z

    move-result p1

    if-eqz p1, :cond_32

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORBID:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_52

    :cond_32
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result p1

    if-eqz p1, :cond_3b

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_52

    :cond_3b
    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_52

    :cond_3e
    :goto_3e
    invoke-interface {p6, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_47

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_52

    :cond_47
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result p1

    if-eqz p1, :cond_50

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    goto :goto_52

    :cond_50
    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_BACKUP_RESTORE:Lcom/oplus/quickstep/applock/OperateScenes;

    :goto_52
    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;)V

    return-object p0
.end method

.method private final getAppLockInfoMap()Ljava/util/HashMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oplus/quickstep/applock/AppLockInfo;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->appLockInfoMap$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    return-object p0
.end method

.method private final getIoExecutor()Ljava/util/concurrent/ExecutorService;
    .registers 2

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->ioExecutor$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-ioExecutor>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/util/concurrent/ExecutorService;

    return-object p0
.end method

.method private final getLockingApps()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "appLockInfoMap.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v3

    if-eqz v3, :cond_34

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isVirtualLock()Z

    move-result v1

    if-nez v1, :cond_34

    const/4 v1, 0x1

    goto :goto_35

    :cond_34
    const/4 v1, 0x0

    :goto_35
    if-eqz v1, :cond_38

    goto :goto_39

    :cond_38
    const/4 v2, 0x0

    :goto_39
    if-eqz v2, :cond_16

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3f
    return-object v0
.end method

.method private final getMayLockAppsByBackupRestore()Ljava/util/HashSet;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->mayLockAppsByBackupRestore$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    return-object p0
.end method

.method private final getNoDefaultLockAppCount()I
    .registers 4

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v1

    if-eqz v1, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    :cond_2e
    return v0
.end method

.method private final readCacheData()Ljava/util/Map;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/quickstep/applock/AppLockInfo;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-static {v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$isExistThirdLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;)Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-static {v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$readThirdLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;)Ljava/util/Map;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readCacheData(third): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d2

    :cond_24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "fixed_lock_apps.xml"

    invoke-static {v0, v2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$readFirstOrSecondLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    const-string v3, "locked_apps.xml"

    invoke-static {v0, v3}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$readFirstOrSecondLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    const-string v3, "backup_locked_apps.xml"

    invoke-static {v0, v3}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$readFirstOrSecondLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    const-string v3, "default_locked_apps.xml"

    invoke-static {v0, v3}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$readFirstOrSecondLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "forbid_lock_apps.xml"

    invoke-static {v0, v3}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$readFirstOrSecondLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_87

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "#"

    invoke-static {v3, v6, v4, v5}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_6a
    sget-object v4, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    sget v5, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x3e7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_50

    :cond_87
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v10}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v11}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v12}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0, v13}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_bb

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava/lang/String;

    move-object v3, p0

    move-object v4, v14

    move-object v5, v13

    move-object v6, v12

    move-object v7, v10

    move-object v8, v11

    move-object v9, v2

    invoke-direct/range {v3 .. v9}, Lcom/oplus/quickstep/applock/AppLockModel;->generateAppLockInfoByCacheData(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Lcom/oplus/quickstep/applock/AppLockInfo;

    move-result-object v3

    invoke-virtual {v1, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9f

    :cond_bb
    sget-object p0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readCacheData(first-second): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    :goto_d2
    return-object p0
.end method

.method private final saveAppLockData(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/oplus/quickstep/applock/AppLockInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getIoExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p0

    new-instance v0, Lcom/android/quickstep/c1;

    invoke-direct {v0, p1}, Lcom/android/quickstep/c1;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final saveAppLockData$lambda$22(Ljava/util/Collection;)V
    .registers 6

    const-string v0, "$data"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->LOCK_DATA_LOCAL_CACHE_PATH:Ljava/lang/String;

    const-string v1, "app_lock_data_file_name"

    invoke-static {v0, v1}, Lcom/oplus/quickstep/utils/OplusFileUtil;->initFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_57

    const-string v1, "initFile(LOCK_DATA_LOCAL… APP_LOCK_DATA_FILE_NAME)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/common/util/FileOperationUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAppLockData, data size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", file path: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", result: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_58

    :cond_57
    const/4 p0, 0x0

    :goto_58
    if-nez p0, :cond_61

    sget-object p0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v0, "initFile fail, no file"

    invoke-static {p0, v0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_61
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_63
    .catchall {:try_start_5 .. :try_end_63} :catchall_64

    goto :goto_69

    :catchall_64
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_69
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_76

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v1, "saveAppLockData fail"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_76
    return-void
.end method

.method private final setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/quickstep/applock/OperateScenes;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3e

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isUseless()Z

    move-result v3

    if-eqz v3, :cond_31

    move-object v2, v1

    :cond_31
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/applock/AppLockInfo;

    goto :goto_4

    :cond_3e
    new-instance v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsVirtualLock(Z)V

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isUseless()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_54

    move-object v2, v1

    :cond_54
    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5e
    return-void
.end method


# virtual methods
.method public clearAppLockScenesInfo(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearAppLockScenesInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_48

    const/4 p2, 0x1

    goto :goto_49

    :cond_48
    const/4 p2, 0x0

    :goto_49
    if-eqz p2, :cond_4c

    goto :goto_4d

    :cond_4c
    const/4 p1, 0x0

    :goto_4d
    if-eqz p1, :cond_58

    sget-object p2, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-static {p1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V

    :cond_58
    return-void
.end method

.method public getLockApps()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "appLockInfoMap.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    if-eqz v2, :cond_16

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_34
    return-object v0
.end method

.method public getSuperLockingApps()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    if-nez v0, :cond_7

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_7
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "appLockInfoMap.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1d
    :goto_1d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isVirtualLock()Z

    move-result v3

    if-nez v3, :cond_41

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowSuperLock()Z

    move-result v1

    if-eqz v1, :cond_41

    const/4 v1, 0x1

    goto :goto_42

    :cond_41
    const/4 v1, 0x0

    :goto_42
    if-eqz v1, :cond_45

    goto :goto_46

    :cond_45
    const/4 v2, 0x0

    :goto_46
    if-eqz v2, :cond_1d

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_4c
    return-object v0
.end method

.method public hasSuperLockingApp()Z
    .registers 5

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "appLockInfoMap.values"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1b

    goto :goto_43

    :cond_1b
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v3

    if-eqz v3, :cond_3f

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isVirtualLock()Z

    move-result v3

    if-nez v3, :cond_3f

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowSuperLock()Z

    move-result v0

    if-eqz v0, :cond_3f

    move v0, v2

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    if-eqz v0, :cond_1f

    move v1, v2

    :cond_43
    :goto_43
    return v1
.end method

.method public initData()V
    .registers 15

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_16

    const-string v3, "Configuration"

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_16

    const-string v4, "lock_app_limit"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    :cond_16
    iput v1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->readCacheData()Ljava/util/Map;

    move-result-object v1

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3, v0}, Lcom/android/common/util/PackageUtils$Companion;->getInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v4

    const v5, 0x7f12047f

    invoke-static {v5}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_35

    const-string v5, ""

    :cond_35
    invoke-static {v5}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v0, :cond_50

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_50

    const v6, 0x7f030040

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    invoke-static {v0}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_52

    :cond_50
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_52
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    :cond_5f
    :goto_5f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_fa

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v10, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v10, v8}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f5

    if-nez v11, :cond_8a

    goto :goto_f5

    :cond_8a
    invoke-virtual {v9}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v12

    const-string v13, "installedMultiApps"

    if-eqz v12, :cond_dc

    invoke-virtual {v9}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result v12

    if-nez v12, :cond_dc

    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v3, v4}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$isInstalledApp(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_5f

    aget-object v8, v11, v2

    invoke-interface {v5, v8}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v0, v8}, Li4/v;->I(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v12, 0x0

    if-eqz v8, :cond_be

    const/4 v13, 0x1

    aget-object v11, v11, v13

    invoke-virtual {v10, v8, v11}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8, v3, v4}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$isInstalledApp(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v10

    if-eqz v10, :cond_be

    move-object v12, v8

    :cond_be
    if-nez v12, :cond_c4

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_5f

    :cond_c4
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v8

    if-eqz v8, :cond_d1

    sget-object v8, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v10, "newPackageNameUserId: "

    invoke-static {v10, v12, v8}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v9, v12}, Lcom/oplus/quickstep/applock/AppLockInfo;->deepCopy(Ljava/lang/String;)Lcom/oplus/quickstep/applock/AppLockInfo;

    move-result-object v8

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5f

    :cond_dc
    invoke-static {v4, v13}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v8, v3, v4}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$isInstalledApp(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_ea

    sget-object v8, Lcom/oplus/quickstep/applock/OperateScenes;->UNSPECIFIED:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-virtual {v9, v8}, Lcom/oplus/quickstep/applock/AppLockInfo;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;)V

    :cond_ea
    invoke-virtual {v9}, Lcom/oplus/quickstep/applock/AppLockInfo;->isUseless()Z

    move-result v8

    if-eqz v8, :cond_5f

    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5f

    :cond_f5
    :goto_f5
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_5f

    :cond_fa
    invoke-interface {v1, v7}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_129

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsVirtualLock(Z)V

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_10c

    :cond_129
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "appLockInfoMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v1, "initData: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object v1

    const-string v2, "recent_lock_list"

    invoke-static {v0, v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string v1, "recent_super_lock_list"

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public isAllowSuperLock(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 p1, 0x1

    if-eqz p0, :cond_2a

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowSuperLock()Z

    move-result p0

    if-ne p0, p1, :cond_2a

    move v1, p1

    :cond_2a
    return v1
.end method

.method public isExceededLockLimit(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v1, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result p1

    if-ne p1, p2, :cond_26

    move p1, p2

    goto :goto_27

    :cond_26
    move p1, v0

    :goto_27
    if-eqz p1, :cond_2a

    return v0

    :cond_2a
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getNoDefaultLockAppCount()I

    move-result p1

    iget p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    if-lt p1, p0, :cond_33

    goto :goto_34

    :cond_33
    move p2, v0

    :goto_34
    return p2
.end method

.method public isExperiencedLockUpgradeSuperLock(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 p1, 0x1

    if-eqz p0, :cond_35

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isExperienceUpgradeLock()Z

    move-result p2

    if-eqz p2, :cond_31

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowSuperLock()Z

    move-result p0

    if-eqz p0, :cond_31

    move p0, p1

    goto :goto_32

    :cond_31
    move p0, v1

    :goto_32
    if-ne p0, p1, :cond_35

    move v1, p1

    :cond_35
    return v1
.end method

.method public isForbidLock(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p0, :cond_25

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isForbidLock()Z

    move-result p0

    if-ne p0, p1, :cond_25

    goto :goto_26

    :cond_25
    move p1, p2

    :goto_26
    return p1
.end method

.method public isLocking(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p0, :cond_30

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isVirtualLock()Z

    move-result p0

    if-nez p0, :cond_2c

    move p0, p1

    goto :goto_2d

    :cond_2c
    move p0, p2

    :goto_2d
    if-ne p0, p1, :cond_30

    goto :goto_31

    :cond_30
    move p1, p2

    :goto_31
    return p1
.end method

.method public isSuperLocking(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    :cond_10
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p0

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/AppLockInfo;

    const/4 p1, 0x1

    if-eqz p0, :cond_3b

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result p2

    if-eqz p2, :cond_37

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isVirtualLock()Z

    move-result p2

    if-nez p2, :cond_37

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowSuperLock()Z

    move-result p0

    if-eqz p0, :cond_37

    move p0, p1

    goto :goto_38

    :cond_37
    move p0, v1

    :goto_38
    if-ne p0, p1, :cond_3b

    move v1, p1

    :cond_3b
    return v1
.end method

.method public lockApps(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "packageNameUserIds"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lh4/j;

    iget-object v2, v1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v3, v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4b

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v2, :cond_3f

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result v2

    if-ne v2, v3, :cond_3f

    move v2, v3

    goto :goto_40

    :cond_3f
    move v2, v4

    :goto_40
    if-nez v2, :cond_4c

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getNoDefaultLockAppCount()I

    move-result v2

    iget v5, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    if-ge v2, v5, :cond_4b

    goto :goto_4c

    :cond_4b
    move v3, v4

    :cond_4c
    :goto_4c
    if-eqz v3, :cond_4f

    goto :goto_50

    :cond_4f
    const/4 v1, 0x0

    :goto_50
    if-eqz v1, :cond_9

    sget-object v2, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-static {v1}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/oplus/quickstep/applock/AppLockModel;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V

    goto :goto_9

    :cond_5c
    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockApps packageNameUserIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "appLockInfoMap.values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object v0

    const-string v1, "recent_lock_list"

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string v0, "recent_super_lock_list"

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public markLockUpgrade(Lcom/oplus/quickstep/applock/LockUpgradeReason;)V
    .registers 8

    const-string v0, "upgradeReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_55

    const/4 v2, 0x2

    if-eq p1, v2, :cond_16

    goto/16 :goto_8c

    :cond_16
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getMayLockAppsByBackupRestore()Ljava/util/HashSet;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1e
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v3, v2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1e

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v2, v5

    aget-object v2, v2, v1

    invoke-virtual {v3, v5, v2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v2, :cond_1e

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_4f

    :cond_4e
    move-object v2, v0

    :goto_4f
    if-eqz v2, :cond_1e

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsExperienceUpgradeLock(Z)V

    goto :goto_1e

    :cond_55
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    const-string v2, "appLockInfoMap.keys"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_66
    :goto_66
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v2, :cond_66

    invoke-virtual {v2}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v3

    if-eqz v3, :cond_85

    goto :goto_86

    :cond_85
    move-object v2, v0

    :goto_86
    if-eqz v2, :cond_66

    invoke-virtual {v2, v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsExperienceUpgradeLock(Z)V

    goto :goto_66

    :cond_8c
    :goto_8c
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_a8

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v0, "markLockUpgrade; "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a8
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "appLockInfoMap.values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    return-void
.end method

.method public restoreBackupLockApps(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    const-string v0, "backupLockAppsOfJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPhoneInstalledAppsOfJson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_36

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v1, "restoreBackupLockApps start; "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", backupLockAppsOfJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", oldPhoneInstalledAppsOfJson="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_36
    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/common/util/PackageUtils$Companion;->getInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/common/multiapp/MultiAppManager;->getMultiAppList(I)Ljava/util/List;

    move-result-object v1

    sget-object v3, Lcom/oplus/quickstep/utils/GsonUtils;->Companion:Lcom/oplus/quickstep/utils/GsonUtils$Companion;

    invoke-virtual {v3, p2}, Lcom/oplus/quickstep/utils/GsonUtils$Companion;->analyzeJsonOfArrayString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p1}, Lcom/oplus/quickstep/utils/GsonUtils$Companion;->analyzeJsonOfArrayString(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getMayLockAppsByBackupRestore()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    array-length v4, p1

    move v5, v2

    :goto_61
    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v5, v4, :cond_b7

    aget-object v8, p1, v5

    sget-object v9, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v9, v8}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_98

    const-string v11, "currentInstalledMultiApps"

    invoke-static {v1, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v8, v0, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$isInstalledApp(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v11

    if-eqz v11, :cond_7b

    move-object v6, v10

    :cond_7b
    if-eqz v6, :cond_98

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getMayLockAppsByBackupRestore()Ljava/util/HashSet;

    move-result-object v8

    aget-object v10, v6, v2

    aget-object v11, v6, v7

    invoke-virtual {v9, v10, v11}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    aget-object v8, v6, v2

    aget-object v6, v6, v7

    invoke-virtual {v9, v8, v6}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_b4

    :cond_98
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v6

    if-eqz v6, :cond_b4

    sget-object v6, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "restoreBackupLockApps--abandon："

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b4
    :goto_b4
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    :cond_b7
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v4, "appLockInfoMap.values"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_cd
    :goto_cd
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v8}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Lcom/oplus/quickstep/applock/AppLockInfo;->isLock()Z

    move-result v10

    if-eqz v10, :cond_eb

    invoke-virtual {v8}, Lcom/oplus/quickstep/applock/AppLockInfo;->isAllowDefaultLock()Z

    move-result v8

    if-eqz v8, :cond_eb

    move v8, v7

    goto :goto_ec

    :cond_eb
    move v8, v2

    :goto_ec
    if-eqz v8, :cond_ef

    goto :goto_f0

    :cond_ef
    move-object v9, v6

    :goto_f0
    if-eqz v9, :cond_cd

    invoke-interface {v5, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_cd

    :cond_f6
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_fa
    :goto_fa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_157

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v8, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v8, v5}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_13a

    aget-object v10, v9, v2

    invoke-interface {v0, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_127

    aget-object v10, v9, v2

    invoke-static {p2, v10}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_127

    invoke-static {p1, v5}, Li4/k;->s([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_125

    goto :goto_127

    :cond_125
    move v10, v2

    goto :goto_128

    :cond_127
    :goto_127
    move v10, v7

    :goto_128
    if-eqz v10, :cond_12b

    goto :goto_12c

    :cond_12b
    move-object v9, v6

    :goto_12c
    if-eqz v9, :cond_13a

    aget-object v5, v9, v2

    aget-object v9, v9, v7

    invoke-virtual {v8, v5, v9}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_fa

    :cond_13a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_fa

    sget-object v8, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "restoreBackupLockApps-abandoned："

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fa

    :cond_157
    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockApps()Ljava/util/List;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V

    sget-object p1, Lcom/oplus/quickstep/applock/OperateScenes;->LOCK_BECAUSE_BACKUP_RESTORE:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-direct {p0, p1, v3}, Lcom/oplus/quickstep/applock/AppLockModel;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_18f

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string p2, "restoreBackupLockApps end; "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_18f
    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object p2

    const-string v0, "recent_lock_list"

    invoke-static {p1, v0, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string p2, "recent_super_lock_list"

    invoke-static {p1, p2, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public setIsVirtualizeLockData(Z)V
    .registers 5

    iget-boolean v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput-boolean p1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "appLockInfoMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v2, p1}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsVirtualLock(Z)V

    goto :goto_18

    :cond_28
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_5a

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v1, "setIsVirtualizeLockData "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object v0

    const-string v1, "recent_lock_list"

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string v0, "recent_super_lock_list"

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public unLockApps(ZZLjava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ljava/util/Collection<",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "packageNameUserIds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, p2, :cond_8

    return-void

    :cond_8
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_c
    :goto_c
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4b

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lh4/j;

    iget-object v1, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Lh4/j;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v2, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    if-eqz v1, :cond_32

    goto :goto_33

    :cond_32
    const/4 v0, 0x0

    :goto_33
    if-eqz v0, :cond_c

    if-eqz p1, :cond_41

    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_FORCE:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V

    goto :goto_c

    :cond_41
    sget-object v1, Lcom/oplus/quickstep/applock/OperateScenes;->UNLOCK_BECAUSE_USER_OPERATE:Lcom/oplus/quickstep/applock/OperateScenes;

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel;->setOperateScenes(Lcom/oplus/quickstep/applock/OperateScenes;Ljava/util/Collection;)V

    goto :goto_c

    :cond_4b
    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "unLockApps packageNameUserIds="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string p2, "appLockInfoMap.values"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object p2

    const-string p3, "recent_lock_list"

    invoke-static {p1, p3, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string p2, "recent_super_lock_list"

    invoke-static {p1, p2, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public updateAllowDefaultLockApps(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowDefaultLockApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowDefaultLock(Z)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isUseless()Z

    move-result v1

    if-eqz v1, :cond_2f

    move-object v2, v0

    :cond_2f
    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_35
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    :goto_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    const-string v4, "#"

    invoke-static {v0, v4, v3, v1}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_4f

    goto :goto_5b

    :cond_4f
    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    sget v4, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    :goto_5b
    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_66

    move v1, v4

    goto :goto_67

    :cond_66
    move v1, v3

    :goto_67
    if-eqz v1, :cond_6a

    goto :goto_6b

    :cond_6a
    move-object v0, v2

    :goto_6b
    if-eqz v0, :cond_39

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v1, :cond_7d

    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowDefaultLock(Z)V

    goto :goto_7e

    :cond_7d
    move-object v1, v2

    :goto_7e
    if-nez v1, :cond_39

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    new-instance v5, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {v5, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsVirtualLock(Z)V

    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowDefaultLock(Z)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_39

    :cond_95
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_b1

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v0, "updateAllowDefaultLockApps; "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "appLockInfoMap.values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object v0

    const-string v1, "recent_lock_list"

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string v0, "recent_super_lock_list"

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public updateAllowSuperLockApps(Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allowSuperLockApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowSuperLock(Z)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isUseless()Z

    move-result v1

    if-eqz v1, :cond_34

    move-object v2, v0

    :cond_34
    if-eqz v2, :cond_16

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_16

    :cond_3a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x2

    const-string v4, "#"

    invoke-static {v0, v4, v3, v1}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v1

    if-eqz v1, :cond_54

    goto :goto_60

    :cond_54
    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    sget v4, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    :goto_60
    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    if-eqz v1, :cond_6b

    move v1, v4

    goto :goto_6c

    :cond_6b
    move v1, v3

    :goto_6c
    if-eqz v1, :cond_6f

    goto :goto_70

    :cond_6f
    move-object v0, v2

    :goto_70
    if-eqz v0, :cond_3e

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v1, :cond_82

    invoke-virtual {v1, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowSuperLock(Z)V

    goto :goto_83

    :cond_82
    move-object v1, v2

    :goto_83
    if-nez v1, :cond_3e

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    new-instance v5, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-direct {v5, v0}, Lcom/oplus/quickstep/applock/AppLockInfo;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/oplus/quickstep/applock/AppLockModel;->isVirtual:Z

    invoke-virtual {v5, v6}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsVirtualLock(Z)V

    invoke-virtual {v5, v4}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsAllowSuperLock(Z)V

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_9a
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_b6

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v0, "updateAllowSuperLockApps; "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b6
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "appLockInfoMap.values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string v0, "recent_super_lock_list"

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public updateForbidLockApps(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "forbidLockApps"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/applock/AppLockInfo;->setIsForbidLock(Z)V

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->isUseless()Z

    move-result v1

    if-eqz v1, :cond_2f

    move-object v2, v0

    :cond_2f
    if-eqz v2, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_11

    :cond_35
    new-instance v0, Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$updateForbidLockApps$addForbidLockApp$1;-><init>(Lcom/oplus/quickstep/applock/AppLockModel;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3e
    :goto_3e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v4, 0x2

    const-string v5, "#"

    invoke-static {v1, v5, v3, v4}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_68

    sget-object v4, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v4, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5d

    goto :goto_5e

    :cond_5d
    move v5, v3

    :goto_5e
    if-eqz v5, :cond_61

    goto :goto_62

    :cond_61
    move-object v1, v2

    :goto_62
    if-eqz v1, :cond_3e

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_68
    sget-object v4, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    sget v6, Lcom/oplus/quickstep/applock/AppLockModel;->USER_OWNER:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7c

    move v7, v5

    goto :goto_7d

    :cond_7c
    move v7, v3

    :goto_7d
    if-eqz v7, :cond_80

    goto :goto_81

    :cond_80
    move-object v6, v2

    :goto_81
    if-eqz v6, :cond_86

    invoke-interface {v0, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_86
    const/16 v6, 0x3e7

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_97

    goto :goto_98

    :cond_97
    move v5, v3

    :goto_98
    if-eqz v5, :cond_9b

    goto :goto_9c

    :cond_9b
    move-object v1, v2

    :goto_9c
    if-eqz v1, :cond_3e

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3e

    :cond_a2
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p1

    if-eqz p1, :cond_be

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    const-string v0, "updateForbidLockApps; "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_be
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getAppLockInfoMap()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string v0, "appLockInfoMap.values"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel;->saveAppLockData(Ljava/util/Collection;)V

    sget-object p1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getLockingApps()Ljava/util/List;

    move-result-object v0

    const-string v1, "recent_lock_list"

    invoke-static {p1, v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    const-string v0, "recent_super_lock_list"

    invoke-static {p1, v0, p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public updateNoDefaultLockAppLimit(I)V
    .registers 5

    iget v0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    if-ne v0, p1, :cond_5

    return-void

    :cond_5
    iput p1, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNoDefaultLockAppLimit; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2d

    const/4 v1, 0x0

    const-string v2, "Configuration"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_2e

    :cond_2d
    const/4 v0, 0x0

    :goto_2e
    iget p0, p0, Lcom/oplus/quickstep/applock/AppLockModel;->noDefaultLockedAppLimit:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "lock_app_limit"

    invoke-virtual {p1, v0, v1, p0}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
