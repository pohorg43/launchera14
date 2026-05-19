.class public final Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchSearchNotificationHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchSearchNotificationHelper.kt\ncom/android/launcher3/allapps/branch/BranchSearchNotificationHelper\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,320:1\n3792#2:321\n4307#2,2:322\n*S KotlinDebug\n*F\n+ 1 BranchSearchNotificationHelper.kt\ncom/android/launcher3/allapps/branch/BranchSearchNotificationHelper\n*L\n183#1:321\n183#1:322,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CHANNEL_ID:Ljava/lang/String; = "drawer_search_id"

.field private static final CLEAR_NOTIFICATION_ACTION:Ljava/lang/String; = "CLEAR_NOTIFICATION_ACTION"

.field private static final CLEAR_NOTIFICATION_REQUEST_CODE:I = 0x65

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

.field private static final INVALID_UID:I = -0x2710

.field private static final KEY_USER_OPERATOR_LOCK_SCREEN_VISIBLE:Ljava/lang/String; = "KEY_USER_OPERATOR_LOCK_SCREEN_VISIBLE"

.field private static final NOTIFICATION_ID:I = 0x385

.field private static final START_ALL_APPS_ACTION:Ljava/lang/String; = "START_ALL_APPS_ACTION"

.field private static final START_ALL_APPS_REQUEST_CODE:I = 0x66

.field private static final START_DRAWER_SETTINGS_ACTION:Ljava/lang/String; = "START_DRAWER_SETTINGS_ACTION"

.field private static final START_DRAWER_SETTINGS_REQUEST_CODE:I = 0x67

.field private static final TAG:Ljava/lang/String; = "BranchSearchNotificationHelper"

.field private static mChannelName:Ljava/lang/String;

.field private static final mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

.field private static mNotificationEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

.field private static mNotificationManager:Landroid/app/NotificationManager;

.field private static mRemoteView:Landroid/widget/RemoteViews;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper$mNotificationActionReceiver$1;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper$mNotificationActionReceiver$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    const-string v0, "Drawer Search"

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mChannelName:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$startDrawerModeSettings(Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->startDrawerModeSettings(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$startLauncherAllAppsMode(Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->startLauncherAllAppsMode()V

    return-void
.end method

.method private final clearAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4

    const-string v0, "CLEAR_NOTIFICATION_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->generateAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x65

    const/high16 v1, 0x4000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getBroadcast(context, CL…ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final generateAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object p0
.end method

.method private final getUid(Landroid/content/Context;)I
    .registers 6

    const/16 p0, -0x2710

    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_13
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_13} :catch_18

    if-eqz p1, :cond_17

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    :cond_17
    return p0

    :catch_18
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ".packageName, getUid:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BranchSearchNotificationHelper"

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private final init(Landroid/content/Context;)V
    .registers 2

    const-string/jumbo p0, "notification"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo p1, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/app/NotificationManager;

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method private final notificationEnable(Landroid/content/Context;)Z
    .registers 6

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->init(Landroid/content/Context;)V

    :cond_7
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_15

    invoke-virtual {p0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result p0

    if-ne p0, p1, :cond_15

    move p0, p1

    goto :goto_16

    :cond_15
    move p0, v0

    :goto_16
    const-string v1, "BranchSearchNotificationHelper"

    if-nez p0, :cond_20

    const-string p0, "all notification disable"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_20
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_2b

    const-string v2, "drawer_search_id"

    invoke-virtual {p0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    if-eqz p0, :cond_4f

    const-string v2, "checkNotificationEnable: notification importance:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p0

    if-nez p0, :cond_4f

    const-string/jumbo p0, "user choose close this channel"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_4f
    return p1
.end method

.method private final startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const p0, 0x8000

    :try_start_3
    invoke-virtual {p2, p0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_9
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_9} :catch_a

    goto :goto_2c

    :catch_a
    const p0, 0x7f1200b5

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "startActivitySafely:Unable to launch. ActivityNotFoundException intent= "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchSearchNotificationHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2c
    return-void
.end method

.method private final startAllAppsAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4

    const-string v0, "START_ALL_APPS_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->generateAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x66

    const/high16 v1, 0x4000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getBroadcast(context, ST…ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final startDrawerModeSettings(Landroid/content/Context;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.LAUNCHER_MODE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->startActivitySafely(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private final startDrawerSettingAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .registers 4

    const-string v0, "START_DRAWER_SETTINGS_ACTION"

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->generateAction(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/16 v0, 0x67

    const/high16 v1, 0x4000000

    invoke-static {p1, v0, p0, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string p1, "getBroadcast(context, ST…ingIntent.FLAG_IMMUTABLE)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final startLauncherAllAppsMode()V
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/branch/BranchManager;->openLauncherAllAppMode()V

    return-void
.end method


# virtual methods
.method public final cancelSearchNotification(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->init(Landroid/content/Context;)V

    :cond_c
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_15

    const/16 v0, 0x385

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_15
    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p2, :cond_2f

    const-string p0, "key_enable_branch_search_notification"

    const/4 p2, 0x0

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string p0, "KEY_USER_OPERATOR_LOCK_SCREEN_VISIBLE"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    if-nez p0, :cond_2c

    goto :goto_2f

    :cond_2c
    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method public final enableReceiver(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_30

    :try_start_7
    new-instance p0, Landroid/content/IntentFilter;

    const-string p2, "CLEAR_NOTIFICATION_ACTION"

    invoke-direct {p0, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p2, "START_ALL_APPS_ACTION"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_21} :catch_22

    goto :goto_35

    :catch_22
    move-exception p0

    const-string/jumbo p1, "register notification receiver error,e:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "BranchSearchNotificationHelper"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/a;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    goto :goto_35

    :cond_30
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationActionReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :goto_35
    return-void
.end method

.method public final getMNotificationEnableSwitch()Lcom/coui/appcompat/preference/COUISwitchPreference;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    return-object p0
.end method

.method public final notifyNotification(Landroid/content/Context;Z)V
    .registers 3

    if-eqz p1, :cond_26

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureAndRusSupport()Z

    move-result p0

    if-eqz p0, :cond_26

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSearchNotificationEnable()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    const-string p2, "key_enable_branch_search_notification"

    invoke-static {p1, p2, p0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->showSearchNotification(Landroid/content/Context;)V

    :cond_26
    return-void
.end method

.method public final refreshBranchSearchNotification(Landroid/content/Context;)V
    .registers 12

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->init(Landroid/content/Context;)V

    :cond_c
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_25

    array-length v3, v0

    if-nez v3, :cond_1f

    move v3, v1

    goto :goto_20

    :cond_1f
    move v3, v2

    :goto_20
    if-eqz v3, :cond_23

    goto :goto_25

    :cond_23
    move v3, v2

    goto :goto_26

    :cond_25
    :goto_25
    move v3, v1

    :goto_26
    const-string v4, "BranchSearchNotificationHelper"

    if-nez v3, :cond_84

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    array-length v5, v0

    move v6, v2

    :goto_31
    if-ge v6, v5, :cond_56

    aget-object v7, v0, v6

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    const/16 v9, 0x385

    if-ne v8, v9, :cond_4d

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4d

    move v8, v1

    goto :goto_4e

    :cond_4d
    move v8, v2

    :goto_4e
    if-eqz v8, :cond_53

    invoke-interface {v3, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_53
    add-int/lit8 v6, v6, 0x1

    goto :goto_31

    :cond_56
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_70

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_70

    const-string/jumbo v0, "no notification fix branch notification, show"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->showSearchNotification(Landroid/content/Context;)V

    goto :goto_97

    :cond_70
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_7e

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->cancelSearchNotification(Landroid/content/Context;Z)V

    goto :goto_97

    :cond_7e
    const-string p0, "had branch notification"

    invoke-static {v4, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_97

    :cond_84
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-eqz v0, :cond_97

    const-string/jumbo v0, "no branch search notification add, show"

    invoke-static {v4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->showSearchNotification(Landroid/content/Context;)V

    :cond_97
    :goto_97
    return-void
.end method

.method public final release()V
    .registers 1

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    sput-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    return-void
.end method

.method public final setMNotificationEnableSwitch(Lcom/coui/appcompat/preference/COUISwitchPreference;)V
    .registers 2

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationEnableSwitch:Lcom/coui/appcompat/preference/COUISwitchPreference;

    return-void
.end method

.method public final showSearchNotification(Landroid/content/Context;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_c

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->init(Landroid/content/Context;)V

    :cond_c
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/app/NotificationManager;->areNotificationsEnabled()Z

    move-result v0

    if-ne v0, v1, :cond_1a

    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    :goto_1b
    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f120150

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "context.resources.getStr…string.branch_app_search)"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mChannelName:Ljava/lang/String;

    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v3, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mChannelName:Ljava/lang/String;

    const/4 v4, 0x3

    const-string v5, "drawer_search_id"

    invoke-direct {v0, v5, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    sget-object v4, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    if-nez v4, :cond_50

    new-instance v4, Landroid/widget/RemoteViews;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f0d0062

    invoke-direct {v4, v6, v7}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    :cond_50
    sget-object v4, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_5e

    const v6, 0x7f0a0199

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->clearAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    :cond_5e
    sget-object v4, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    if-eqz v4, :cond_85

    const v6, 0x7f0a00a6

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->getPersonalizeSearchSettingProtectExpired()Z

    move-result v7

    if-eqz v7, :cond_77

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f12014f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_82

    :cond_77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1200d3

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    :goto_82
    invoke-virtual {v4, v6, v7}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_85
    new-instance v4, Landroidx/core/app/NotificationCompat$Builder;

    invoke-direct {v4, p1, v5}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v5, 0x7f0806fa

    invoke-virtual {v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mRemoteView:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v2}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    const-string v2, "Builder(context, CHANNEL…\n                .build()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->startAllAppsAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    iput-object p0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_bd

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_bd
    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p0, :cond_c6

    const/16 p1, 0x385

    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_c6
    return-void
.end method

.method public final updateLockScreenVisible(Landroid/content/Context;)V
    .registers 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v0

    if-nez v0, :cond_10

    return-void

    :cond_10
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    const-string v2, "drawer_search_id"

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    goto :goto_1d

    :cond_1c
    move-object v0, v1

    :goto_1d
    const-string/jumbo v2, "updateLockScreenVisible: hide lock screen, channel is null:"

    invoke-static {v2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_2a

    move v5, v3

    goto :goto_2b

    :cond_2a
    move v5, v4

    :goto_2b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", lockscreenVisibility:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_3d
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchSearchNotificationHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_4c

    return-void

    :cond_4c
    const-string v1, "KEY_USER_OPERATOR_LOCK_SCREEN_VISIBLE"

    invoke-static {p1, v1, v4}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_55

    return-void

    :cond_55
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getLockscreenVisibility()I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_5d

    return-void

    :cond_5d
    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    if-eqz v2, :cond_71

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchNotificationHelper;->getUid(Landroid/content/Context;)I

    move-result p0

    invoke-interface {v2, v4, p0, v0}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    :cond_71
    invoke-static {p1, v1, v3}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
