.class public final Lcom/oplus/quickstep/applock/OplusLockManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/OplusLockManager$Companion;,
        Lcom/oplus/quickstep/applock/OplusLockManager$WhenMappings;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusLockManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusLockManager.kt\ncom/oplus/quickstep/applock/OplusLockManager\n+ 2 SPUtils.kt\ncom/oplus/quickstep/utils/SPUtils$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 5 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,697:1\n58#2,3:698\n61#2,21:702\n58#2,3:723\n61#2,21:727\n58#2,3:749\n61#2,21:753\n58#2,3:774\n61#2,21:778\n58#2,3:799\n61#2,21:803\n1#3:701\n1#3:726\n1#3:748\n1#3:752\n1#3:777\n1#3:802\n1#3:824\n1#3:835\n1#3:838\n1#3:849\n1#3:852\n11383#4,9:825\n13309#4:834\n13310#4:836\n11392#4:837\n11383#4,9:839\n13309#4:848\n13310#4:850\n11392#4:851\n1747#5,3:853\n*S KotlinDebug\n*F\n+ 1 OplusLockManager.kt\ncom/oplus/quickstep/applock/OplusLockManager\n*L\n337#1:698,3\n337#1:702,21\n355#1:723,3\n355#1:727,21\n471#1:749,3\n471#1:753,21\n503#1:774,3\n503#1:778,21\n510#1:799,3\n510#1:803,21\n337#1:701\n355#1:726\n471#1:752\n503#1:777\n510#1:802\n562#1:835\n593#1:849\n562#1:825,9\n562#1:834\n562#1:836\n562#1:837\n593#1:839,9\n593#1:848\n593#1:850\n593#1:851\n670#1:853,3\n*E\n"
    }
.end annotation


# static fields
.field private static final APP_UNINSTALL_BROADCAST_DATA_SCHEME:Ljava/lang/String; = "package"

.field private static final CONFIGURATION_SP_NAME:Ljava/lang/String; = "Configuration"

.field public static final Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

.field private static final GET_ALLOW_DEFAULT_LOCK_BY_CONFIG:I = 0x2

.field private static final GET_ALLOW_DEFAULT_LOCK_BY_CONFIG_KEY:Ljava/lang/String; = "default_recent_lock_app"

.field private static final GET_ALLOW_DEFAULT_LOCK_BY_RUS:I = 0x1

.field private static final GET_ALLOW_DEFAULT_LOCK_MODE_SP_KEY:Ljava/lang/String; = "key_of_get_default_lock_app_type"

.field private static final IS_ALREADY_HINT_LOCK_UPGRADE_SP_KEY:Ljava/lang/String; = "is_already_hint_lock_upgrade"

.field private static final IS_ENABLE_LOW_POWER_MODE_SETTING_KEY:Ljava/lang/String; = "low_power"

.field private static final IS_HAS_SUPER_LOCK_FUNCTION_SP_KEY:Ljava/lang/String; = "is_has_super_lock_function"

.field public static final IS_SUPPORT_SUPER_LOCK:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field private static final IS_USER_OPERATED_SUPER_LOCK_IN_MENU_SP_KEY:Ljava/lang/String; = "is_user_operated_super_lock_in_menu"

.field private static final LOCAL_CACHE_LOCK_DATA_VERSION_SP_KEY:Ljava/lang/String; = "config_version"

.field private static final LOW_POWER_MODE_CHANGE_URI:Landroid/net/Uri;

.field private static final LOW_POWER_MODE_DEFAULT_STATE:I = 0x0

.field private static final SNACKBAR_LOCK_OVER_LIMIT_HINT_DISMISS_DELAY:I = 0xbb8

.field public static final SUPER_LOCK_STATS_EVENT:Ljava/lang/String; = "super_lock_stats_event"

.field public static final SUPER_LOCK_STATS_LIST_KEY:Ljava/lang/String; = "super_lock_stats_list_key"

.field public static final SUPER_LOCK_STATS_NUM_KEY:Ljava/lang/String; = "super_lock_stats_num_key"

.field private static final TAG:Ljava/lang/String;

.field private static final TIME_OUT:J = 0x3e8L

.field private static final TURN_OFF_LOW_POWER_MODE:I = 0x0

.field private static final TURN_ON_LOW_POWER_MODE:I = 0x1

.field private static final instance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/oplus/quickstep/applock/OplusLockManager;",
            ">;"
        }
    .end annotation
.end field

.field private static um:Landroid/os/UserManager;


# instance fields
.field private final appLockModel$delegate:Lh4/f;

.field private isLowPowerModCurrently:Z

.field private final sp$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    sget-object v0, Lkotlin/a;->a:Lkotlin/a;

    sget-object v2, Lcom/oplus/quickstep/applock/OplusLockManager$Companion$instance$2;->INSTANCE:Lcom/oplus/quickstep/applock/OplusLockManager$Companion$instance$2;

    invoke-static {v0, v2}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->instance$delegate:Lh4/f;

    sget-boolean v0, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskDispatcher;->SUPPORT:Z

    sput-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const-string v0, "Lock-OplusLockManager"

    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v0, "low_power"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_29

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "EMPTY"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_29
    sput-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->LOW_POWER_MODE_CHANGE_URI:Landroid/net/Uri;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "user"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/os/UserManager;

    if-eqz v2, :cond_3c

    move-object v1, v0

    check-cast v1, Landroid/os/UserManager;

    :cond_3c
    sput-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->um:Landroid/os/UserManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 9

    const-string v0, "SPUtils"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/oplus/quickstep/applock/OplusLockManager$appLockModel$2;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$appLockModel$2;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->appLockModel$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;->INSTANCE:Lcom/oplus/quickstep/applock/OplusLockManager$sp$2;

    invoke-static {v1}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v1

    iput-object v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->sp$delegate:Lh4/f;

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$isCurrentOTAUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)Z

    move-result v1

    const-string v2, "is_has_super_lock_function"

    if-eqz v1, :cond_158

    sget-object v1, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_2a
    const-string v4, "sp"

    if-eqz v1, :cond_f3

    const-string v4, "get"

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_53

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto/16 :goto_f1

    :cond_53
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_73

    instance-of v5, v3, Ljava/lang/String;

    if-eqz v5, :cond_61

    move-object v5, v3

    check-cast v5, Ljava/lang/String;

    goto :goto_62

    :cond_61
    move-object v5, v7

    :goto_62
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Boolean;

    if-nez v5, :cond_6e

    goto :goto_6f

    :cond_6e
    move-object v7, v1

    :goto_6f
    check-cast v7, Ljava/lang/Boolean;

    goto/16 :goto_f1

    :cond_73
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9c

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_83

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    goto :goto_84

    :cond_83
    move-object v5, v7

    :goto_84
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Boolean;

    if-nez v5, :cond_98

    goto :goto_99

    :cond_98
    move-object v7, v1

    :goto_99
    check-cast v7, Ljava/lang/Boolean;

    goto :goto_f1

    :cond_9c
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c5

    instance-of v5, v3, Ljava/lang/Long;

    if-eqz v5, :cond_ac

    move-object v5, v3

    check-cast v5, Ljava/lang/Long;

    goto :goto_ad

    :cond_ac
    move-object v5, v7

    :goto_ad
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Boolean;

    if-nez v5, :cond_c1

    goto :goto_c2

    :cond_c1
    move-object v7, v1

    :goto_c2
    check-cast v7, Ljava/lang/Boolean;

    goto :goto_f1

    :cond_c5
    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ee

    instance-of v5, v3, Ljava/lang/Float;

    if-eqz v5, :cond_d5

    move-object v5, v3

    check-cast v5, Ljava/lang/Float;

    goto :goto_d6

    :cond_d5
    move-object v5, v7

    :goto_d6
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v1, v2, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    instance-of v5, v1, Ljava/lang/Boolean;

    if-nez v5, :cond_ea

    goto :goto_eb

    :cond_ea
    move-object v7, v1

    :goto_eb
    check-cast v7, Ljava/lang/Boolean;

    goto :goto_f1

    :cond_ee
    const-string v1, "unknown"

    move-object v4, v1

    :goto_f1
    if-nez v7, :cond_131

    :cond_f3
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_12a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getValue("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") fail, "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " exception, defaultValue: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", from: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12a
    .catchall {:try_start_2a .. :try_end_12a} :catchall_12c

    :cond_12a
    move-object v7, v3

    goto :goto_131

    :catchall_12c
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    :cond_131
    :goto_131
    invoke-static {v7}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_139

    move-object v3, v7

    goto :goto_144

    :cond_139
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v4

    if-eqz v4, :cond_144

    const-string v4, "getValue(is_has_super_lock_function) fail"

    invoke-static {v0, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_144
    :goto_144
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_158

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v1, "OTA OTA_UPGRADE_SUPER_LOCK"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/applock/LockUpgradeReason;->OTA_UPGRADE:Lcom/oplus/quickstep/applock/LockUpgradeReason;

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/applock/OplusLockManager;->markLockUpgrade(Lcom/oplus/quickstep/applock/LockUpgradeReason;)V

    :cond_158
    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->tryUpdateAppLockData()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateLowPowerMode()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->registerLowPowerModeChangeListener()V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->registerAppUninstallListener()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;-><init>()V

    return-void
.end method

.method public static final synthetic access$getAppLockModel(Lcom/oplus/quickstep/applock/OplusLockManager;)Lcom/oplus/quickstep/applock/IAppLockDataHandler;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->instance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$updateLowPowerMode(Lcom/oplus/quickstep/applock/OplusLockManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->updateLowPowerMode()V

    return-void
.end method

.method private final canLockApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/oplus/quickstep/applock/Result;
    .registers 6

    invoke-virtual {p0, p1, p2, p3}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSupportLock(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result p3

    const/16 v0, 0x2d

    if-nez p3, :cond_32

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2a

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " no support lock"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    new-instance p0, Lcom/oplus/quickstep/applock/Result$False;

    sget-object p1, Lcom/oplus/quickstep/applock/Reason;->APP_SELF_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/Result$False;-><init>(Lcom/oplus/quickstep/applock/Reason;)V

    goto :goto_a1

    :cond_32
    iget-boolean p3, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->isLowPowerModCurrently:Z

    if-eqz p3, :cond_60

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_58

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " low power mode no lock"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_58
    new-instance p0, Lcom/oplus/quickstep/applock/Result$False;

    sget-object p1, Lcom/oplus/quickstep/applock/Reason;->LOW_POWER_CANNOT_LOCK:Lcom/oplus/quickstep/applock/Reason;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/Result$False;-><init>(Lcom/oplus/quickstep/applock/Reason;)V

    goto :goto_a1

    :cond_60
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    const/4 p3, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_6f

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isExceededLockLimit(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_6f

    move v1, p3

    :cond_6f
    if-nez v1, :cond_9b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_93

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " over limit no lock"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_93
    new-instance p0, Lcom/oplus/quickstep/applock/Result$False;

    sget-object p1, Lcom/oplus/quickstep/applock/Reason;->LOCKED_COUNT_REACHED_LIMIT:Lcom/oplus/quickstep/applock/Reason;

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/applock/Result$False;-><init>(Lcom/oplus/quickstep/applock/Reason;)V

    goto :goto_a1

    :cond_9b
    new-instance p0, Lcom/oplus/quickstep/applock/Result$True;

    const/4 p1, 0x0

    invoke-direct {p0, p1, p3, p1}, Lcom/oplus/quickstep/applock/Result$True;-><init>(Lcom/oplus/quickstep/applock/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :goto_a1
    return-object p0
.end method

.method private final getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->appLockModel$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    return-object p0
.end method

.method private final getDefaultGetModeCurrentChange()Lcom/oplus/quickstep/applock/Change;
    .registers 10

    const-string v0, "SPUtils"

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {v1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$getAllowDefaultLockAppsByConfig(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sget-object v3, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v3, "key_of_get_default_lock_app_type"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :try_start_1a
    const-string v5, "sp"

    if-eqz p0, :cond_e6

    const-string v5, "get"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-eqz v7, :cond_57

    instance-of v6, v4, Ljava/lang/Boolean;

    if-eqz v6, :cond_3d

    move-object v6, v4

    check-cast v6, Ljava/lang/Boolean;

    goto :goto_3e

    :cond_3d
    move-object v6, v8

    :goto_3e
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-interface {p0, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    instance-of v6, p0, Ljava/lang/Integer;

    if-nez v6, :cond_52

    goto :goto_53

    :cond_52
    move-object v8, p0

    :goto_53
    check-cast v8, Ljava/lang/Integer;

    goto/16 :goto_e4

    :cond_57
    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_77

    instance-of v6, v4, Ljava/lang/String;

    if-eqz v6, :cond_65

    move-object v6, v4

    check-cast v6, Ljava/lang/String;

    goto :goto_66

    :cond_65
    move-object v6, v8

    :goto_66
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    instance-of v6, p0, Ljava/lang/Integer;

    if-nez v6, :cond_72

    goto :goto_73

    :cond_72
    move-object v8, p0

    :goto_73
    check-cast v8, Ljava/lang/Integer;

    goto/16 :goto_e4

    :cond_77
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8f

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {p0, v3, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    goto :goto_e4

    :cond_8f
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b8

    instance-of v6, v4, Ljava/lang/Long;

    if-eqz v6, :cond_9f

    move-object v6, v4

    check-cast v6, Ljava/lang/Long;

    goto :goto_a0

    :cond_9f
    move-object v6, v8

    :goto_a0
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-interface {p0, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    instance-of v6, p0, Ljava/lang/Integer;

    if-nez v6, :cond_b4

    goto :goto_b5

    :cond_b4
    move-object v8, p0

    :goto_b5
    check-cast v8, Ljava/lang/Integer;

    goto :goto_e4

    :cond_b8
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e1

    instance-of v6, v4, Ljava/lang/Float;

    if-eqz v6, :cond_c8

    move-object v6, v4

    check-cast v6, Ljava/lang/Float;

    goto :goto_c9

    :cond_c8
    move-object v6, v8

    :goto_c9
    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    invoke-interface {p0, v3, v6}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    instance-of v6, p0, Ljava/lang/Integer;

    if-nez v6, :cond_dd

    goto :goto_de

    :cond_dd
    move-object v8, p0

    :goto_de
    check-cast v8, Ljava/lang/Integer;

    goto :goto_e4

    :cond_e1
    const-string p0, "unknown"

    move-object v5, p0

    :goto_e4
    if-nez v8, :cond_123

    :cond_e6
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_11c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getValue("

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") fail, "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " exception, defaultValue: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", from: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11c
    .catchall {:try_start_1a .. :try_end_11c} :catchall_11e

    :cond_11c
    move-object v8, v4

    goto :goto_123

    :catchall_11e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v8

    :cond_123
    :goto_123
    invoke-static {v8}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_12b

    move-object v4, v8

    goto :goto_136

    :cond_12b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    if-eqz v3, :cond_136

    const-string v3, "getValue(key_of_get_default_lock_app_type) fail"

    invoke-static {v0, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_136
    :goto_136
    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-eq p0, v2, :cond_151

    const/4 v0, 0x2

    if-eq p0, v0, :cond_149

    if-eqz v1, :cond_146

    sget-object p0, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    goto :goto_158

    :cond_146
    sget-object p0, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    goto :goto_158

    :cond_149
    if-eqz v1, :cond_14e

    sget-object p0, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    goto :goto_158

    :cond_14e
    sget-object p0, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    goto :goto_158

    :cond_151
    if-eqz v1, :cond_156

    sget-object p0, Lcom/oplus/quickstep/applock/Change;->RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    goto :goto_158

    :cond_156
    sget-object p0, Lcom/oplus/quickstep/applock/Change;->RUS_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    :goto_158
    return-object p0
.end method

.method public static final getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    move-result-object v0

    return-object v0
.end method

.method private final getSp()Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->sp$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/SharedPreferences;

    return-object p0
.end method

.method public static final handleLockFail(Lcom/oplus/quickstep/applock/Result;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail(Lcom/oplus/quickstep/applock/Result;Z)V

    return-void
.end method

.method public static final initAsync()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->initAsync()V

    return-void
.end method

.method public static final isAlreadyHintLockUpgrade()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isAlreadyHintLockUpgrade()Z

    move-result v0

    return v0
.end method

.method public static final isUserOperateSuperLockInMenu()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isUserOperateSuperLockInMenu()Z

    move-result v0

    return v0
.end method

.method public static synthetic lockApp$default(Lcom/oplus/quickstep/applock/OplusLockManager;Ljava/lang/String;ILandroid/content/Intent;ZILjava/lang/Object;)Lcom/oplus/quickstep/applock/Result;
    .registers 7

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_5

    const/4 p3, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_a

    const/4 p4, 0x1

    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/applock/OplusLockManager;->lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)Lcom/oplus/quickstep/applock/Result;

    move-result-object p0

    return-object p0
.end method

.method private final registerAppUninstallListener()V
    .registers 6

    const-string v0, "registerAppUninstallListener fail"

    :try_start_2
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_31

    const-string v2, "getAppContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$1;

    invoke-direct {v2, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$1;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v2

    new-instance v3, Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$3;

    invoke-direct {v3, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$registerAppUninstallListener$1$1$3;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    invoke-virtual {v2, v3}, Lcom/android/common/multiapp/MultiAppManager;->setCallBacks(Lcom/android/common/multiapp/MultiAppManager$MultiAppCallbacks;)V

    goto :goto_3e

    :cond_31
    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_38
    .catchall {:try_start_2 .. :try_end_38} :catchall_39

    goto :goto_3e

    :catchall_39
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_3e
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_49

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_49
    return-void
.end method

.method private final registerLowPowerModeChangeListener()V
    .registers 3

    :try_start_0
    sget-object v0, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    new-instance v1, Lcom/oplus/quickstep/applock/OplusLockManager$registerLowPowerModeChangeListener$1$1;

    invoke-direct {v1, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$registerLowPowerModeChangeListener$1$1;-><init>(Lcom/oplus/quickstep/applock/OplusLockManager;)V

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/AbstractObserver;->addListener(Lcom/oplus/quickstep/common/IObserverListener;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_c
    .catchall {:try_start_0 .. :try_end_c} :catchall_d

    goto :goto_12

    :catchall_d
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_12
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_1f

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v1, "registerLowPowerModeChangeListener fail"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1f
    return-void
.end method

.method public static final setIsAlreadyHintLockUpgrade(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->setIsAlreadyHintLockUpgrade(Z)V

    return-void
.end method

.method public static final setIsUserOperateSuperLockInMenu(Z)V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0, p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->setIsUserOperateSuperLockInMenu(Z)V

    return-void
.end method

.method private final tryUpdateAppLockData()V
    .registers 14

    const-string v0, "SPUtils"

    const-string v1, "config_version"

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getDefaultGetModeCurrentChange()Lcom/oplus/quickstep/applock/Change;

    move-result-object v2

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_14

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_15

    :cond_14
    move-object v3, v4

    :goto_15
    if-eqz v3, :cond_1f

    const v5, 0x7f120347

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_20

    :cond_1f
    move-object v5, v4

    :goto_20
    const-string v6, ""

    if-nez v5, :cond_25

    move-object v5, v6

    :cond_25
    sget-object v7, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v7

    const/4 v8, 0x1

    :try_start_2c
    const-string v9, "sp"

    if-eqz v7, :cond_f9

    const-string v9, "get"

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v10

    invoke-static {v10}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v10

    sget-object v11, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_67

    instance-of v10, v6, Ljava/lang/Boolean;

    if-eqz v10, :cond_4e

    move-object v10, v6

    check-cast v10, Ljava/lang/Boolean;

    goto :goto_4f

    :cond_4e
    move-object v10, v4

    :goto_4f
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v7, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    instance-of v10, v7, Ljava/lang/String;

    if-nez v10, :cond_63

    move-object v7, v4

    :cond_63
    check-cast v7, Ljava/lang/String;

    goto/16 :goto_f7

    :cond_67
    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7b

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v7, v1, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    instance-of v10, v7, Ljava/lang/String;

    if-nez v10, :cond_f7

    :goto_78
    move-object v7, v4

    goto/16 :goto_f7

    :cond_7b
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a3

    instance-of v10, v6, Ljava/lang/Integer;

    if-eqz v10, :cond_8b

    move-object v10, v6

    check-cast v10, Ljava/lang/Integer;

    goto :goto_8c

    :cond_8b
    move-object v10, v4

    :goto_8c
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-interface {v7, v1, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    instance-of v10, v7, Ljava/lang/String;

    if-nez v10, :cond_a0

    move-object v7, v4

    :cond_a0
    check-cast v7, Ljava/lang/String;

    goto :goto_f7

    :cond_a3
    sget-object v11, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cb

    instance-of v10, v6, Ljava/lang/Long;

    if-eqz v10, :cond_b3

    move-object v10, v6

    check-cast v10, Ljava/lang/Long;

    goto :goto_b4

    :cond_b3
    move-object v10, v4

    :goto_b4
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v7, v1, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    instance-of v10, v7, Ljava/lang/String;

    if-nez v10, :cond_c8

    move-object v7, v4

    :cond_c8
    check-cast v7, Ljava/lang/String;

    goto :goto_f7

    :cond_cb
    sget-object v11, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_f3

    instance-of v10, v6, Ljava/lang/Float;

    if-eqz v10, :cond_db

    move-object v10, v6

    check-cast v10, Ljava/lang/Float;

    goto :goto_dc

    :cond_db
    move-object v10, v4

    :goto_dc
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    invoke-interface {v7, v1, v10}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    instance-of v10, v7, Ljava/lang/String;

    if-nez v10, :cond_f0

    move-object v7, v4

    :cond_f0
    check-cast v7, Ljava/lang/String;

    goto :goto_f7

    :cond_f3
    const-string v7, "unknown"

    move-object v9, v7

    goto :goto_78

    :cond_f7
    :goto_f7
    if-nez v7, :cond_136

    :cond_f9
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_12f

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getValue("

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ") fail, "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " exception, defaultValue: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", from: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12f
    .catchall {:try_start_2c .. :try_end_12f} :catchall_131

    :cond_12f
    move-object v7, v6

    goto :goto_136

    :catchall_131
    move-exception v7

    invoke-static {v7}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v7

    :cond_136
    :goto_136
    invoke-static {v7}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v9

    if-nez v9, :cond_13e

    move-object v6, v7

    goto :goto_149

    :cond_13e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_149

    const-string v7, "getValue(config_version) fail"

    invoke-static {v0, v7, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_149
    :goto_149
    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    const/4 v7, 0x0

    if-lez v0, :cond_154

    move v0, v8

    goto :goto_155

    :cond_154
    move v0, v7

    :goto_155
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v9

    if-eqz v9, :cond_195

    sget-object v9, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initLockModel, change:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "; localResourceLockDataVersion:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "; storedLockDataVersion:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "; isLocalResourceHeightVersion:"

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "; appLockModel: "

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v6

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_195
    sget-object v6, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v9

    sget-object v10, Lcom/oplus/quickstep/applock/OplusLockManager$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v11, v10, v11

    packed-switch v11, :pswitch_data_28e

    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :pswitch_1ac  #0x4, 0x5, 0x6
    move v11, v8

    goto :goto_1af

    :pswitch_1ae  #0x1, 0x2, 0x3
    const/4 v11, 0x2

    :goto_1af
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v12, "key_of_get_default_lock_app_type"

    invoke-virtual {v6, v9, v12, v11}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v9

    if-eqz v9, :cond_217

    sget-object v11, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v11, :cond_1db

    sget-object v11, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v11, :cond_1db

    sget-object v11, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v11, :cond_1db

    sget-object v11, Lcom/oplus/quickstep/applock/Change;->RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v11, :cond_1db

    sget-object v11, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v11, :cond_1db

    sget-object v11, Lcom/oplus/quickstep/applock/Change;->RUS_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    if-ne v2, v11, :cond_1d9

    if-eqz v0, :cond_1d9

    goto :goto_1db

    :cond_1d9
    move v11, v7

    goto :goto_1dc

    :cond_1db
    :goto_1db
    move v11, v8

    :goto_1dc
    if-eqz v11, :cond_1df

    goto :goto_1e0

    :cond_1df
    move-object v9, v4

    :goto_1e0
    if-eqz v9, :cond_217

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    packed-switch v10, :pswitch_data_29e

    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :pswitch_1f1  #0x4, 0x5, 0x6
    if-eqz v3, :cond_20b

    sget-boolean v10, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v10, :cond_1fb

    const v10, 0x7f03003a

    goto :goto_1fe

    :cond_1fb
    const v10, 0x7f030039

    :goto_1fe
    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_20b

    invoke-static {v10}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_20b

    goto :goto_214

    :cond_20b
    sget-object v10, Li4/y;->a:Li4/y;

    goto :goto_214

    :pswitch_20e  #0x1, 0x2, 0x3
    sget-object v10, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {v10}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$getAllowDefaultLockAppsByConfig(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)Ljava/util/List;

    move-result-object v10

    :goto_214
    invoke-interface {v9, v10}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateAllowDefaultLockApps(Ljava/util/List;)V

    :cond_217
    sget-object v9, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v9, :cond_233

    sget-object v9, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v9, :cond_233

    sget-object v9, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v9, :cond_22f

    sget-object v9, Lcom/oplus/quickstep/applock/Change;->RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v9, :cond_22f

    sget-object v9, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v2, v9, :cond_22f

    sget-object v9, Lcom/oplus/quickstep/applock/Change;->RUS_TO_RUS:Lcom/oplus/quickstep/applock/Change;

    if-ne v2, v9, :cond_232

    :cond_22f
    if-eqz v0, :cond_232

    goto :goto_233

    :cond_232
    move v8, v7

    :cond_233
    :goto_233
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v0

    if-eqz v0, :cond_283

    if-eqz v8, :cond_23c

    move-object v4, v0

    :cond_23c
    if-eqz v4, :cond_283

    if-eqz v3, :cond_24f

    const v0, 0x7f030026

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_24f

    invoke-static {v0}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_251

    :cond_24f
    sget-object v0, Li4/y;->a:Li4/y;

    :cond_251
    invoke-interface {v4, v0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateForbidLockApps(Ljava/util/List;)V

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    if-eqz v0, :cond_277

    if-eqz v3, :cond_272

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v0, :cond_262

    const v0, 0x7f030066

    goto :goto_265

    :cond_262
    const v0, 0x7f030065

    :goto_265
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_272

    invoke-static {v0}, Li4/k;->O([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_272

    goto :goto_274

    :cond_272
    sget-object v0, Li4/y;->a:Li4/y;

    :goto_274
    invoke-interface {v4, v0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateAllowSuperLockApps(Ljava/util/List;)V

    :cond_277
    if-eqz v3, :cond_280

    const v0, 0x7f0b0074

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    :cond_280
    invoke-interface {v4, v7}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateNoDefaultLockAppLimit(I)V

    :cond_283
    if-eqz v8, :cond_28c

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-virtual {v6, p0, v1, v5}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_28c
    return-void

    nop

    :pswitch_data_28e
    .packed-switch 0x1
        :pswitch_1ae  #00000001
        :pswitch_1ae  #00000002
        :pswitch_1ae  #00000003
        :pswitch_1ac  #00000004
        :pswitch_1ac  #00000005
        :pswitch_1ac  #00000006
    .end packed-switch

    :pswitch_data_29e
    .packed-switch 0x1
        :pswitch_20e  #00000001
        :pswitch_20e  #00000002
        :pswitch_20e  #00000003
        :pswitch_1f1  #00000004
        :pswitch_1f1  #00000005
        :pswitch_1f1  #00000006
    .end packed-switch
.end method

.method public static synthetic unlockApp$default(Lcom/oplus/quickstep/applock/OplusLockManager;ZZLjava/lang/String;IILjava/lang/Object;)V
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_5

    const/4 p1, 0x0

    :cond_5
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_a

    const/4 p2, 0x1

    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oplus/quickstep/applock/OplusLockManager;->unlockApp(ZZLjava/lang/String;I)V

    return-void
.end method

.method private final updateLowPowerMode()V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$getCurrentLowPowerModeState(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)I

    move-result v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    if-eq v0, v1, :cond_d

    const/4 v0, 0x0

    goto :goto_12

    :cond_d
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_12

    :cond_10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_12
    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v2, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v3, "updateLowPowerMode: "

    invoke-static {v3, v1, v2}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/oplus/quickstep/applock/OplusLockManager;->isLowPowerModCurrently:Z

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-interface {p0, v1}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->setIsVirtualizeLockData(Z)V

    :cond_2a
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    goto :goto_35

    :cond_2e
    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v0, "updateLowPowerMode fail"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_35
    return-void
.end method


# virtual methods
.method public final getLockAppOfList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-interface {p0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->getLockApps()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_e

    :cond_c
    sget-object p0, Li4/y;->a:Li4/y;

    :cond_e
    return-object p0
.end method

.method public final getSuperLockingApps()Ljava/util/List;
    .registers 2
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
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_13

    invoke-interface {p0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->getSuperLockingApps()Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_15

    :cond_13
    sget-object p0, Li4/y;->a:Li4/y;

    :cond_15
    return-object p0
.end method

.method public final hasSuperLockingApp()Z
    .registers 3

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    const/4 v0, 0x1

    if-eqz p0, :cond_14

    invoke-interface {p0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->hasSuperLockingApp()Z

    move-result p0

    if-ne p0, v0, :cond_14

    move v1, v0

    :cond_14
    return v1
.end method

.method public final isAppAllowLock(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSupportLock(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p0

    if-nez p0, :cond_41

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->um:Landroid/os/UserManager;

    if-eqz p0, :cond_3d

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-nez p0, :cond_3d

    move p0, v2

    goto :goto_3e

    :cond_3d
    move p0, v0

    :goto_3e
    if-eqz p0, :cond_41

    move v0, v2

    :cond_41
    return v0
.end method

.method public final isAppAllowSuperLock(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_9

    return v1

    :cond_9
    if-nez p2, :cond_c

    return v1

    :cond_c
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isAllowSuperLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_16
    return v1
.end method

.method public final isAppAllowUnlock(Lcom/android/systemui/shared/recents/model/Task;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_41

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p1, :cond_41

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "it.packageName"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSupportLock(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_41

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget v3, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result p0

    if-eqz p0, :cond_41

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->um:Landroid/os/UserManager;

    if-eqz p0, :cond_3d

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    if-nez p0, :cond_3d

    move p0, v2

    goto :goto_3e

    :cond_3d
    move p0, v0

    :goto_3e
    if-eqz p0, :cond_41

    move v0, v2

    :cond_41
    return v0
.end method

.method public final isAppExperiencedLockUpgradeSuperLock(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_9

    return v1

    :cond_9
    if-nez p2, :cond_c

    return v1

    :cond_c
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isExperiencedLockUpgradeSuperLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_16
    return v1
.end method

.method public final isAppLocking(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    sget-object v1, Lcom/oplus/quickstep/applock/AppLockModel;->Companion:Lcom/oplus/quickstep/applock/AppLockModel$Companion;

    invoke-virtual {v1, p1}, Lcom/oplus/quickstep/applock/AppLockModel$Companion;->convertPackageNameUserIdToArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1d

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v0

    :cond_1d
    return v0
.end method

.method public final isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    if-eqz p2, :cond_23

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    move v1, v0

    :goto_12
    if-eqz v1, :cond_15

    return v0

    :cond_15
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_23

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_23
    return v0
.end method

.method public final isAppSuperLocking(Lcom/android/quickstep/views/TaskView;)Z
    .registers 4

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getTask()Lcom/android/systemui/shared/recents/model/Task;

    move-result-object p1

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Lcom/android/systemui/shared/recents/model/Task;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p1, p1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppSuperLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_1e
    return v1
.end method

.method public final isAppSuperLocking(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    if-nez p1, :cond_9

    return v1

    :cond_9
    if-nez p2, :cond_c

    return v1

    :cond_c
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_16

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isSuperLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :cond_16
    return v1
.end method

.method public final isAppSupportLock(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Z
    .registers 8

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result v2

    const/high16 v3, 0x800000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_19

    move v2, v0

    goto :goto_1a

    :cond_19
    move v2, v1

    :goto_1a
    if-nez v2, :cond_35

    invoke-static {}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->getInstance()Lcom/oplus/quickstep/memory/OplusSpecialListHelper;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oplus/quickstep/memory/OplusSpecialListHelper;->isRedundantTask(Landroid/content/Intent;)Z

    move-result p3

    if-nez p3, :cond_35

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isForbidLock(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    goto :goto_32

    :cond_31
    move p0, v0

    :goto_32
    if-nez p0, :cond_35

    goto :goto_36

    :cond_35
    move v0, v1

    :goto_36
    return v0
.end method

.method public final isAppsExistLocking(Lcom/android/quickstep/views/TaskView;)Z
    .registers 5

    instance-of v0, p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    if-eqz v0, :cond_7

    check-cast p1, Lcom/android/quickstep/views/OplusTaskViewImpl;

    goto :goto_8

    :cond_7
    const/4 p1, 0x0

    :goto_8
    const/4 v0, 0x0

    if-eqz p1, :cond_3a

    invoke-virtual {p1}, Lcom/android/quickstep/views/OplusTaskViewImpl;->getAllTaskKeysIncluded()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_18

    goto :goto_3a

    :cond_18
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget v1, v1, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/oplus/quickstep/applock/OplusLockManager;->isAppLocking(Ljava/lang/String;Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 p0, 0x1

    move v0, p0

    :cond_3a
    :goto_3a
    return v0
.end method

.method public final lockApp(Ljava/lang/String;ILandroid/content/Intent;Z)Lcom/oplus/quickstep/applock/Result;
    .registers 10

    const-string v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4a

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1d

    new-instance v4, Lcom/oplus/quickstep/applock/Result$True;

    invoke-direct {v4, v1, v3, v1}, Lcom/oplus/quickstep/applock/Result$True;-><init>(Lcom/oplus/quickstep/applock/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    goto :goto_1e

    :cond_1d
    move-object v4, v1

    :goto_1e
    xor-int/2addr v2, v3

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    move-object v0, v1

    :goto_23
    if-eqz v0, :cond_49

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1, p3}, Lcom/oplus/quickstep/applock/OplusLockManager;->canLockApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/oplus/quickstep/applock/Result;

    move-result-object p0

    instance-of p3, p0, Lcom/oplus/quickstep/applock/Result$True;

    if-eqz p3, :cond_4b

    new-instance p3, Lh4/j;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p3}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->lockApps(Ljava/util/Collection;)V

    if-eqz p4, :cond_4b

    sget-object p1, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {p1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$notifyLockViewUiUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)V

    goto :goto_4b

    :cond_49
    move-object v1, v4

    :cond_4a
    move-object p0, v1

    :cond_4b
    :goto_4b
    return-object p0
.end method

.method public final varargs lockApps([Lcom/android/systemui/shared/recents/model/Task;)Ljava/util/List;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/systemui/shared/recents/model/Task;",
            ")",
            "Ljava/util/List<",
            "Lcom/oplus/quickstep/applock/Result;",
            ">;"
        }
    .end annotation

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_12
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ge v4, v2, :cond_b7

    aget-object v7, p1, v4

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v8

    if-eqz v8, :cond_4e

    sget-object v8, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v9, "lockApps,"

    invoke-static {v9}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_2f

    invoke-virtual {v10}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v10

    goto :goto_30

    :cond_2f
    move-object v10, v6

    :goto_30
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2d

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v10, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v10, :cond_43

    iget v10, v10, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_44

    :cond_43
    move-object v10, v6

    :goto_44
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4e
    iget-object v7, v7, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v7, :cond_ae

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v8

    const-string v9, "it.packageName"

    if-eqz v8, :cond_78

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v11, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v10, v11}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_75

    new-instance v10, Lcom/oplus/quickstep/applock/Result$True;

    invoke-direct {v10, v6, v5, v6}, Lcom/oplus/quickstep/applock/Result$True;-><init>(Lcom/oplus/quickstep/applock/Reason;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_75
    if-nez v8, :cond_78

    goto :goto_79

    :cond_78
    move v5, v3

    :goto_79
    if-eqz v5, :cond_7c

    goto :goto_7d

    :cond_7c
    move-object v7, v6

    :goto_7d
    if-eqz v7, :cond_ae

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v8, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-direct {p0, v5, v8, v9}, Lcom/oplus/quickstep/applock/OplusLockManager;->canLockApp(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/oplus/quickstep/applock/Result;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    instance-of v8, v5, Lcom/oplus/quickstep/applock/Result$True;

    if-eqz v8, :cond_9c

    check-cast v5, Lcom/oplus/quickstep/applock/Result$True;

    goto :goto_9d

    :cond_9c
    move-object v5, v6

    :goto_9d
    if-eqz v5, :cond_ae

    new-instance v6, Lh4/j;

    invoke-virtual {v7}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v7, v7, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_ae
    if-eqz v6, :cond_b3

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_b3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_12

    :cond_b7
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_bf

    goto :goto_c0

    :cond_bf
    move-object v1, v6

    :goto_c0
    if-eqz v1, :cond_d0

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_cb

    invoke-interface {p0, v1}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->lockApps(Ljava/util/Collection;)V

    :cond_cb
    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$notifyLockViewUiUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)V

    :cond_d0
    return-object v0
.end method

.method public final markLockUpgrade(Lcom/oplus/quickstep/applock/LockUpgradeReason;)V
    .registers 3

    const-string v0, "upgradeReason"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_e

    invoke-interface {p0, p1}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->markLockUpgrade(Lcom/oplus/quickstep/applock/LockUpgradeReason;)V

    :cond_e
    return-void
.end method

.method public final restoreLockAppsData(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const-string v0, "backupLockAppsOfJson"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "oldPhoneInstalledAppsOfJson"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v1, "restoreLockedApp"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_22

    invoke-interface {p0, p1, p2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->restoreBackupLockApps(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method public final unlockApp(ZZLjava/lang/String;I)V
    .registers 8

    const-string v0, "packageName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_3a

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unlockApp("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    if-ne p1, p2, :cond_3d

    return-void

    :cond_3d
    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_66

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p3, v0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 p0, 0x0

    :goto_4f
    if-eqz p0, :cond_66

    new-instance v0, Lh4/j;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p4

    invoke-direct {v0, p3, p4}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->unLockApps(ZZLjava/util/Collection;)V

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$notifyLockViewUiUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)V

    :cond_66
    return-void
.end method

.method public final varargs unlockApps([Lcom/android/systemui/shared/recents/model/Task;)V
    .registers 12

    const-string v0, "tasks"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_26

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v1, "unlockApps, "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "toString(this)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_2e
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ge v3, v1, :cond_a8

    aget-object v6, p1, v3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v7

    if-eqz v7, :cond_6a

    sget-object v7, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    const-string v8, "unlockApps,"

    invoke-static {v8}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v9, :cond_4b

    invoke-virtual {v9}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v9

    goto :goto_4c

    :cond_4b
    move-object v9, v4

    :goto_4c
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v9, 0x2d

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v9, :cond_5f

    iget v9, v9, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    goto :goto_60

    :cond_5f
    move-object v9, v4

    :goto_60
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    iget-object v6, v6, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v6, :cond_a0

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v7

    if-eqz v7, :cond_8a

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "it.packageName"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->isLocking(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-ne v7, v5, :cond_8a

    goto :goto_8b

    :cond_8a
    move v5, v2

    :goto_8b
    if-eqz v5, :cond_8e

    goto :goto_8f

    :cond_8e
    move-object v6, v4

    :goto_8f
    if-eqz v6, :cond_a0

    new-instance v4, Lh4/j;

    invoke-virtual {v6}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget v6, v6, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lh4/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_a0
    if-eqz v4, :cond_a5

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2e

    :cond_a8
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v5

    if-eqz p1, :cond_b0

    goto :goto_b1

    :cond_b0
    move-object v0, v4

    :goto_b1
    if-eqz v0, :cond_c1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object p0

    if-eqz p0, :cond_bc

    invoke-interface {p0, v2, v5, v0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->unLockApps(ZZLjava/util/Collection;)V

    :cond_bc
    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$notifyLockViewUiUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)V

    :cond_c1
    return-void
.end method

.method public final updateAppLockDataByConfig()V
    .registers 5

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getDefaultGetModeCurrentChange()Lcom/oplus/quickstep/applock/Change;

    move-result-object v0

    sget-object v1, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppLockDataByConfig("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v1

    if-eqz v1, :cond_54

    sget-object v2, Lcom/oplus/quickstep/applock/Change;->CONFIG_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v0, v2, :cond_34

    sget-object v2, Lcom/oplus/quickstep/applock/Change;->RUS_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-eq v0, v2, :cond_34

    sget-object v2, Lcom/oplus/quickstep/applock/Change;->UNKNOWN_TO_CONFIG:Lcom/oplus/quickstep/applock/Change;

    if-ne v0, v2, :cond_32

    goto :goto_34

    :cond_32
    const/4 v0, 0x0

    goto :goto_35

    :cond_34
    :goto_34
    const/4 v0, 0x1

    :goto_35
    if-eqz v0, :cond_38

    goto :goto_39

    :cond_38
    const/4 v1, 0x0

    :goto_39
    if-eqz v1, :cond_54

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "key_of_get_default_lock_app_type"

    invoke-virtual {v0, p0, v3, v2}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-static {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->access$getAllowDefaultLockAppsByConfig(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)Ljava/util/List;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateAllowDefaultLockApps(Ljava/util/List;)V

    :cond_54
    return-void
.end method

.method public final updateAppLockDataByRUS(Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const-string v5, "unknown"

    const-string v6, ", from: "

    const-string v7, " exception, defaultValue: "

    const-string v8, ") fail, "

    const-string v9, "getValue("

    const-string v10, "get"

    const-string v11, "sp"

    const-string v12, "config_version"

    const-string v13, "SPUtils"

    const-string v0, "version"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "forbidLockApps"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowDefaultLockApps"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "allowSuperLockApps"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v14, ""

    if-eqz v0, :cond_123

    :try_start_38
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v15
    :try_end_44
    .catchall {:try_start_38 .. :try_end_44} :catchall_11b

    move-object/from16 v16, v5

    :try_start_46
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6e

    instance-of v5, v14, Ljava/lang/Boolean;

    if-eqz v5, :cond_56

    move-object v5, v14

    check-cast v5, Ljava/lang/Boolean;

    goto :goto_57

    :cond_56
    const/4 v5, 0x0

    :goto_57
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-interface {v0, v12, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_6b

    const/4 v0, 0x0

    :cond_6b
    check-cast v0, Ljava/lang/String;

    goto :goto_87

    :cond_6e
    const/4 v5, 0x0

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8d

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v5, v0, Ljava/lang/String;

    if-nez v5, :cond_87

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    :goto_84
    const/4 v0, 0x0

    goto/16 :goto_116

    :cond_87
    :goto_87
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto/16 :goto_116

    :cond_8d
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    instance-of v5, v14, Ljava/lang/Integer;

    if-eqz v5, :cond_9d

    move-object v5, v14

    check-cast v5, Ljava/lang/Integer;

    goto :goto_9e

    :cond_9d
    const/4 v5, 0x0

    :goto_9e
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v0, v12, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    instance-of v0, v5, Ljava/lang/String;

    if-nez v0, :cond_b2

    const/4 v5, 0x0

    :cond_b2
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    goto :goto_87

    :cond_b6
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    instance-of v5, v14, Ljava/lang/Long;

    if-eqz v5, :cond_c6

    move-object v5, v14

    check-cast v5, Ljava/lang/Long;

    goto :goto_c7

    :cond_c6
    const/4 v5, 0x0

    :goto_c7
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_ca
    .catchall {:try_start_46 .. :try_end_ca} :catchall_119

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    :try_start_ce
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface {v0, v12, v10, v11}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    instance-of v0, v5, Ljava/lang/String;

    if-nez v0, :cond_df

    const/4 v5, 0x0

    :cond_df
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    :goto_e2
    move-object/from16 v10, v18

    goto :goto_116

    :cond_e5
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v15, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_112

    instance-of v5, v14, Ljava/lang/Float;

    if-eqz v5, :cond_f9

    move-object v5, v14

    check-cast v5, Ljava/lang/Float;

    goto :goto_fa

    :cond_f9
    const/4 v5, 0x0

    :goto_fa
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-interface {v0, v12, v5}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    instance-of v0, v5, Ljava/lang/String;

    if-nez v0, :cond_10e

    const/4 v5, 0x0

    :cond_10e
    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    goto :goto_e2

    :cond_112
    move-object/from16 v10, v16

    goto/16 :goto_84

    :goto_116
    if-nez v0, :cond_161

    goto :goto_12b

    :catchall_119
    move-exception v0

    goto :goto_11e

    :catchall_11b
    move-exception v0

    move-object/from16 v16, v5

    :goto_11e
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    goto :goto_15d

    :cond_123
    move-object/from16 v16, v5

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    move-object/from16 v10, v19

    :goto_12b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_15a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_15a
    .catchall {:try_start_ce .. :try_end_15a} :catchall_15c

    :cond_15a
    move-object v0, v14

    goto :goto_161

    :catchall_15c
    move-exception v0

    :goto_15d
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :cond_161
    :goto_161
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-nez v5, :cond_169

    move-object v14, v0

    goto :goto_174

    :cond_169
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_174

    const-string v0, "getValue(config_version) fail"

    invoke-static {v13, v0, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_174
    :goto_174
    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_19b

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAppLockDataByRUS fail, local is height version; version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; versionFromSP: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19b
    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateAppLockDataByRUS("

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x2d

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x29

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v5

    if-eqz v5, :cond_2fe

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v10, "key_of_get_default_lock_app_type"

    const/4 v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    if-eqz v0, :cond_29c

    :try_start_1d3
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v11

    invoke-static {v11}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v11

    sget-object v15, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_207

    instance-of v11, v14, Ljava/lang/Boolean;

    if-eqz v11, :cond_1ef

    move-object v11, v14

    check-cast v11, Ljava/lang/Boolean;

    goto :goto_1f0

    :cond_1ef
    const/4 v11, 0x0

    :goto_1f0
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    instance-of v11, v0, Ljava/lang/Integer;

    if-nez v11, :cond_204

    const/4 v0, 0x0

    :cond_204
    check-cast v0, Ljava/lang/Integer;

    goto :goto_23d

    :cond_207
    const/4 v15, 0x0

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_226

    instance-of v11, v14, Ljava/lang/String;

    if-eqz v11, :cond_216

    move-object v11, v14

    check-cast v11, Ljava/lang/String;

    goto :goto_217

    :cond_216
    move-object v11, v15

    :goto_217
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    instance-of v11, v0, Ljava/lang/Integer;

    if-nez v11, :cond_223

    move-object v0, v15

    :cond_223
    check-cast v0, Ljava/lang/Integer;

    goto :goto_23d

    :cond_226
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_23f

    invoke-static {v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_23d
    move-object v15, v12

    goto :goto_294

    :cond_23f
    sget-object v15, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_268

    instance-of v11, v14, Ljava/lang/Long;

    if-eqz v11, :cond_24f

    move-object v11, v14

    check-cast v11, Ljava/lang/Long;

    goto :goto_250

    :cond_24f
    const/4 v11, 0x0

    :goto_250
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_253
    .catchall {:try_start_1d3 .. :try_end_253} :catchall_299

    move-object v15, v12

    :try_start_254
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    invoke-interface {v0, v10, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    instance-of v11, v0, Ljava/lang/Integer;

    if-nez v11, :cond_265

    const/4 v0, 0x0

    :cond_265
    check-cast v0, Ljava/lang/Integer;

    goto :goto_294

    :cond_268
    move-object v15, v12

    sget-object v12, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_291

    instance-of v11, v14, Ljava/lang/Float;

    if-eqz v11, :cond_279

    move-object v11, v14

    check-cast v11, Ljava/lang/Float;

    goto :goto_27a

    :cond_279
    const/4 v11, 0x0

    :goto_27a
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    invoke-interface {v0, v10, v11}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    instance-of v11, v0, Ljava/lang/Integer;

    if-nez v11, :cond_28e

    const/4 v0, 0x0

    :cond_28e
    check-cast v0, Ljava/lang/Integer;

    goto :goto_294

    :cond_291
    move-object/from16 v18, v16

    const/4 v0, 0x0

    :goto_294
    if-nez v0, :cond_2d5

    move-object/from16 v11, v18

    goto :goto_29f

    :catchall_299
    move-exception v0

    move-object v15, v12

    goto :goto_2d1

    :cond_29c
    move-object v15, v12

    move-object/from16 v11, v19

    :goto_29f
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2ce

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-static {v6}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2ce
    .catchall {:try_start_254 .. :try_end_2ce} :catchall_2d0

    :cond_2ce
    move-object v0, v14

    goto :goto_2d5

    :catchall_2d0
    move-exception v0

    :goto_2d1
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :cond_2d5
    :goto_2d5
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v6

    if-nez v6, :cond_2dd

    move-object v14, v0

    goto :goto_2e8

    :cond_2dd
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_2e8

    const-string v0, "getValue(key_of_get_default_lock_app_type) fail"

    invoke-static {v13, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e8
    :goto_2e8
    check-cast v14, Ljava/lang/Number;

    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_2f3

    move v0, v6

    goto :goto_2f4

    :cond_2f3
    const/4 v0, 0x0

    :goto_2f4
    if-eqz v0, :cond_2f7

    goto :goto_2f8

    :cond_2f7
    const/4 v5, 0x0

    :goto_2f8
    if-eqz v5, :cond_2ff

    invoke-interface {v5, v3}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateAllowDefaultLockApps(Ljava/util/List;)V

    goto :goto_2ff

    :cond_2fe
    move-object v15, v12

    :cond_2ff
    :goto_2ff
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v0

    if-eqz v0, :cond_308

    invoke-interface {v0, v2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateForbidLockApps(Ljava/util/List;)V

    :cond_308
    sget-boolean v0, Lcom/oplus/quickstep/applock/OplusLockManager;->IS_SUPPORT_SUPER_LOCK:Z

    if-eqz v0, :cond_315

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v0

    if-eqz v0, :cond_315

    invoke-interface {v0, v4}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateAllowSuperLockApps(Ljava/util/List;)V

    :cond_315
    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getAppLockModel()Lcom/oplus/quickstep/applock/IAppLockDataHandler;

    move-result-object v0

    if-eqz v0, :cond_320

    move/from16 v2, p2

    invoke-interface {v0, v2}, Lcom/oplus/quickstep/applock/IAppLockDataHandler;->updateNoDefaultLockAppLimit(I)V

    :cond_320
    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct/range {p0 .. p0}, Lcom/oplus/quickstep/applock/OplusLockManager;->getSp()Landroid/content/SharedPreferences;

    move-result-object v2

    move-object v3, v15

    invoke-virtual {v0, v2, v3, v1}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
