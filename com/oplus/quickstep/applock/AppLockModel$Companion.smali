.class public final Lcom/oplus/quickstep/applock/AppLockModel$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/applock/AppLockModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAppLockModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppLockModel.kt\ncom/oplus/quickstep/applock/AppLockModel$Companion\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,666:1\n1855#2:667\n1856#2:669\n1#3:668\n37#4,2:670\n*S KotlinDebug\n*F\n+ 1 AppLockModel.kt\ncom/oplus/quickstep/applock/AppLockModel$Companion\n*L\n139#1:667\n139#1:669\n213#1:670,2\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$isExistThirdLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->isExistThirdLocalCacheData()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isInstalledApp(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->isInstalledApp(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyAMSDataUpdate(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->notifyAMSDataUpdate(Ljava/lang/String;Ljava/util/Collection;)V

    return-void
.end method

.method public static final synthetic access$readFirstOrSecondLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;Ljava/lang/String;)Ljava/util/List;
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->readFirstOrSecondLocalCacheData(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$readThirdLocalCacheData(Lcom/oplus/quickstep/applock/AppLockModel$Companion;)Ljava/util/Map;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->readThirdLocalCacheData()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private final clearFirstCacheLockData(Ljava/lang/String;)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    move v0, v1

    :goto_a
    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "clearSettingCacheLockData fail, fileName is empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_16
    :try_start_16
    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_SETTING_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    invoke-static {p0, v0, v1, v2}, Lcom/oplus/settings/OplusSettings;->writeConfigString(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_38

    goto :goto_3d

    :catchall_38
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_3d
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_62

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in first cache data fail"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_62
    return-void
.end method

.method private final clearSecondCacheLockData(Ljava/lang/String;)V
    .registers 5

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "clearSecondCacheLockData fail, fileName is empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_15
    :try_start_15
    new-instance p0, Ljava/io/File;

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_27

    goto :goto_2c

    :catchall_27
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_2c
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_51

    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in second cache data fail"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_51
    return-void
.end method

.method private final isExistSecondLocalCacheData()Z
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "default_locked_apps.xml"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "forbid_lock_apps.xml"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "fixed_lock_apps.xml"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "locked_apps.xml"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_3f

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "backup_locked_apps.xml"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3d

    goto :goto_3f

    :cond_3d
    const/4 p0, 0x0

    goto :goto_40

    :cond_3f
    :goto_3f
    const/4 p0, 0x1

    :goto_40
    return p0
.end method

.method private final isExistThirdLocalCacheData()Z
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "app_lock_data_file_name"

    invoke-static {p0, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->isExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private final isInstalledApp(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;)Z
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
            ">;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_8

    return p1

    :cond_8
    const/4 v0, 0x1

    aget-object v1, p0, v0

    const-string v2, "999"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    aget-object v1, p0, p1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    :cond_1b
    aget-object v1, p0, v0

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    aget-object v1, p0, p1

    invoke-interface {p2, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_34

    aget-object p0, p0, p1

    invoke-interface {p3, p0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_33
    move p1, v0

    :cond_34
    return p1
.end method

.method private final notifyAMSDataUpdate(Ljava/lang/String;Ljava/util/Collection;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "recent_super_lock_list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_16

    move v0, v1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    if-eqz v0, :cond_23

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "notifyAMSDataUpdate fail, key is empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_23
    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notifyAMSDataUpdate("

    const-string v2, "): "

    invoke-static {v0, p1, v2}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, p1, v0, v1}, Lcom/oplus/util/OplusCommonConfig;->putConfigInfo(Ljava/lang/String;Landroid/os/Bundle;I)Z

    return-void
.end method

.method private final readCacheLockDataByAnalyzeXML(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "+",
            "Ljava/io/InputStream;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    if-eqz v0, :cond_17

    invoke-virtual {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "readCacheLockDataByAnalyzeXML fail, fileName is empty"

    invoke-static {p0, p1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Li4/y;->a:Li4/y;

    return-object p0

    :cond_17
    const/4 p0, 0x0

    :try_start_18
    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object p2, p0

    check-cast p2, Ljava/io/InputStream;

    const-string v0, "p"

    invoke-static {p2, v0}, Lcom/oplus/quickstep/utils/OplusFileUtil;->readDataByXML(Ljava/io/InputStream;Ljava/lang/String;)Ljava/util/List;

    move-result-object p2
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_2b

    :catchall_26
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_2b
    check-cast p0, Ljava/io/Closeable;

    invoke-static {p0}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_37

    goto :goto_58

    :cond_37
    sget-object p2, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readCacheLockDataByAnalyzeXML "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " fail"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Li4/y;->a:Li4/y;

    :goto_58
    check-cast p2, Ljava/util/List;

    return-object p2
.end method

.method private final readFirstOrSecondLocalCacheData(Ljava/lang/String;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->isExistSecondLocalCacheData()Z

    move-result v0

    new-instance v1, Lcom/oplus/quickstep/applock/AppLockModel$Companion$readFirstOrSecondLocalCacheData$1;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion$readFirstOrSecondLocalCacheData$1;-><init>(Z)V

    invoke-direct {p0, p1, v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->readCacheLockDataByAnalyzeXML(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFirstOrSecondLocalCacheData("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3d

    invoke-direct {v1, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->clearSecondCacheLockData(Ljava/lang/String;)V

    goto :goto_40

    :cond_3d
    invoke-direct {v1, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->clearFirstCacheLockData(Ljava/lang/String;)V

    :goto_40
    return-object p0
.end method

.method private final readThirdLocalCacheData()Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oplus/quickstep/applock/AppLockInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :try_start_5
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getLOCK_DATA_LOCAL_CACHE_PATH$cp()Ljava/lang/String;

    move-result-object v2

    const-string v3, "app_lock_data_file_name"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/common/util/FileOperationUtils;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/applock/AppLockModel$Companion$readThirdLocalCacheData$1$1;

    invoke-direct {v2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion$readThirdLocalCacheData$1$1;-><init>()V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_28
    .catchall {:try_start_5 .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_2e
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_35

    goto :goto_42

    :cond_35
    sget-object v0, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "readThirdLocalCacheData fail"

    invoke-static {v0, v2, v1}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v0, Li4/y;->a:Li4/y;

    :goto_42
    const-string v1, "runCatching {\n          …emptyList()\n            }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4d
    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/quickstep/applock/AppLockInfo;

    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/oplus/quickstep/applock/AppLockInfo;->getPackageNameUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oplus/quickstep/applock/AppLockInfo;->deepCopy(Ljava/lang/String;)Lcom/oplus/quickstep/applock/AppLockInfo;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4d

    :cond_6b
    return-object p0
.end method


# virtual methods
.method public final convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    const-string v0, "#"

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v3

    if-nez v3, :cond_f

    return-object p0

    :cond_f
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x6

    invoke-static {p1, v0, v1, v1, v3}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v2, :cond_4f

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2d

    move v0, v3

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    if-eqz v0, :cond_4f

    :try_start_30
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3e
    .catchall {:try_start_30 .. :try_end_3e} :catchall_3f

    goto :goto_44

    :catchall_3f
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_44
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, p0

    :goto_4c
    if-eqz v0, :cond_4f

    goto :goto_50

    :cond_4f
    move v3, v1

    :goto_50
    if-eqz v3, :cond_53

    goto :goto_54

    :cond_53
    move-object p1, p0

    :goto_54
    if-eqz p1, :cond_5e

    new-array p0, v1, [Ljava/lang/String;

    invoke-interface {p1, p0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    :cond_5e
    return-object p0
.end method

.method public final convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p1, :cond_4

    const-string p1, "NULL"

    :cond_4
    if-eqz p2, :cond_c

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_e

    :cond_c
    const-string p2, "0"

    :cond_e
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final convertPackageNameUserIdToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string p0, "packageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "userId"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x23

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/applock/AppLockModel;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
