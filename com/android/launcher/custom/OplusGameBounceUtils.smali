.class public Lcom/android/launcher/custom/OplusGameBounceUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DATE_CHANGED:Ljava/lang/String; = "com.android.settings.action.GAME_BOUNCE_GAME_CLICK"

.field private static final GAME_BOUNCE_DATA_WIDGET_INTENT:Ljava/lang/String; = "com.android.settings/com.oplus.settings.feature.gamebounce.widget.GameBounceDataWidgetProvider"

.field private static final GAME_BOUNCE_IS_WIDGET_ADDED_IN_LAUNCHER:Ljava/lang/String; = "isWidgetAddedInLauncher"

.field private static final GAME_BOUNCE_MODE_DEFAULT:Ljava/lang/String; = "sys.oplus.game_bounce.default"

.field private static final GAME_BOUNCE_PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final GAME_BOUNCE_PACKAGE_DATA_WIDGET_PROVIDER:Ljava/lang/String; = "com.oplus.settings.feature.gamebounce.widget.GameBounceDataWidgetProvider"

.field private static final GAME_BOUNCE_PACKAGE_WIDGET_PROVIDER:Ljava/lang/String; = "com.oplus.settings.feature.gamebounce.widget.GameBounceWidgetProvider"

.field private static final GAME_BOUNCE_WIDGET_INTENT:Ljava/lang/String; = "com.android.settings/com.oplus.settings.feature.gamebounce.widget.GameBounceWidgetProvider"

.field private static final GAME_BOUNCE_WIDGET_IS_ADDED:Ljava/lang/String; = "widget_is_added"

.field private static final OPLUS_SETTINGS_SAFE_PERMISSION:Ljava/lang/String; = "com.oplus.permission.safe.SETTINGS"

.field private static final SETTINGS_OPLUS_GAME_BOUNCE_MODE:Ljava/lang/String; = "oplus_game_bounce_mode"

.field private static final TAG:Ljava/lang/String; = "OplusGameBounceUtils"

.field private static sDefaultMode:I

.field private static volatile sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;


# instance fields
.field private mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

.field private mGameOpenPackageName:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo p0, "sys.oplus.game_bounce.default"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->sDefaultMode:I

    return-void
.end method

.method public static synthetic access$102(Lcom/android/launcher/custom/OplusGameBounceUtils;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameOpenPackageName:Ljava/lang/String;

    return-object p1
.end method

.method public static getInstance()Lcom/android/launcher/custom/OplusGameBounceUtils;
    .registers 2

    sget-object v0, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

    if-nez v0, :cond_17

    const-class v0, Lcom/android/launcher/custom/OplusGameBounceUtils;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/launcher/custom/OplusGameBounceUtils;

    invoke-direct {v1}, Lcom/android/launcher/custom/OplusGameBounceUtils;-><init>()V

    sput-object v1, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

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
    sget-object v0, Lcom/android/launcher/custom/OplusGameBounceUtils;->sInstance:Lcom/android/launcher/custom/OplusGameBounceUtils;

    return-object v0
.end method

.method public static isGameBounceWidget(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_4d

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_4d

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.settings"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.oplus.settings.feature.gamebounce.widget.GameBounceWidgetProvider"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDrop -- isGameBounce is true,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Drag"

    const-string v0, "OplusGameBounceUtils"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_4d
    const/4 p0, 0x0

    return p0
.end method

.method private static isHasWidget(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .registers 3

    const-string v0, "isWidgetAddedInLauncher"

    invoke-static {p0, v0, p1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_10

    const-string/jumbo v0, "widget_is_added"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :cond_10
    return p1
.end method

.method public static onLauncherStarted(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "OplusGameBounceUtils"

    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com.android.settings/com.oplus.settings.feature.gamebounce.widget.GameBounceWidgetProvider"

    invoke-static {v1, v2}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isHasWidget(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1d

    const-string v2, "com.android.settings/com.oplus.settings.feature.gamebounce.widget.GameBounceDataWidgetProvider"

    invoke-static {v1, v2}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isHasWidget(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string/jumbo p0, "onLauncherStarted -- not has any game widget"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1d
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.launcher.action.LAUNCHER_VISIBLE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x1000020

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.oplus.permission.safe.SETTINGS"

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_37} :catch_38

    goto :goto_4e

    :catch_38
    move-exception p0

    const-string/jumbo v1, "onLauncherStarted -- Exception:"

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4e
    return-void
.end method

.method public static sendDropPackageBroadcast(Lcom/android/launcher/Launcher;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.LAUNCHER_DROP_INFO"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "drop_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.oplus.permission.safe.SETTINGS"

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    goto :goto_38

    :catch_20
    move-exception p0

    const-string/jumbo p1, "onDrop -- Exception:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusGameBounceUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_38
    return-void
.end method

.method public static sendRemovePackageBroadcast(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.launcher.action.LAUNCHER_PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x1000020

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "remove_package_name"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.oplus.permission.safe.SETTINGS"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_39

    :catch_21
    move-exception p0

    const-string/jumbo p1, "onLauncherStarted -- Exception:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusGameBounceUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_39
    return-void
.end method


# virtual methods
.method public isGameOpenPackage(Ljava/lang/Object;)Z
    .registers 3

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_1a

    :cond_d
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher/custom/OplusGameBounceUtils;->isGameOpenPackage(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return p0
.end method

.method public isGameOpenPackage(Ljava/lang/String;)Z
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameOpenPackageName:Ljava/lang/String;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    :cond_6
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public registerGameBounceListener(Landroid/content/Context;)V
    .registers 10

    iget-object v0, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

    if-nez v0, :cond_c

    new-instance v0, Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;-><init>(Lcom/android/launcher/custom/OplusGameBounceUtils$1;)V

    iput-object v0, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

    :cond_c
    new-instance v5, Landroid/content/IntentFilter;

    invoke-direct {v5}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.android.settings.action.GAME_BOUNCE_GAME_CLICK"

    invoke-virtual {v5, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerGameBounceListener, context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGameBounceUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public resetGameBouncePackage()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameOpenPackageName:Ljava/lang/String;

    return-void
.end method

.method public unregisterGameBounceListener(Landroid/content/Context;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

    if-eqz v0, :cond_3a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterGameBounceListener, context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusGameBounceUtils"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1b
    iget-object v0, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/custom/OplusGameBounceUtils;->mGameBounceBroadCastReceiver:Lcom/android/launcher/custom/OplusGameBounceUtils$GameBounceBroadCastReceiver;
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_23} :catch_24

    goto :goto_3a

    :catch_24
    move-exception p0

    const-string/jumbo p1, "unregisterGameBounceListener, Exception = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return-void
.end method
