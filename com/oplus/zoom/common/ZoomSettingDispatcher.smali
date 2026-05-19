.class public Lcom/oplus/zoom/common/ZoomSettingDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;,
        Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;,
        Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;
    }
.end annotation


# static fields
.field public static final CHILDREN_MODE:Ljava/lang/String; = "children_mode_on"

.field private static final OPLUS_COMPONENT_SAFE:Ljava/lang/String; = "oplus.permission.OPLUS_COMPONENT_SAFE"

.field public static final SUPER_POWER_MODE:Ljava/lang/String; = "super_powersave_launcher_enter"

.field public static final SYSTEM_FOLDING_ANGLE:Ljava/lang/String; = "system_folding_angle_for_oplus"

.field public static final SYSTEM_FOLDING_STATE:Ljava/lang/String; = "oplus_system_device_state"

.field private static final TAG:Ljava/lang/String; = "ZoomSettingObserver"

.field public static final ZEN_MODE_STATUS:Ljava/lang/String; = "op_breath_mode_status"

.field public static final ZOOM_GAME_SHRINK_SETTINGS:Ljava/lang/String; = "setting_zoomwindow_game_shrink"

.field public static final ZOOM_SHARE_BEHAVIOR:Ljava/lang/String; = "setting_zoomwindow_open_from_share"

.field public static final ZOOM_SIMPLE_MODE:Ljava/lang/String; = "setting_zoom_simple_mode"

.field private static volatile sInstance:Lcom/oplus/zoom/common/ZoomSettingDispatcher;


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbackListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

.field private final mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$1;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$1;-><init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$2;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$2;-><init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$3;

    invoke-direct {v0, p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$3;-><init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V

    iput-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method public static getInstance()Lcom/oplus/zoom/common/ZoomSettingDispatcher;
    .registers 2

    sget-object v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->sInstance:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    if-nez v0, :cond_17

    const-class v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->sInstance:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    if-nez v1, :cond_12

    new-instance v1, Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-direct {v1}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;-><init>()V

    sput-object v1, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->sInstance:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

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
    sget-object v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->sInstance:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    return-object v0
.end method

.method private registerBroadcastObserver()V
    .registers 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oplus.intent.action.MULTI_APP_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "oplus.permission.OPLUS_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mUserBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageMonitor()V
    .registers 5

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    iget-object v1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p0

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method private registerSettingObserver()V
    .registers 14

    :try_start_0
    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_93

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_93

    const-string v0, "setting_zoom_simple_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "setting_zoomwindow_game_shrink"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "setting_zoomwindow_open_from_share"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "animator_duration_scale"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "children_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "super_powersave_launcher_enter"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string v6, "op_breath_mode_status"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "system_folding_angle_for_oplus"

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string v8, "oplus_system_device_state"

    invoke-static {v8}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    iget-object v9, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    iget-object v10, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    const/4 v11, -0x1

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v12, v10, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v1, v12, v0, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v2, v12, v0, v11}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v3, v12, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v4, v12, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v5, v12, v0, v12}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v6, v12, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/oplus/zoom/common/ZoomUtil;->isFoldDevice()Z

    move-result v0

    if-eqz v0, :cond_93

    iget-object v0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v7, v12, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-virtual {v9, v8, v12, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7b} :catch_7c

    goto :goto_93

    :catch_7c
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSettingObserver failed e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ZoomSettingObserver"

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    :goto_93
    return-void
.end method

.method private registerUserSwitchObserver()V
    .registers 5

    const-string v0, "ZoomSettingObserver"

    :try_start_2
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$ZoomUserSwitchObserver;-><init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;Lcom/oplus/zoom/common/ZoomSettingDispatcher$1;)V

    invoke-interface {v1, v2, v0}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_10

    goto :goto_25

    :catch_10
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerUserSwitchObserver error, e: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/LogD;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method


# virtual methods
.method public addCallbackListener(Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public init(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    iget-object p2, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mHandler:Landroid/os/Handler;

    invoke-direct {p1, p0, p2}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;-><init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mSettingsObserver:Lcom/oplus/zoom/common/ZoomSettingDispatcher$SettingsObserver;

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->registerBroadcastObserver()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->registerUserSwitchObserver()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->registerSettingObserver()V

    invoke-direct {p0}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->registerPackageMonitor()V

    return-void
.end method

.method public notifyBroadCastReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;->onBroadCastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public notifyPackageRemove(Ljava/lang/String;I)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-interface {v0, p1, p2}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;->onPackageRemove(Ljava/lang/String;I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public notifySettingChange(ZLandroid/net/Uri;I)V
    .registers 5

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;->onSettingChanged(ZLandroid/net/Uri;I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public notifyUserSwitch(I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;

    invoke-interface {v0, p1}, Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;->onUserSwitched(I)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public removeCallbackListener(Lcom/oplus/zoom/common/ZoomSettingDispatcher$CallbackListener;)V
    .registers 2

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->mCallbackListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method
