.class public Lcom/android/launcher3/dot/DotUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;,
        Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;
    }
.end annotation


# static fields
.field public static final FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DotUtils"

.field private static sHasBadgeSupportPackagesUpdated:Z

.field private static volatile sHasUpdatedFromNotificationCenter:Z

.field public static final sNumberBadgeSupportPackageList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher3/dot/DotUtils;->FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/dot/DotUtils;->sHasBadgeSupportPackagesUpdated:Z

    sput-boolean v0, Lcom/android/launcher3/dot/DotUtils;->sHasUpdatedFromNotificationCenter:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addItemToNumberBadgeSupportPackageList(Ljava/lang/String;)V
    .registers 4

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    const-string/jumbo v0, "on package install -"

    const-string v1, "Badge"

    const-string v2, "DotUtils"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dot/DotUtils;->FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    return-void
.end method

.method private static checkBadgeDatabase(Landroid/content/Context;)V
    .registers 12

    const-string v0, "app_package_name"

    const-string v1, "Badge"

    const-string v2, "DotUtils"

    if-nez p0, :cond_e

    const-string p0, "checkBadgeDatabase -- context is null!"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-nez p0, :cond_1a

    const-string p0, "checkBadgeDatabase cr = null"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1a
    const/4 v10, 0x0

    :try_start_1b
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    sget-object v4, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v10

    if-eqz v10, :cond_8d

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_8d

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :cond_3b
    :goto_3b
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-static {v4}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3b

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3b

    :cond_55
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_8d

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkBadgeDatabase, to be delete from database : package = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "app_package_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    sget-object v3, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v3, v4, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_8c} :catch_95
    .catchall {:try_start_1b .. :try_end_8c} :catchall_93

    goto :goto_5f

    :cond_8d
    if-eqz v10, :cond_ad

    :goto_8f
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_ad

    :catchall_93
    move-exception p0

    goto :goto_ae

    :catch_95
    move-exception p0

    :try_start_96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkBadgeDatabase --- e = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_aa
    .catchall {:try_start_96 .. :try_end_aa} :catchall_93

    if-eqz v10, :cond_ad

    goto :goto_8f

    :cond_ad
    :goto_ad
    return-void

    :goto_ae
    if-eqz v10, :cond_b3

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_b3
    throw p0
.end method

.method private static filterNumberBadgeSupportPackageList(Landroid/content/Context;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/dot/DotUtils;->FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;

    sget-object v1, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/android/common/util/PackageUtils;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/android/launcher3/dot/DotUtils;->FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_3c
    return-void
.end method

.method public static getNumberBadgeSupportPackageList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/dot/DotUtils;->FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public static getUpdateFlagFromNotificationCenter()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/dot/DotUtils;->sHasUpdatedFromNotificationCenter:Z

    return v0
.end method

.method public static hasBadgeSupportPackagesUpdated()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/dot/DotUtils;->sHasBadgeSupportPackagesUpdated:Z

    return v0
.end method

.method public static initBadgeSupportPackageListFromAsset(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/LauncherAssetManager;->getBadgeSupportList()Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3d

    const-string v2, "file.separator"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_55

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_20

    sget-object v4, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_3d
    const-string v2, "Badge"

    const-string v3, "DotUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initBadgeSupportPackageListFromAsset badgeSupportList = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    const-string v1, "Badge"

    const-string v2, "DotUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initBadgeSupportPackageListFromAsset -- sNumberBadgeSupportPackageList.size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->filterNumberBadgeSupportPackageList(Landroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_78
    move-exception p0

    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_3 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public static isPackageInBadgeSupportList(Ljava/lang/String;)Z
    .registers 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    sget-object v0, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_b
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static onBadgeSupportPackagesUpdated(Landroid/content/Context;)V
    .registers 2

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->initBadgeSupportPackageListFromAsset(Landroid/content/Context;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/dot/DotUtils;->sHasBadgeSupportPackagesUpdated:Z

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->checkBadgeDatabase(Landroid/content/Context;)V

    return-void
.end method

.method public static removeItemFromNumberBadgeSupportPackageList(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "on package uninstall -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "DotUtils"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserHandle(Landroid/os/UserHandle;)Z

    move-result p1

    if-eqz p1, :cond_24

    return-void

    :cond_24
    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    sget-object p1, Lcom/android/launcher3/dot/DotUtils;->FILTER_SUPPORT_LIST:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_2f
    return-void
.end method

.method public static setBadgeSupportPackageList(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_40

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_40

    :cond_9
    sget-object v0, Lcom/android/launcher3/dot/DotUtils;->sNumberBadgeSupportPackageList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_c
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->filterNumberBadgeSupportPackageList(Landroid/content/Context;)V

    const-string p1, "Badge"

    const-string v1, "DotUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBadgeSupportPackageList -- sNumberBadgeSupportPackageList.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-static {p1}, Lcom/android/launcher3/dot/DotUtils;->setUpdateFlagFromNotificationCenter(Z)V

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_3d

    sput-boolean p1, Lcom/android/launcher3/dot/DotUtils;->sHasBadgeSupportPackagesUpdated:Z

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->checkBadgeDatabase(Landroid/content/Context;)V

    return-void

    :catchall_3d
    move-exception p0

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0

    :cond_40
    :goto_40
    const-string p0, "Badge"

    const-string p1, "DotUtils"

    const-string/jumbo v0, "setBadgeSupportPackageList -- badgeNumberSupportList is null!"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setUpdateFlagFromNotificationCenter(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/dot/DotUtils;->sHasUpdatedFromNotificationCenter:Z

    return-void
.end method
