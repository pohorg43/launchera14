.class public Lcom/android/launcher3/dot/SmallAppUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/dot/SmallAppUtils;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;

.field private static final URI_ALL_APP:Landroid/net/Uri;

.field private static final mLockObject:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mProviderClient:Landroid/content/ContentProviderClient;

.field private mSmallAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/dot/SmallApp;",
            ">;"
        }
    .end annotation
.end field

.field private mSmallAppWhiteListObserver:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Landroidx/constraintlayout/core/state/d;->c:Landroidx/constraintlayout/core/state/d;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    const-string v0, "content://com.nearme.instant.setting/notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->URI_ALL_APP:Landroid/net/Uri;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->mLockObject:Ljava/lang/Object;

    const-string v0, "SmallAppUtils"

    sput-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;

    new-instance v0, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;-><init>(Lcom/android/launcher3/dot/SmallAppUtils;)V

    iput-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteListObserver:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v1, "Badge"

    const-string v2, "SmallAppUtils begin init."

    invoke-static {v1, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Landroidx/recyclerview/widget/a;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/dot/SmallAppUtils;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lcom/android/launcher3/dot/SmallAppUtils;
    .registers 2

    new-instance v0, Lcom/android/launcher3/dot/SmallAppUtils;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dot/SmallAppUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic access$000(Lcom/android/launcher3/dot/SmallAppUtils;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic access$002(Lcom/android/launcher3/dot/SmallAppUtils;Ljava/util/List;)Ljava/util/List;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    return-object p1
.end method

.method public static synthetic access$100()Landroid/net/Uri;
    .registers 1

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->URI_ALL_APP:Landroid/net/Uri;

    return-object v0
.end method

.method public static synthetic access$200(Lcom/android/launcher3/dot/SmallAppUtils;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->mLockObject:Ljava/lang/Object;

    return-object v0
.end method

.method public static getShortCutIdForSmallApp(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .registers 3

    const-string v0, ""

    if-eqz p0, :cond_18

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "small_app_package"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_18
    return-object v0
.end method

.method public static isSmallApp(Landroid/service/notification/StatusBarNotification;)Z
    .registers 3

    const/4 v0, 0x0

    if-eqz p0, :cond_17

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string/jumbo v1, "small_app"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_17
    return v0
.end method


# virtual methods
.method public getSmallAppBadgeOption(Ljava/lang/String;)I
    .registers 5

    const-string v0, "Badge"

    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v2, "getSmallAppBadgeOption ："

    invoke-static {v2, p1, v0, v1}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_c
    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/dot/SmallApp;

    invoke-virtual {v1}, Lcom/android/launcher3/dot/SmallApp;->getPkg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Lcom/android/launcher3/dot/SmallApp;->getBadgeOption()I

    move-result p0

    monitor-exit v0

    return p0

    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_3a

    const-string p0, "Badge"

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v1, "getSmallAppBadgeOption： fail--"

    invoke-static {v1, p1, p0, v0}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :catchall_3a
    move-exception p0

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public getSmallAppWhiteList()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/dot/SmallApp;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v1, "getSmallAppWhiteList size is : "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->mLockObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1b
    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_1b .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public initSmallAppList()V
    .registers 10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :try_start_6
    iget-object v2, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lcom/android/launcher3/dot/SmallAppUtils;->URI_ALL_APP:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_66
    .catchall {:try_start_6 .. :try_end_12} :catchall_63

    if-eqz v2, :cond_4d

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    :try_start_19
    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_56

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_56

    :cond_25
    invoke-static {v1}, Lcom/android/launcher3/dot/SmallApp;->createByCursor(Landroid/database/Cursor;)Lcom/android/launcher3/dot/SmallApp;

    move-result-object v3

    const-string v4, "Badge"

    sget-object v5, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initSmallAppList-smallApp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_46

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_46
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_25

    goto :goto_56

    :cond_4d
    const-string v3, "Badge"

    sget-object v4, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v5, "fail to get content provider"

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_56} :catch_61
    .catchall {:try_start_19 .. :try_end_56} :catchall_ac

    :cond_56
    :goto_56
    if-eqz v1, :cond_5b

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_5b
    if-eqz v2, :cond_8a

    :goto_5d
    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_8a

    :catch_61
    move-exception v3

    goto :goto_68

    :catchall_63
    move-exception p0

    move-object v2, v1

    goto :goto_ad

    :catch_66
    move-exception v3

    move-object v2, v1

    :goto_68
    :try_start_68
    sget-object v4, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initSmallAppList-e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_82
    .catchall {:try_start_68 .. :try_end_82} :catchall_ac

    if-eqz v1, :cond_87

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_87
    if-eqz v2, :cond_8a

    goto :goto_5d

    :cond_8a
    :goto_8a
    const-string v1, "Badge"

    sget-object v2, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initSmallAppList back from URI:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/dot/SmallAppUtils;->mLockObject:Ljava/lang/Object;

    monitor-enter v3

    :try_start_a5
    iput-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteList:Ljava/util/List;

    monitor-exit v3

    return-void

    :catchall_a9
    move-exception p0

    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_a5 .. :try_end_ab} :catchall_a9

    throw p0

    :catchall_ac
    move-exception p0

    :goto_ad
    if-eqz v1, :cond_b2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_b2
    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_b7
    throw p0
.end method

.method public registerObserverOnUIThread()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/appcompat/widget/g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/dot/SmallAppUtils;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerSmallAppWhiteListObserver()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->URI_ALL_APP:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_35
    .catchall {:try_start_0 .. :try_end_e} :catchall_33

    const-string v2, "Badge"

    if-nez v0, :cond_1a

    :try_start_12
    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v1, "fail to find smallApp engine uri"

    invoke-static {v2, v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2e

    :cond_1a
    sget-object v0, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "succeed to find smallApp engine uri"

    invoke-static {v2, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteListObserver:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2e} :catch_35
    .catchall {:try_start_12 .. :try_end_2e} :catchall_33

    :goto_2e
    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz p0, :cond_58

    goto :goto_55

    :catchall_33
    move-exception v0

    goto :goto_59

    :catch_35
    move-exception v0

    :try_start_36
    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerSmallAppWhiteListObserver-e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catchall {:try_start_36 .. :try_end_51} :catchall_33

    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz p0, :cond_58

    :goto_55
    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_58
    return-void

    :goto_59
    iget-object p0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz p0, :cond_60

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_60
    throw v0
.end method

.method public unRegisterSmallAppWhiteListObserver()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteListObserver:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    if-eqz v1, :cond_19

    sget-object v1, Lcom/android/launcher3/dot/SmallAppUtils;->TAG:Ljava/lang/String;

    const-string v2, "Badge"

    const-string/jumbo v3, "unRegisterSmallAppWhiteListObserver"

    invoke-static {v2, v1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mSmallAppWhiteListObserver:Lcom/android/launcher3/dot/SmallAppUtils$SmallAppWhiteListObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/dot/SmallAppUtils;->mProviderClient:Landroid/content/ContentProviderClient;

    :cond_23
    return-void
.end method
