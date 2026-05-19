.class public Lcom/android/launcher3/card/CardPermissionManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ACTION_ASSISTANT_SCREEN_STATEMENT:Ljava/lang/String; = "com.oplus.assistant.ACTION_ENTER_ADVICE"

.field public static final CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static final CARD_PATH_GUIDER_CONFIG:Ljava/lang/String; = "guider_config"

.field public static final CARD_PERMISSION_DENIED:I = 0x0

.field public static final CARD_PERMISSION_GRANTED:I = 0x1

.field public static final META_DATA_SUPPORT_GLOBAL_DRAG:Ljava/lang/String; = "com.oplus.assistantscreen.support.card_global_drag"

.field public static final PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

.field public static final PERMISSION_SOURCE_TYPE:Ljava/lang/String; = "permission_source_type"

.field private static final PREF_KEY_CARD_PRELOAD:Ljava/lang/String; = "pref_card_preload"

.field public static final PREF_KEY_FIRST_TIME_CLICK_CARD_ENTRY:Ljava/lang/String; = "first_time_click_card_entry"

.field private static final SETTINGS_KEY_CARD_PERMISSION_STATE:Ljava/lang/String; = "laucher_card_permission_state"

.field private static final TAG:Ljava/lang/String; = "CardPermissionManager"

.field private static volatile sInstance:Lcom/android/launcher3/card/CardPermissionManager;


# instance fields
.field private mCardPreLoadEnable:Ljava/lang/Boolean;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mHasCardPermission:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    const v0, 0x7f120478

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    const v1, 0x7f120004

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_26

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "guider_config"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    goto :goto_28

    :cond_26
    sput-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    :goto_28
    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/CardPermissionManager;Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->lambda$syncCardPermissionState$0(Landroid/content/ContentResolver;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$000(Lcom/android/launcher3/card/CardPermissionManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->cardPermissionRestore(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/card/CardPermissionManager;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/CardPermissionManager;->lambda$syncCardPermissionState$1(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)V

    return-void
.end method

.method private cardPermissionRestore(Ljava/lang/String;)V
    .registers 6

    const-string v0, "Card"

    const-string v1, "CardPermissionManager"

    const-string v2, "cardPermissionRestore"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cardPermissionRestore"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->setPermissionState(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p1

    if-nez p1, :cond_25

    return-void

    :cond_25
    invoke-static {}, Lcom/android/launcher3/card/LauncherCardUtil;->getUncertainLauncherCardInfoList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4c

    const-string v2, "cardPermissionRestore uncertainCardList.size = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BR-Launcher_"

    invoke-static {v3, v2}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/OplusWorkspace;->checkInvalidAndNoPermissionCard()V

    :cond_4c
    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    if-nez v1, :cond_56

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    :cond_56
    sget-object v1, Lcom/oplus/card/util/LogD;->INSTANCE:Lcom/oplus/card/util/LogD;

    const-string v2, "cardPermissionRestore, mCardPreLoadEnable = "

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oplus/card/util/LogD;->fileLog(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oplus/card/manager/domain/CardManager;->getAllCardConfigList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-static {}, Lcom/oplus/card/manager/domain/CardManager;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/CardPermissionManager$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/card/CardPermissionManager$2;-><init>(Lcom/android/launcher3/card/CardPermissionManager;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v0, v1}, Lcom/oplus/card/manager/domain/CardManager;->addCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    goto :goto_95

    :cond_8d
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/OplusWorkspace;->refreshAllCardForPermissionChanged(ZZ)V

    :goto_95
    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->bindDragSever()V

    return-void
.end method

.method public static getInstance()Lcom/android/launcher3/card/CardPermissionManager;
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/mode/LauncherModeManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher3/card/CardPermissionManager;

    invoke-direct {v1}, Lcom/android/launcher3/card/CardPermissionManager;-><init>()V

    sput-object v1, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

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
    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    return-object v0
.end method

.method private getLauncher()Lcom/android/launcher3/Launcher;
    .registers 2

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/Launcher;

    if-nez p0, :cond_22

    const-string p0, "getLauncher launcher = null "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x7

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CardPermissionManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_22
    return-object p0
.end method

.method public static hasInstanced()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->sInstance:Lcom/android/launcher3/card/CardPermissionManager;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method private synthetic lambda$syncCardPermissionState$0(Landroid/content/ContentResolver;)Ljava/lang/Boolean;
    .registers 8

    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_52

    :try_start_c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    const-string v2, "Card"

    const-string v3, "CardPermissionManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "syncCardPermissionState state:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",mHasCardPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    if-ne v1, p0, :cond_3e

    move v0, p0

    :cond_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_42
    .catchall {:try_start_c .. :try_end_42} :catchall_46

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p0

    :catchall_46
    move-exception p0

    if-eqz p1, :cond_51

    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_4c
    .catchall {:try_start_49 .. :try_end_4c} :catchall_4d

    goto :goto_51

    :catchall_4d
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_51
    :goto_51
    throw p0

    :cond_52
    if-eqz p1, :cond_57

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_57
    return-object v1
.end method

.method private synthetic lambda$syncCardPermissionState$1(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .registers 4

    if-nez p2, :cond_1c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "syncCardPermissionState Throwable:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Card"

    const-string p2, "CardPermissionManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1c
    iget-boolean p3, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    if-eqz p3, :cond_2a

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->cardPermissionCancel(Ljava/lang/String;)V

    goto :goto_50

    :cond_2a
    iget-boolean p3, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    if-nez p3, :cond_38

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_38

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->cardPermissionRestore(Ljava/lang/String;)V

    goto :goto_50

    :cond_38
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " syncCardPermissionState"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/android/launcher3/card/CardPermissionManager;->setPermissionState(ZLjava/lang/String;)V

    :goto_50
    return-void
.end method

.method private saveCardPermissionState()V
    .registers 4

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    if-eqz v0, :cond_16

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/card/CardPermissionManager;->setCardPreload(Landroid/content/Context;Z)V

    :cond_16
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "laucher_card_permission_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public cardPermissionCancel(Ljava/lang/String;)V
    .registers 5

    const-string v0, "Card"

    const-string v1, "CardPermissionManager"

    const-string v2, "cardPermissionCancel"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cardPermissionCancel"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/card/CardPermissionManager;->setPermissionState(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-nez p0, :cond_25

    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p0

    invoke-virtual {p0, v0, v0}, Lcom/android/launcher3/OplusWorkspace;->refreshAllCardForPermissionChanged(ZZ)V

    sget-object p0, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->INSTANCE:Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/cache/FoldDeviceCardRecorder;->clearAllCardViewCaches(Ljava/lang/String;)V

    return-void
.end method

.method public init()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportCard()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->registerCardPermissionObserver()V

    :cond_9
    return-void
.end method

.method public initPermissionState(Landroid/content/Context;)V
    .registers 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "laucher_card_permission_state"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_f

    move v1, v0

    :cond_f
    iput-boolean v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    const-string p1, "initPermissionState:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->dForever(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isCardPreload(Landroid/content/Context;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    const/4 v0, 0x1

    const-string/jumbo v1, "pref_card_preload"

    invoke-static {p1, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public isFirstTimeClickCardEntry()Z
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_8

    return v0

    :cond_8
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x1

    const-string v2, "first_time_click_card_entry"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_23
    const-string p0, "isFirstTimeClickCardEntry:"

    const-string v0, "Card"

    const-string v2, "CardPermissionManager"

    invoke-static {p0, v1, v0, v2}, Lu/a;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public isPermissionAllowed()Z
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "isPermissionAllowed:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CardPermissionManager"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    return p0
.end method

.method public launchCardPermissionActivity()V
    .registers 6

    const-string v0, "Card"

    const-string v1, "CardPermissionManager"

    const-string v2, "launchCardPermissionActivity"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object p0

    if-nez p0, :cond_10

    return-void

    :cond_10
    sget-object v0, Lcom/android/launcher3/card/CardPermissionManager;->PACKAGE_ASSISTANT_SCREEN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_19

    return-void

    :cond_19
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.oplus.assistant.ACTION_ENTER_ADVICE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, 0x1

    const-string/jumbo v4, "permission_source_type"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x2715

    :try_start_2f
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_32
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2f .. :try_end_32} :catch_33

    goto :goto_3b

    :catch_33
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3b
    return-void
.end method

.method public registerCardPermissionObserver()V
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/CardPermissionManager$1;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/card/CardPermissionManager$1;-><init>(Lcom/android/launcher3/card/CardPermissionManager;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mContentObserver:Landroid/database/ContentObserver;

    :try_start_15
    sget-object p0, Lcom/android/launcher3/card/CardPermissionManager;->CARD_GUIDER_CHECKED_URI:Landroid/net/Uri;

    if-eqz p0, :cond_35

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_1d
    .catch Ljava/lang/SecurityException; {:try_start_15 .. :try_end_1d} :catch_1e

    goto :goto_35

    :catch_1e
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to find assistantscreen uri"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CardPermissionManager"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public setCardPreload(Landroid/content/Context;Z)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mCardPreLoadEnable:Ljava/lang/Boolean;

    const-string/jumbo p0, "pref_card_preload"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setCardPreload sCardPreLoadEnable = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Card"

    const-string p2, "CardPermissionManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPermissionState(ZLjava/lang/String;)V
    .registers 3

    iput-boolean p1, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-direct {p0}, Lcom/android/launcher3/card/CardPermissionManager;->saveCardPermissionState()V

    const-string/jumbo p1, "setPermissionAllowed:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mHasCardPermission:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", caller:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/OplusFileLog;->dForever(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public syncCardPermissionState(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    const-string v0, "Card"

    const-string v1, "CardPermissionManager"

    const-string/jumbo v2, "syncCardPermissionState"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/d0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/d0;-><init>(Lcom/android/launcher3/card/CardPermissionManager;Landroid/content/ContentResolver;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-static {v0, p1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/card/a;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/a;-><init>(Lcom/android/launcher3/card/CardPermissionManager;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1, v0, p0}, Ljava/util/concurrent/CompletableFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    return-void
.end method

.method public unregisterCardPermissionObserver(Landroid/content/Context;)V
    .registers 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    :try_start_4
    iget-object p0, p0, Lcom/android/launcher3/card/CardPermissionManager;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz p0, :cond_23

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V
    :try_end_b
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_b} :catch_c

    goto :goto_23

    :catch_c
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fail to find assistantscreen uri"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CardPermissionManager"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method
