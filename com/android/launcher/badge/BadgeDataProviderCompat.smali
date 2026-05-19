.class public abstract Lcom/android/launcher/badge/BadgeDataProviderCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;
.implements Lcom/android/launcher3/notification/NotificationListener$NotificationsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/badge/BadgeDataProviderCompat$BadgeDataCallbacks;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final DEBUG_BADGE:Z

.field private static final DOT_REFRESH_DELAY:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "BadgeDataProviderCompat"

.field private static final WINDOW_ID:I = -0x1

.field public static final mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;


# instance fields
.field public mContext:Landroid/content/Context;

.field private mLauncher:Lcom/android/launcher/Launcher;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field private mTaskbarNotificationDotsChangeListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;>;"
        }
    .end annotation
.end field

.field public mWorker:Landroid/os/Handler;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->DEBUG_BADGE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "badge_loader"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->registerNotificationListener()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateNotificationDots$1(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/badge/BadgeDataProviderCompat;Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$postOnBadgeInfoChanged$4(Lcom/android/launcher3/util/PackageUserKey;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateNotificationDotsForShortcut$2(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateNotificationDots$0(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private static dumpAllBadgeInfoPackages()V
    .registers 8

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dumpAllBadgeInfoPackages, badge info package total size = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/PackageUserKey;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v4, "Badge"

    const-string v5, "BadgeDataProviderCompat"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "key: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/launcher3/dot/OplusDotInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_27

    :cond_64
    monitor-exit v0

    return-void

    :catchall_66
    move-exception v1

    monitor-exit v0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw v1
.end method

.method public static synthetic e(Lcom/android/launcher/badge/BadgeDataProviderCompat;ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateAppBadgeNumForShortcut$6(ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V

    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/badge/BadgeDataProviderCompat;ILcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateAppBadgeNum$5(ILcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->lambda$updateNotificationDotsForShortcut$3(Ljava/util/function/Predicate;)V

    return-void
.end method

.method public static getBadgeInfoList(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/dot/OplusDotInfo;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string p0, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    const-string v1, "getBadgeInfoList. packageName = null"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_11
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_21
    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/PackageUserKey;

    iget-object v4, v4, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/dot/OplusDotInfo;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_45
    monitor-exit v0

    return-object v1

    :catchall_47
    move-exception p0

    monitor-exit v0
    :try_end_49
    .catchall {:try_start_14 .. :try_end_49} :catchall_47

    throw p0
.end method

.method public static getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    if-nez p0, :cond_d

    const-string p0, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    const-string v1, "getDotInfo -- packageUserKey is null!"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static getDotInfoForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 3

    if-nez p0, :cond_d

    const-string p0, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    const-string v1, "getDotInfo -- packageUserKey is null!"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_d
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_10
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    monitor-exit v0

    return-object p0

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher/badge/BadgeDataProviderCompat;
    .registers 3

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-nez v0, :cond_1b

    const-class v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    if-nez v1, :cond_16

    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompatVP;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    :cond_16
    monitor-exit v0

    goto :goto_1b

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_18

    throw p0

    :cond_1b
    :goto_1b
    sget-object p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->sInstance:Lcom/android/launcher/badge/BadgeDataProviderCompat;

    return-object p0
.end method

.method private synthetic lambda$postOnBadgeInfoChanged$4(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 6

    const-string v0, "BadgeDataProviderCompat"

    const-string v1, "Badge"

    if-nez p1, :cond_d

    const-string/jumbo p0, "postOnBadgeInfoChanged. packageUserKey = null"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_d
    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v2, :cond_3c

    instance-of v3, p1, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    if-eqz v3, :cond_29

    const-string v2, "delete a shortcut sbn"

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    new-instance v0, Lcom/android/launcher/badge/h;

    invoke-direct {v0, p1}, Lcom/android/launcher/badge/h;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusWorkspace;->updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V

    goto :goto_3c

    :cond_29
    new-instance v0, Lcom/android/launcher/badge/d;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/launcher/badge/d;-><init>(Lcom/android/launcher3/util/PackageUserKey;I)V

    invoke-virtual {v2, v0}, Lcom/android/launcher/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mTaskbarNotificationDotsChangeListener:Ljava/util/function/Consumer;

    new-instance v0, Lcom/android/launcher/badge/e;

    invoke-direct {v0, p1}, Lcom/android/launcher/badge/e;-><init>(Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_3c
    :goto_3c
    return-void
.end method

.method private synthetic lambda$updateAppBadgeNum$5(ILcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppBadgeNum: newCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BadgeDataProviderCompat"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher/badge/f;

    invoke-direct {p1, p2}, Lcom/android/launcher/badge/f;-><init>(Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private synthetic lambda$updateAppBadgeNumForShortcut$6(ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAppBadgeNum: newCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/launcher/badge/g;

    invoke-direct {p1, p2}, Lcom/android/launcher/badge/g;-><init>(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->updateNotificationDots(Ljava/util/function/Predicate;)V

    return-void
.end method

.method private synthetic lambda$updateNotificationDots$0(Ljava/util/function/Predicate;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/launcher/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_7
    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mTaskbarNotificationDotsChangeListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method private synthetic lambda$updateNotificationDots$1(Ljava/util/function/Predicate;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_11

    const-string v0, "BadgeDataProviderCompat"

    const-string/jumbo v1, "updateNotificationDots"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher/Launcher;->updateNotificationDots(Ljava/util/function/Predicate;)V

    :cond_11
    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mTaskbarNotificationDotsChangeListener:Ljava/util/function/Consumer;

    if-eqz p0, :cond_18

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_18
    return-void
.end method

.method private synthetic lambda$updateNotificationDotsForShortcut$2(Ljava/util/function/Predicate;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V

    :cond_b
    return-void
.end method

.method private synthetic lambda$updateNotificationDotsForShortcut$3(Ljava/util/function/Predicate;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusWorkspace;->updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V

    :cond_b
    return-void
.end method

.method private registerNotificationListener()V
    .registers 6

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    const-string/jumbo v2, "registerNotificationListener start..."

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_a
    new-instance v0, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v0}, Lcom/android/launcher3/notification/NotificationListener;-><init>()V

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, v4, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, v2, v3, p0}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_2b} :catch_2c

    goto :goto_32

    :catch_2c
    move-exception p0

    const-string v0, "Cannot register listener"

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method


# virtual methods
.method public clearBadgeNumberForAppInfo(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearBadgeNumberForAppInfo removedApps = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1b

    return-void

    :cond_1b
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1f
    :goto_1f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1f

    iget-object v2, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v2, v1, v3}, Lcom/android/launcher/OplusLauncherAppsCompat;->isPackageEnabledForProfile(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-static {v0}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V

    goto :goto_1f

    :cond_4e
    return-void
.end method

.method public clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V
    .registers 11

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearBadgeNumberForPackageUser -- packageUser = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_1b

    return-void

    :cond_1b
    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_1e
    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/OplusDotInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_2a

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1e .. :try_end_2b} :catchall_ec

    if-nez p1, :cond_2e

    return-void

    :cond_2e
    iget-object v0, p2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    const/4 v3, 0x0

    :try_start_33
    const-string v4, "badge.db"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v4, "app_package_name=? AND user_id=?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    invoke-static {p1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const-string p1, "badge"

    invoke-virtual {v3, p1, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    const-string p1, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearBadgeNumberForPackageUser --  success packageUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", needUpdate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_90

    invoke-virtual {p0, p2}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_90} :catch_a2
    .catchall {:try_start_33 .. :try_end_90} :catchall_a0

    :cond_90
    :try_start_90
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_96
    .catch Ljava/lang/Exception; {:try_start_90 .. :try_end_96} :catch_97

    goto :goto_d9

    :catch_97
    move-exception p0

    const-string p1, "BadgeDataProviderCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_ca

    :catchall_a0
    move-exception p0

    goto :goto_da

    :catch_a2
    move-exception p0

    :try_start_a3
    const-string p1, "BadgeDataProviderCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "clearBadgeNumberForPackageUser --- e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b9
    .catchall {:try_start_a3 .. :try_end_b9} :catchall_a0

    if-eqz v3, :cond_d9

    :try_start_bb
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c1} :catch_c2

    goto :goto_d9

    :catch_c2
    move-exception p0

    const-string p1, "BadgeDataProviderCompat"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    :goto_ca
    const-string p3, "clearBadgeNumberForPackageUser e = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d9
    :goto_d9
    return-void

    :goto_da
    if-eqz v3, :cond_eb

    :try_start_dc
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_dc .. :try_end_e2} :catch_e3

    goto :goto_eb

    :catch_e3
    move-exception p1

    const-string p2, "BadgeDataProviderCompat"

    const-string p3, "clearBadgeNumberForPackageUser e = "

    invoke-static {p3, p1, p2}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_eb
    :goto_eb
    throw p0

    :catchall_ec
    move-exception p0

    :try_start_ed
    monitor-exit v0
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw p0
.end method

.method public getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I
    .registers 5

    sget-boolean p0, Lcom/android/launcher3/Utilities;->ATLEAST_P:Z

    const/4 v0, -0x1

    if-nez p0, :cond_6

    return v0

    :cond_6
    if-eqz p1, :cond_13

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_13

    :try_start_e
    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_12} :catch_13

    return p0

    :catch_13
    :cond_13
    return v0
.end method

.method public getBadgeNumberFromDataBase(Lcom/android/launcher3/util/PackageUserKey;)I
    .registers 13

    const-string v0, "app_badge_count"

    iget-object v1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    const-string v2, "Badge"

    const/4 v3, 0x0

    const-string v4, "BadgeDataProviderCompat"

    if-eqz v1, :cond_a4

    if-eqz p1, :cond_a4

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_a4

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    const-string v8, "app_package_name=? AND user_id=?"

    const/4 v5, 0x2

    new-array v9, v5, [Ljava/lang/String;

    iget-object v5, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v5, v9, v3

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v5

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_80

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_80

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_80

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_62
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_18 .. :try_end_62} :catch_7b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_62} :catch_65
    .catchall {:try_start_18 .. :try_end_62} :catchall_63

    goto :goto_80

    :catchall_63
    move-exception p0

    goto :goto_a0

    :catch_65
    move-exception p0

    :try_start_66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBadgeNumberFromDataBase --- e = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :catch_7b
    const-string p0, "Got CursorIndexOutOfBoundsException while getBadgeNumberFromDataBase."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_66 .. :try_end_80} :catchall_63

    :cond_80
    :goto_80
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBadgeNumberFromDataBase, key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :goto_a0
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_a4
    :goto_a4
    const-string v0, "getBadgeNumberFromDataBase  mContext = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", packageUserKey = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public getBadgeNumberFromDataBaseForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)I
    .registers 13

    const-string v0, "app_badge_count"

    iget-object v1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    const-string v2, "Badge"

    const/4 v3, 0x0

    const-string v4, "BadgeDataProviderCompat"

    if-eqz v1, :cond_9e

    if-eqz p1, :cond_9e

    iget-object v1, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto/16 :goto_9e

    :cond_17
    const/4 v1, 0x0

    :try_start_18
    const-string v8, "app_package_name=?"

    const/4 v5, 0x1

    new-array v9, v5, [Ljava/lang/String;

    iget-object v5, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    aput-object v5, v9, v3

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/launcher/BadgeProvider$BadgeItems;->CONTENT_URI:Landroid/net/Uri;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_7a

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_7a

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_7a

    invoke-interface {v1, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get shortcut count "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5c
    .catch Landroid/database/CursorIndexOutOfBoundsException; {:try_start_18 .. :try_end_5c} :catch_75
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_5c} :catch_5f
    .catchall {:try_start_18 .. :try_end_5c} :catchall_5d

    goto :goto_7a

    :catchall_5d
    move-exception p0

    goto :goto_9a

    :catch_5f
    move-exception p0

    :try_start_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getBadgeNumberFromDataBase --- e = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7a

    :catch_75
    const-string p0, "Got CursorIndexOutOfBoundsException while getBadgeNumberFromDataBase."

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7a
    .catchall {:try_start_60 .. :try_end_7a} :catchall_5d

    :cond_7a
    :goto_7a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getBadgeNumberFromDataBase, key = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", count = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :goto_9a
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_9e
    :goto_9e
    const-string v0, "getBadgeNumberFromDataBase  mContext = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", packageUserKey = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v4, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 3

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/DeepShortcutManager;->supportsDotInfo(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_11

    sget-object p0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_11

    :cond_10
    return-object v0

    :cond_11
    :goto_11
    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p0

    if-eqz p0, :cond_20

    sget-object p1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/dot/OplusDotInfo;

    return-object p0

    :cond_20
    return-object v0
.end method

.method public getDotInfoForShortCutItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/OplusDotInfo;
    .registers 7

    sget-object p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mShortcutUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p0

    :try_start_3
    sget-object v0, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-static {p1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object p1

    if-eqz p1, :cond_1c

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dot/OplusDotInfo;

    monitor-exit p0

    return-object p1

    :cond_1c
    monitor-exit p0

    return-object v1

    :cond_1e
    invoke-static {p1}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;->fromItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    move-result-object p1

    const-string v0, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get a ShortCutIdUserUidKey: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_64

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/dot/OplusDotInfo;

    const-string v0, "Badge"

    const-string v1, "BadgeDataProviderCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mShortcutUserToBadgeInfos is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " OplusDotInfo is :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    return-object p1

    :cond_64
    monitor-exit p0

    return-object v1

    :catchall_66
    move-exception p1

    monitor-exit p0
    :try_end_68
    .catchall {:try_start_3 .. :try_end_68} :catchall_66

    throw p1
.end method

.method public abstract initBadgeNumTypeSupportAppList()V
.end method

.method public abstract isFold(Ljava/lang/String;ILjava/lang/String;)Z
.end method

.method public onMultiPackageAdded(Ljava/lang/String;)V
    .registers 7

    invoke-static {p1}, Lcom/android/launcher3/dot/DotUtils;->isPackageInBadgeSupportList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x3e7

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getAppUid(Landroid/content/pm/PackageManager;Ljava/lang/String;I)I

    move-result p0

    new-instance v0, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v0, p1, v2, p0}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    const-string/jumbo v3, "onMultiPackageAdded -- add multiApp packageName = "

    const-string v4, ", multiUid = "

    invoke-static {v3, p1, v4, p0}, Lcom/android/launcher/badge/i;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/android/launcher3/dot/OplusDotInfo;

    const/4 p1, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/dot/OplusDotInfo;-><init>(II)V

    sget-object p1, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter p1

    :try_start_32
    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_3a

    :catchall_37
    move-exception p0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_32 .. :try_end_39} :catchall_37

    throw p0

    :cond_3a
    :goto_3a
    return-void
.end method

.method public onMultiPackageRemoved(Ljava/lang/String;)V
    .registers 7

    sget-object v0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mPackageUserToBadgeInfos:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    :try_start_3
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/PackageUserKey;

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v3

    iget-object v4, v2, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v2, v2, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    :cond_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_48

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/launcher3/util/PackageUserKey;

    new-instance v2, Landroid/os/UserHandle;

    const/16 v3, 0x3e7

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-direct {v1, p1, v2}, Lcom/android/launcher3/util/PackageUserKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->clearBadgeNumberForPackageUser(Landroid/content/Context;Lcom/android/launcher3/util/PackageUserKey;Z)V

    return-void

    :catchall_48
    move-exception p0

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw p0
.end method

.method public abstract onNotificationCenterSettingChange(Landroid/content/Intent;)V
.end method

.method public abstract onPackageUpdate(Ljava/lang/String;Landroid/os/UserHandle;)V
.end method

.method public postOnBadgeInfoChanged(Lcom/android/launcher3/util/PackageUserKey;)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/core/content/res/d;

    invoke-direct {v1, p0, p1}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Lcom/android/launcher3/util/PackageUserKey;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public refreshAllBadgeInfos()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    if-nez v0, :cond_f

    const-string p0, "Badge"

    const-string v0, "BadgeDataProviderCompat"

    const-string/jumbo v1, "refreshBadgeNumberInfo mWorker = null"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_f
    new-instance v1, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;

    invoke-direct {v1, p0}, Lcom/android/launcher/badge/BadgeDataProviderCompat$1;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public abstract registerBadgeSwitchContentObserver()V
.end method

.method public setLauncher(Lcom/android/launcher/Launcher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public setNotificationListener(Ljava/util/function/Consumer;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mTaskbarNotificationDotsChangeListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public updateAppBadgeNum(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 16

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Badge"

    const-string v2, "BadgeDataProviderCompat"

    if-eqz v0, :cond_11

    const-string/jumbo p0, "updateAppBadgeNum packageName = null"

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/dot/DotUtils$PackageUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfo(Lcom/android/launcher3/util/PackageUserKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppBadgeNum -- dotInfo = "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "no supported badge number type! key = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getNumberCount()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    const/16 v3, 0x3e8

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_71

    :cond_59
    const-string/jumbo p2, "updateAppBadgeNum --- shortcut don\'t show number badge, packageName = "

    const-string v3, ", badgeType = "

    invoke-static {p2, p1, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getBadgeType()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, v2, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v4

    :goto_71
    if-eq p4, p2, :cond_d0

    invoke-virtual {p3, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_96

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateAppBadgeNum. obj = null, So return. packageName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_96
    iget-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getLastUpdateNumberCountTime()J

    move-result-wide v7

    sub-long v7, v5, v7

    const-wide/16 v9, 0x320

    cmp-long p1, v7, v9

    if-gez p1, :cond_ad

    const/16 v4, 0x320

    :cond_ad
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppBadgeNum -- delayTime = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v2, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v1, Lcom/android/launcher/badge/c;

    invoke-direct {v1, p0, p2, v0}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;ILcom/android/launcher3/dot/DotUtils$PackageUserUidKey;)V

    int-to-long v2, v4

    invoke-virtual {p1, v1, p4, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual {p3, v5, v6}, Lcom/android/launcher3/dot/OplusDotInfo;->setLastUpdateNumberCountTime(J)V

    :cond_d0
    return-void
.end method

.method public updateAppBadgeNumForShortcut(Ljava/lang/String;ILandroid/os/UserHandle;I)V
    .registers 14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "BadgeDataProviderCompat"

    const-string v2, "Badge"

    if-eqz v0, :cond_11

    const-string/jumbo p0, "updateAppBadgeNum packageName = null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;I)V

    invoke-static {v0}, Lcom/android/launcher/badge/BadgeDataProviderCompat;->getDotInfoForShortcut(Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)Lcom/android/launcher3/dot/OplusDotInfo;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateAppBadgeNum -- dotInfo = "

    invoke-virtual {p4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, v1, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_47

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "no supported badge number type! key = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_47
    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getNumberCount()I

    move-result p4

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->showBadgeNumber()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_59

    const/16 v3, 0x3e8

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_71

    :cond_59
    const-string/jumbo p2, "updateAppBadgeNum --- shortcut don\'t show number badge, packageName = "

    const-string v3, ", badgeType = "

    invoke-static {p2, p1, v3}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getBadgeType()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, v1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move p2, v4

    :goto_71
    if-eq p4, p2, :cond_bb

    invoke-virtual {p3, p2}, Lcom/android/launcher3/dot/OplusDotInfo;->setNumberCount(I)V

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object p4

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_96

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateAppBadgeNum. obj = null, So return. packageName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_96
    iget-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p3}, Lcom/android/launcher3/dot/OplusDotInfo;->getLastUpdateNumberCountTime()J

    move-result-wide v5

    sub-long v5, v1, v5

    const-wide/16 v7, 0x320

    cmp-long p1, v5, v7

    if-gez p1, :cond_ad

    const/16 v4, 0x320

    :cond_ad
    iget-object p1, p0, Lcom/android/launcher/badge/BadgeDataProviderCompat;->mWorker:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher/badge/c;

    invoke-direct {v3, p0, p2, v0}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;ILcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;)V

    int-to-long v4, v4

    invoke-virtual {p1, v3, p4, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    invoke-virtual {p3, v1, v2}, Lcom/android/launcher3/dot/OplusDotInfo;->setLastUpdateNumberCountTime(J)V

    :cond_bb
    return-void
.end method

.method public abstract updateBadgeSwitch(ZI)V
.end method

.method public updateNotificationDots(Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/util/PackageUserKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    const-string v0, "BadgeDataProviderCompat"

    const-string v2, "delay when window anim is running! "

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/launcher/badge/b;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher/badge/b;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;I)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2a

    :cond_20
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/badge/a;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher/badge/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_2a
    return-void
.end method

.method public updateNotificationDotsForShortcut(Ljava/util/function/Predicate;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/dot/DotUtils$ShortCutIdUserUidKey;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/oplus/quickstep/utils/TracePrintUtil;->isWindowAnimating(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/launcher/badge/a;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher/badge/a;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;I)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v2, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_23

    :cond_19
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/launcher/badge/b;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/launcher/badge/b;-><init>(Lcom/android/launcher/badge/BadgeDataProviderCompat;Ljava/util/function/Predicate;I)V

    invoke-virtual {v0, v2}, Ljava/util/concurrent/AbstractExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :goto_23
    return-void
.end method

.method public abstract updateNumberSupportListIfNecessary()V
.end method
