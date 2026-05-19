.class public Lcom/android/launcher/badge/BadgeDataProviderCompatVP;
.super Lcom/android/launcher/badge/BadgeDataProviderCompat;
.source ""


# static fields
.field private static final EXTRA_UPDATE_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field private static final EXTRA_UPDATE_TYPE:Ljava/lang/String; = "type"

.field private static final EXTRA_UPDATE_TYPE_VALUE_ALL:Ljava/lang/String; = "all"

.field private static final EXTRA_UPDATE_TYPE_VALUE_BADGE:Ljava/lang/String; = "badge"

.field private static final EXTRA_UPDATE_TYPE_VALUE_FOLD:Ljava/lang/String; = "fold"

.field private static final EXTRA_UPDATE_TYPE_VALUE_ZENMODE:Ljava/lang/String; = "zenmode"

.field private static final EXTRA_UPDATE_UID:Ljava/lang/String; = "uid"

.field private static final EXTRA_UPDATE_VALUE:Ljava/lang/String; = "value"

.field public static final SMALL_APP_PACKAGE_NAME:Ljava/lang/String; = "com.nearme.instant.platform"

.field private static final TAG:Ljava/lang/String; = "BadgeDataProviderCompatVP"

.field public static final TEST_SMALL_APP_PACKAGE_NAME:Ljava/lang/String; = "org.quickapp.union.sample1"

.field public static final UPDATE_NOTIFICATION_INFO:Ljava/lang/String; = "com.oplus.notificationmanager.action.UPDATE_NOTIFICATION_INFO"


# instance fields
.field private volatile mHasUpdateWhenLauncherCreate:Z

.field private mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {p1}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->mHasUpdateWhenLauncherCreate:Z

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->onNotificationFullRefreshInner(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->getNotificationChannel(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getNotificationChannel(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/android/launcher3/notification/NotificationListener;->getInstanceIfConnected()Lcom/android/launcher3/notification/NotificationListener;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {v0, p1, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->mTempRanking:Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService$Ranking;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    if-nez p0, :cond_1f

    goto :goto_23

    :cond_1f
    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v1

    :cond_23
    :goto_23
    return-object v1
.end method

.method public static synthetic h(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->lambda$onNotificationFullRefreshInner$3(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->lambda$onNotificationFullRefreshInner$2(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void
.end method

.method public static synthetic j(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->lambda$onNotificationPosted$0(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->lambda$onNotificationFullRefreshInner$4(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->lambda$onNotificationFullRefreshInner$5(Ljava/util/concurrent/ConcurrentHashMap;)V

    return-void
.end method

.method private synthetic lambda$onNotificationFullRefreshInner$2(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 4

    invoke-virtual {p2}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getBadgeNumberFromDataBase(Lcom/android/launcher3/util/PackageUserKey;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$onNotificationFullRefreshInner$3(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 5

    const-string/jumbo v0, "onNotificationFullRefreshInner, update size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompatVP"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/badge/l;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/l;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Lcom/android/launcher/badge/g;

    invoke-direct {v0, p1}, Lcom/android/launcher/badge/g;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_2f
    return-void
.end method

.method private synthetic lambda$onNotificationFullRefreshInner$4(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;Lcom/android/launcher3/dot/OplusDotInfo;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " shortcutUserKey"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "dotInfo is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompatVP"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getBadgeNumberFromDataBaseForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    :cond_2d
    return-void
.end method

.method private synthetic lambda$onNotificationFullRefreshInner$5(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 5

    const-string/jumbo v0, "onNotificationFullRefreshInner--shortcut, update size = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompatVP"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher/badge/k;

    invoke-direct {v0, p0}, Lcom/android/launcher/badge/k;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->forEach(Ljava/util/function/BiConsumer;)V

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2f

    new-instance v0, Lcom/android/launcher/badge/m;

    invoke-direct {v0, p1}, Lcom/android/launcher/badge/m;-><init>(Ljava/util/concurrent/ConcurrentHashMap;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V

    :cond_2f
    return-void
.end method

.method private synthetic lambda$onNotificationPosted$0(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .registers 13

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/OplusDotInfo;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_3b

    const-string v1, "Badge"

    const-string v4, "BadgeDataProviderCompatVP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotificationPosted, add new badgeInfo! packageUserKey = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher/badge/NotificationBadgeManager;->getBadgeOption(Lcom/android/launcher3/util/PackageUserKey;)I

    move-result v4

    invoke-direct {v1, v4, v3}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    invoke-virtual {v1, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    goto :goto_5c

    :cond_3b
    invoke-virtual {v1, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v4

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_5c

    invoke-virtual {v1}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result v5

    if-eqz v5, :cond_5c

    const-string v5, "Badge"

    const-string v6, "BadgeDataProviderCompatVP"

    const-string/jumbo v7, "onNotificationPosted, remove badge info!"

    invoke-static {v5, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    :goto_5c
    sget-boolean v5, Lcom/android/launcher/badge/BadgeDataProviderCompat;->DEBUG_BADGE:Z

    if-eqz v5, :cond_81

    const-string v6, "Badge"

    const-string v7, "BadgeDataProviderCompatVP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onNotificationPosted, fresh = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", badgeInfo = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_81
    if-eqz v4, :cond_8c

    invoke-virtual {v1}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result v1

    if-eqz v1, :cond_8c

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    :cond_8c
    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_3 .. :try_end_8d} :catchall_128

    sget-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_90
    instance-of v0, p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    if-eqz v0, :cond_123

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/OplusDotInfo;

    if-nez v0, :cond_d4

    const-string v0, "Badge"

    const-string v4, "BadgeDataProviderCompatVP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNotificationPosted, add new badgeInfo! packageUserKey = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v4, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/dot/OplusDotInfo;

    sget-object v4, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v6, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/SmallAppUtils;

    iget-object v6, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/android/launcher3/dot/SmallAppUtils;->getSmallAppBadgeOption(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v0, v4, v3}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f5

    :cond_d4
    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_f5

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result p2

    if-eqz p2, :cond_f5

    const-string p2, "Badge"

    const-string v3, "BadgeDataProviderCompatVP"

    const-string/jumbo v4, "onNotificationPosted, remove badge info!"

    invoke-static {p2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f5
    :goto_f5
    if-eqz v5, :cond_118

    const-string p2, "Badge"

    const-string v3, "BadgeDataProviderCompatVP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationPosted, fresh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", badgeInfo = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_118
    if-eqz v2, :cond_123

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result p2

    if-eqz p2, :cond_123

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    :cond_123
    monitor-exit v1

    return-void

    :catchall_125
    move-exception p0

    monitor-exit v1
    :try_end_127
    .catchall {:try_start_90 .. :try_end_127} :catchall_125

    throw p0

    :catchall_128
    move-exception p0

    :try_start_129
    monitor-exit v0
    :try_end_12a
    .catchall {:try_start_129 .. :try_end_12a} :catchall_128

    throw p0
.end method

.method private synthetic lambda$onNotificationRemoved$1(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .registers 12

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v2, "Badge"

    const-string v3, "BadgeDataProviderCompatVP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationRemoved, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", badge = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_98

    invoke-virtual {v1, p2}, Lcom/android/launcher3/dot/DotInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result v4

    if-eqz v4, :cond_98

    const-string v4, "Badge"

    const-string v5, "BadgeDataProviderCompatVP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNotificationRemoved, Notification key size = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6a

    invoke-virtual {v1}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v4

    if-nez v4, :cond_68

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_68
    move v4, v2

    goto :goto_6b

    :cond_6a
    move v4, v3

    :goto_6b
    const-string v5, "Badge"

    const-string v6, "BadgeDataProviderCompatVP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNotificationRemoved -- shouldFresh = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ", packageUserKey = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_b1

    invoke-virtual {v1}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result v1

    if-eqz v1, :cond_b1

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    goto :goto_b1

    :cond_98
    const-string v4, "Badge"

    const-string v5, "BadgeDataProviderCompatVP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNotificationRemoved, badge is null or remove fail!, badgeInfo = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b1
    :goto_b1
    monitor-exit v0
    :try_end_b2
    .catchall {:try_start_3 .. :try_end_b2} :catchall_172

    sget-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_b5
    instance-of v0, p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    if-eqz v0, :cond_16d

    const-string v0, "Badge"

    const-string v4, "BadgeDataProviderCompatVP"

    const-string v5, "delete a notification of smallapp "

    invoke-static {v0, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v4, "Badge"

    const-string v5, "BadgeDataProviderCompatVP"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onNotificationRemoved, key = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", badge = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_154

    invoke-virtual {v0, p2}, Lcom/android/launcher3/dot/DotInfo;->removeNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    move-result p2

    if-eqz p2, :cond_154

    const-string p2, "Badge"

    const-string v4, "BadgeDataProviderCompatVP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotificationRemoved, Notification key size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/launcher3/dot/DotInfo;->getNotificationKeys()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_126

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result p2

    if-nez p2, :cond_127

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_127

    :cond_126
    move v2, v3

    :cond_127
    :goto_127
    const-string p2, "Badge"

    const-string v3, "BadgeDataProviderCompatVP"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNotificationRemoved -- shouldFresh = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", packageUserKey = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_16d

    invoke-virtual {v0}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeDot()Z

    move-result p2

    if-eqz p2, :cond_16d

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V

    goto :goto_16d

    :cond_154
    const-string p0, "Badge"

    const-string p1, "BadgeDataProviderCompatVP"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNotificationRemoved, badge is null or remove fail!, badgeInfo = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_16d
    :goto_16d
    monitor-exit v1

    return-void

    :catchall_16f
    move-exception p0

    monitor-exit v1
    :try_end_171
    .catchall {:try_start_b5 .. :try_end_171} :catchall_16f

    throw p0

    :catchall_172
    move-exception p0

    :try_start_173
    monitor-exit v0
    :try_end_174
    .catchall {:try_start_173 .. :try_end_174} :catchall_172

    throw p0
.end method

.method public static synthetic m(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->lambda$onNotificationRemoved$1(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V

    return-void
.end method

.method private onNotificationFoldChanged(Ljava/lang/String;I)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    if-gez p2, :cond_9

    goto :goto_14

    :cond_9
    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$4;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_14
    :goto_14
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "notificationFoldChanged, invalid parameter! pkg = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Badge"

    const-string p2, "BadgeDataProviderCompatVP"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private onNotificationFullRefreshInner(Ljava/util/List;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompatVP"

    const-string/jumbo v2, "onNotificationFullRefreshInner, activeNotifications size = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_27
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_142

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.nearme.instant.platform"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-static {v2}, Lcom/android/launcher3/dot/SmallAppUtils;->isSmallApp(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_48

    const/4 v4, 0x1

    goto :goto_49

    :cond_48
    move v4, v3

    :goto_49
    if-eqz v4, :cond_77

    invoke-static {v2}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/dot/OplusDotInfo;

    if-nez v5, :cond_6f

    new-instance v5, Lcom/android/launcher3/dot/OplusDotInfo;

    sget-object v6, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v7, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/dot/SmallAppUtils;

    iget-object v7, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/dot/SmallAppUtils;->getSmallAppBadgeOption(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v3}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6f
    invoke-static {v2, v3}, Lcom/android/launcher3/notification/NotificationKeyDataByShortcut;->fromNotificationByShortcut(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/launcher3/notification/NotificationKeyDataByShortcut;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKeyForShortcut(Lcom/android/launcher3/notification/NotificationKeyDataByShortcut;)Z

    goto :goto_27

    :cond_77
    invoke-static {v2}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;->fromNotification(Landroid/service/notification/StatusBarNotification;)Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    move-result-object v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_9a

    const-string v5, "Badge"

    const-string v6, "BadgeDataProviderCompatVP"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onNotificationFullRefreshInner -- packageUserKey: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9a
    invoke-virtual {v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/dot/OplusDotInfo;

    if-nez v5, :cond_10f

    iget v5, v4, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;->mAppUid:I

    if-gez v5, :cond_d4

    iget-object v5, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v7, v4, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_cf

    const-string v6, "Badge"

    const-string v7, "BadgeDataProviderCompatVP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onNotificationFullRefreshInner get app uid fail! key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cf
    iget-object v6, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;->updatePackageAndAppUid(Ljava/lang/String;I)V

    :cond_d4
    new-instance v5, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher/badge/NotificationBadgeManager;->getBadgeOption(Lcom/android/launcher3/util/PackageUserKey;)I

    move-result v6

    invoke-direct {v5, v6, v3}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    invoke-direct {p0, v2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->getNotificationChannel(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_f2

    iget-object v3, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;->getAppUid()I

    move-result v7

    invoke-virtual {p0, v3, v7, v6}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    goto :goto_10b

    :cond_f2
    const-string v6, "Badge"

    const-string v7, "BadgeDataProviderCompatVP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onNotificationFullRefreshInner, can not get channel id. key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_10b
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_139

    :cond_10f
    invoke-direct {p0, v2}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->getNotificationChannel(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_120

    iget-object v3, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;->getAppUid()I

    move-result v4

    invoke-virtual {p0, v3, v4, v6}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v3

    goto :goto_139

    :cond_120
    const-string v6, "Badge"

    const-string v7, "BadgeDataProviderCompatVP"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onNotificationFullRefreshInner2, can not get channel id. key = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v7, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_139
    invoke-static {v2, v3}, Lcom/android/launcher3/notification/NotificationKeyData;->fromNotification(Landroid/service/notification/StatusBarNotification;Z)Lcom/android/launcher3/notification/NotificationKeyData;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/android/launcher3/dot/OplusDotInfo;->addOrUpdateNotificationKey(Lcom/android/launcher3/notification/NotificationKeyData;)Z

    goto/16 :goto_27

    :cond_142
    invoke-static {}, Lcom/android/launcher3/dot/DotUtils;->getNumberBadgeSupportPackageList()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    sget-object v2, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v4, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {v2}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1be

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_15e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1be

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_16e
    :goto_16e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/UserHandle;

    sget-object v7, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v7, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18d

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18d

    goto :goto_16e

    :cond_18d
    iget-object v7, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v6}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {p0, v7, v4, v8}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v7

    if-gez v7, :cond_19a

    goto :goto_16e

    :cond_19a
    new-instance v8, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    invoke-direct {v8, v4, v6, v7}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-virtual {v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/dot/OplusDotInfo;

    if-nez v6, :cond_16e

    new-instance v6, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/launcher/badge/NotificationBadgeManager;->getBadgeOption(Lcom/android/launcher3/util/PackageUserKey;)I

    move-result v7

    invoke-direct {v6, v7, v3}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    invoke-virtual {v6}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNone()Z

    move-result v7

    if-nez v7, :cond_16e

    invoke-virtual {v0, v8, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16e

    :cond_1be
    sget-object p1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    :try_start_1c1
    new-instance v2, Lcom/android/launcher/badge/BadgeInfoDiffReporter;

    new-instance v4, Landroidx/core/view/inputmethod/a;

    invoke-direct {v4, p0}, Landroidx/core/view/inputmethod/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V

    invoke-direct {v2, v4}, Lcom/android/launcher/badge/BadgeInfoDiffReporter;-><init>(Lcom/android/launcher/badge/BadgeInfoDiffReporter$DiffResult;)V

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher/badge/BadgeInfoDiffReporter;->process(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    monitor-exit p1
    :try_end_1cf
    .catchall {:try_start_1c1 .. :try_end_1cf} :catchall_2bd

    sget-object p1, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-virtual {p1}, Lcom/android/launcher3/dot/SmallAppUtils;->getSmallAppWhiteList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1e6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1fa

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/dot/SmallApp;

    invoke-virtual {v4}, Lcom/android/launcher3/dot/SmallApp;->getPkg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1e6

    :cond_1fa
    const-string v2, "Badge"

    const-string v4, "BadgeDataProviderCompatVP"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "smallAppList init from : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v2}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/pm/UserCache;

    invoke-virtual {p1}, Lcom/android/launcher3/pm/UserCache;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2a8

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_22b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2a8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_23b
    :goto_23b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_22b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    sget-object v6, Lcom/android/common/multiapp/MultiAppManager;->MULTI_USER_HANDLE:Landroid/os/UserHandle;

    invoke-virtual {v6, v5}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_25a

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppAdded(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_25a

    goto :goto_23b

    :cond_25a
    iget-object v6, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {p0, v6, v2, v7}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result v6

    new-instance v7, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-direct {v7, v2, v5, v6}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-virtual {v1, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/dot/OplusDotInfo;

    if-nez v5, :cond_23b

    new-instance v5, Lcom/android/launcher3/dot/OplusDotInfo;

    sget-object v6, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v8, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/dot/SmallAppUtils;

    iget-object v8, v7, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Lcom/android/launcher3/dot/SmallAppUtils;->getSmallAppBadgeOption(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v5, v6, v3}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    const-string v6, "Badge"

    const-string v8, "BadgeDataProviderCompatVP"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "init a OplusDotInfo"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v8, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNone()Z

    move-result v6

    if-nez v6, :cond_23b

    invoke-virtual {v1, v7, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23b

    :cond_2a8
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_2ab
    new-instance p1, Lcom/android/launcher/badge/ShortCutBadgeDiffReporter;

    new-instance v2, Landroidx/core/view/a;

    invoke-direct {v2, p0}, Landroidx/core/view/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V

    invoke-direct {p1, v2}, Lcom/android/launcher/badge/ShortCutBadgeDiffReporter;-><init>(Lcom/android/launcher/badge/ShortCutBadgeDiffReporter$DiffResult;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher/badge/ShortCutBadgeDiffReporter;->process(Ljava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;)V

    monitor-exit v0

    return-void

    :catchall_2ba
    move-exception p0

    monitor-exit v0
    :try_end_2bc
    .catchall {:try_start_2ab .. :try_end_2bc} :catchall_2ba

    throw p0

    :catchall_2bd
    move-exception p0

    :try_start_2be
    monitor-exit p1
    :try_end_2bf
    .catchall {:try_start_2be .. :try_end_2bf} :catchall_2bd

    throw p0
.end method

.method private onRUSBadgeNumberSupportListUpdate()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$2;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public initBadgeNumTypeSupportAppList()V
    .registers 5

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/badge/NotificationBadgeManager;->getList()Ljava/util/List;

    move-result-object v0

    const-string v1, "BadgeDataProviderCompatVP"

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_15

    :cond_13
    const/4 v2, 0x1

    goto :goto_1d

    :cond_15
    :goto_15
    const-string v2, "Badge"

    const-string v3, "get list from service fail!"

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_1d
    if-eqz v2, :cond_25

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/launcher3/dot/DotUtils;->setBadgeSupportPackageList(Landroid/content/Context;Ljava/util/List;)V

    goto :goto_4b

    :cond_25
    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/LauncherAssetManager;->isBadgeSupportListLoadedFromAsset()Z

    move-result v0

    if-eqz v0, :cond_37

    const-string v0, "Badge support list has load from Asset already !! "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_37
    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/LauncherAssetManager;->getInstance(Landroid/content/Context;)Lcom/android/common/LauncherAssetManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/LauncherAssetManager;->loadBadgeSupportListFromAssets()V

    const-string/jumbo v0, "reload from local Asset again! "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_46
    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher3/dot/DotUtils;->onBadgeSupportPackagesUpdated(Landroid/content/Context;)V

    :goto_4b
    return-void
.end method

.method public isFold(Ljava/lang/String;ILjava/lang/String;)Z
    .registers 7

    invoke-static {}, Lcom/android/launcher/badge/NotificationBadgeManager;->getInstance()Lcom/android/launcher/badge/NotificationBadgeManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/badge/NotificationBadgeManager;->isFold(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1b

    const-string v0, "Notification is fold. pkg = "

    const-string v1, ", uid = "

    const-string v2, ", channelId = "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "Badge"

    const-string v0, "BadgeDataProviderCompatVP"

    invoke-static {p1, p3, p2, v0}, Lcom/android/launcher/badge/n;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b
    return p0
.end method

.method public onNotificationCenterSettingChange(Landroid/content/Intent;)V
    .registers 9

    const-string v0, "BadgeDataProviderCompatVP"

    const-string v1, "Badge"

    if-nez p1, :cond_d

    const-string/jumbo p0, "onNotificationCenterSettingChange, intent is null!"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    const-string/jumbo v2, "type"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string/jumbo v4, "value"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const-string/jumbo v4, "pkg"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    const-string/jumbo v6, "uid"

    invoke-virtual {p1, v6, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onNotificationCenterSettingChange, t = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", v = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", p = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", u = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    invoke-direct {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->onRUSBadgeNumberSupportListUpdate()V

    goto :goto_9b

    :cond_64
    const-string v3, "badge"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    goto :goto_9b

    :cond_6d
    const-string v3, "fold"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-direct {p0, v4, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;->onNotificationFoldChanged(Ljava/lang/String;I)V

    goto :goto_9b

    :cond_79
    const-string/jumbo p1, "zenmode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-static {p0}, Lcom/android/launcher3/notification/NotificationListener;->addNotificationsChangedListener(Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;)V

    goto :goto_9b

    :cond_86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "onNotificationCenterSettingChange, un-support type, type = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_9b
    return-void
.end method

.method public onNotificationFullRefresh(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_d

    const-string p0, "Badge"

    const-string p1, "BadgeDataProviderCompatVP"

    const-string/jumbo v0, "onNotificationFullRefresh, null notifications"

    invoke-static {p0, p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$1;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationPosted(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onNotificationPosted -- packageUserKey = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompatVP"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/j;

    const/4 v2, 0x1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/launcher/badge/j;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onNotificationRemoved(Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;)V
    .registers 6

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/j;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/launcher/badge/j;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;Lcom/android/launcher3/util/PackageUserKey;Lcom/android/launcher3/notification/NotificationKeyData;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    if-nez p2, :cond_9

    goto :goto_7e

    :cond_9
    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompatVP"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onPackageUpdate, pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", user = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v0, :cond_7e

    new-instance v0, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    const/4 v1, -0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    sget-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v1

    :try_start_37
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_79

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/PackageUserKey;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_60

    invoke-virtual {v3, p1, p0}, Lcom/android/launcher3/util/PackageUserKey;->updatePackageAndAppUid(Ljava/lang/String;I)V

    :cond_60
    const-string p1, "Badge"

    const-string p2, "BadgeDataProviderCompatVP"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPackageUpdate find in all badge info, update uid = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    monitor-exit v1

    goto :goto_7e

    :catchall_7b
    move-exception p0

    monitor-exit v1
    :try_end_7d
    .catchall {:try_start_37 .. :try_end_7d} :catchall_7b

    throw p0

    :cond_7e
    :goto_7e
    return-void
.end method

.method public registerBadgeSwitchContentObserver()V
    .registers 1

    return-void
.end method

.method public updateBadgeSwitch(ZI)V
    .registers 3

    return-void
.end method

.method public updateNumberSupportListIfNecessary()V
    .registers 3

    invoke-static {}, Lcom/android/launcher3/dot/DotUtils;->getUpdateFlagFromNotificationCenter()Z

    move-result v0

    if-eqz v0, :cond_e

    const-string p0, "BadgeDataProviderCompatVP"

    const-string v0, "filter out when has update from notificationCenter"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP$3;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompatVP;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
