.class public final Lcom/android/common/util/LauncherModeUtil;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherModeUtil.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherModeUtil.kt\ncom/android/common/util/LauncherModeUtil\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,768:1\n1#2:769\n37#3,2:770\n*S KotlinDebug\n*F\n+ 1 LauncherModeUtil.kt\ncom/android/common/util/LauncherModeUtil\n*L\n519#1:770,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/common/util/LauncherModeUtil;

.field private static final KEY_NOTIFY_SIMPLE_MODE_ENABLED:Ljava/lang/String; = "launcherSimpleEnabled"

.field private static final KEY_NOTIFY_SIMPLE_MODE_RESTORE:Ljava/lang/String; = "launcherSimpleRestore"

.field private static final METHOD_NOTIFY_CHANGE_SIMPLE_MODE:Ljava/lang/String; = "notifySimpleMode"

.field private static final METHOD_OTA_NOTIFY_SIMPLE_MODE:Ljava/lang/String; = "otaNotifySimpleMode"

.field private static final METHOD_SWITCH_COMPLETE:Ljava/lang/String; = "loadFinishedLauncher"

.field private static final METHOD_SWITCH_SIMPLE_MODE:Ljava/lang/String; = "notifyLauncherMode"

.field private static final NOTIFY_EXIT_SIMPLE_MODE:I = 0x2

.field private static final NOTIFY_TO_SIMPLE_MODE:I = 0x1

.field private static final NOT_NOTIFY:I = 0x0

.field private static final SIMPLE_MODE_PROVIDER_URI:Ljava/lang/String; = "content://com.coloros.scenemode.provider"

.field private static final TAG:Ljava/lang/String; = "LauncherModeUtil"

.field private static mIsToNotifySceneMode:I

.field private static mSimpleModeChangedFromRestore:Z

.field private static final mutex:Lv7/a;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/LauncherModeUtil;

    invoke-direct {v0}, Lcom/android/common/util/LauncherModeUtil;-><init>()V

    sput-object v0, Lcom/android/common/util/LauncherModeUtil;->INSTANCE:Lcom/android/common/util/LauncherModeUtil;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lv7/f;->a(ZI)Lv7/a;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherModeUtil;->mutex:Lv7/a;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/LauncherModeUtil;->syncDataForLauncherMode$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    return-void
.end method

.method public static final synthetic access$getMutex$p()Lv7/a;
    .registers 1

    sget-object v0, Lcom/android/common/util/LauncherModeUtil;->mutex:Lv7/a;

    return-object v0
.end method

.method public static final synthetic access$notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/LauncherModeUtil;->notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic b(Landroid/content/Context;Z)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherModeUtil;->refreshLauncherMode$lambda$3(Landroid/content/Context;Z)V

    return-void
.end method

.method public static final beforeSceneModeChangeState(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "lastSaveMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "applyingMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v0, :cond_11

    const/4 p1, 0x1

    sput p1, Lcom/android/common/util/LauncherModeUtil;->mIsToNotifySceneMode:I

    :cond_11
    if-ne p0, v0, :cond_16

    const/4 p0, 0x2

    sput p0, Lcom/android/common/util/LauncherModeUtil;->mIsToNotifySceneMode:I

    :cond_16
    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/common/util/LauncherModeUtil;->notifyLauncherModeChanged$lambda$4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private static final changSystemFontAndDensity(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    invoke-virtual {p0, p1}, Lcom/android/common/util/FontManager;->changSystemFontAndDensity(Z)V

    return-void
.end method

.method private static final checkUpdateClassName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_20

    goto :goto_d

    :cond_20
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    return v0

    :cond_27
    const/4 p0, 0x1

    return p0
.end method

.method public static final getIfNeedSwitchModeFromSceneMode(Landroid/content/Context;Landroid/net/Uri;)Landroid/os/Bundle;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "notifyLauncherMode"

    invoke-virtual {p0, p1, v1, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "getIfNeedSwitchModeFromSceneMode:"

    const-string v1, "LauncherModeUtil"

    invoke-static {p1, p0, v1}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_1a
    return-object v0
.end method

.method public static final getNeedDeleteIndex(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher/download/DownloadAppsManager;JLjava/lang/String;III)Ljava/lang/Long;
    .registers 26
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p7

    move/from16 v5, p8

    const-string v6, "com.android.stk"

    const-string v7, "LauncherModeUtil"

    const-string v8, "context"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "mode"

    invoke-static {v1, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "launcherApps"

    invoke-static {v2, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "downloadAppsManager"

    invoke-static {v3, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "intentDes"

    move-object/from16 v9, p6

    invoke-static {v9, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_2c
    invoke-static/range {p6 .. p6}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->parseIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_41

    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    if-eqz v8, :cond_42

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_203

    goto :goto_44

    :cond_41
    const/4 v8, 0x0

    :cond_42
    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_44
    const-string v11, "format(format, *args)"

    if-eqz v9, :cond_1e6

    if-nez v10, :cond_4c

    goto/16 :goto_1e6

    :cond_4c
    move-wide/from16 v12, p4

    long-to-int v14, v12

    :try_start_4f
    invoke-static {v0, v14, v1, v9, v10}, Lcom/android/common/util/LauncherModeUtil;->updateSTKClassName(Landroid/content/Context;ILcom/android/launcher/mode/LauncherMode;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete empty packageName, item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_71
    sget-object v1, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/pm/UserCache;

    int-to-long v14, v4

    invoke-virtual {v1, v14, v15, v5}, Lcom/android/launcher3/pm/UserCache;->getUserHandler(JI)Landroid/os/UserHandle;

    move-result-object v1

    if-nez v1, :cond_a5

    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v0, "invalid user info %d, %d"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_a5
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11
    :try_end_a9
    .catchall {:try_start_4f .. :try_end_a9} :catchall_203

    const-string v14, "com.android.stk.mtk.StkLauncherActivityII"

    const-string v15, "com.android.stk.mtk.StkLauncherActivityI"

    const-string v12, "com.android.stk.OplusStkLauncherActivity2"

    const-string v13, "com.android.stk.OplusStkLauncherActivity1"

    if-eqz v11, :cond_10f

    :try_start_b3
    invoke-virtual {v2, v6, v1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v6

    sget-object v11, Lcom/android/common/util/StkUtils;->STK_QUALCOM_COMPONTNAME_CLASSNAME1:Ljava/lang/String;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c1

    move-object v10, v13

    goto :goto_de

    :cond_c1
    sget-object v11, Lcom/android/common/util/StkUtils;->STK_QUALCOM_COMPONTNAME_CLASSNAME2:Ljava/lang/String;

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_cb

    move-object v10, v12

    goto :goto_de

    :cond_cb
    const-string v11, "com.android.stk.StkLauncherActivityI"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d5

    move-object v10, v15

    goto :goto_de

    :cond_d5
    const-string v11, "com.android.stk.StkLauncherActivityII"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_de

    move-object v10, v14

    :cond_de
    :goto_de
    invoke-static {v6, v9, v10}, Lcom/android/common/util/LauncherModeUtil;->checkUpdateClassName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10f

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_216

    goto :goto_10f

    :sswitch_ec
    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f3

    goto :goto_10f

    :cond_f3
    move-object v10, v13

    goto :goto_10f

    :sswitch_f5
    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_fc

    goto :goto_10f

    :cond_fc
    move-object v10, v14

    goto :goto_10f

    :sswitch_fe
    invoke-virtual {v10, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_105

    goto :goto_10f

    :cond_105
    move-object v10, v15

    goto :goto_10f

    :sswitch_107
    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10e

    goto :goto_10f

    :cond_10e
    move-object v10, v12

    :cond_10f
    :goto_10f
    if-eqz v8, :cond_17c

    invoke-virtual {v2, v9, v1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_141

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_11b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_141

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v6}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11b

    invoke-static {v10, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11b

    const/4 v2, 0x1

    goto :goto_142

    :cond_141
    const/4 v2, 0x0

    :goto_142
    if-nez v2, :cond_17c

    invoke-virtual {v3, v9}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v2

    if-nez v2, :cond_17c

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportFolderContentRecommend()Z

    move-result v2

    if-eqz v2, :cond_158

    const-string v2, "MarketRecommendAppClassName"

    invoke-static {v10, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17c

    :cond_158
    and-int/lit8 v0, p9, 0x2

    if-eqz v0, :cond_15e

    const/4 v0, 0x1

    goto :goto_15f

    :cond_15e
    const/4 v0, 0x0

    :goto_15f
    if-eqz v0, :cond_163

    const/4 v0, 0x0

    return-object v0

    :cond_163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delete invalid component, can not found a launcher activity! item = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_17c
    invoke-virtual {v3, v9}, Lcom/android/launcher/download/DownloadAppsManager;->getDownloadInfoByPkgName(Ljava/lang/String;)Lcom/android/launcher/download/OplusPackageInstallInfo;

    move-result-object v2

    and-int/lit8 v3, p9, 0x2

    if-eqz v3, :cond_186

    const/4 v3, 0x1

    goto :goto_187

    :cond_186
    const/4 v3, 0x0

    :goto_187
    if-nez v2, :cond_1ca

    if-nez v3, :cond_1ca

    invoke-static {v10}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1ca

    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3, v0, v9, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_1ca

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Delete not in download list and not exist item. packageName = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", userId = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", serialNumber = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1ca
    invoke-static {v10}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e3

    if-nez v2, :cond_1da

    sget-object v1, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v1, v0, v9}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e3

    :cond_1da
    const/4 v0, 0x1

    invoke-static {v9, v0}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->removeMarketInfoByPkgName(Ljava/lang/String;Z)V

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    :cond_1e3
    sget-object v0, Lh4/z;->a:Lh4/z;

    goto :goto_208

    :cond_1e6
    :goto_1e6
    sget-object v0, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const-string v0, "invalid pkg & cls info %d, %d"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v9, v2, v3

    const/4 v3, 0x1

    aput-object v10, v2, v3

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_201
    .catchall {:try_start_b3 .. :try_end_201} :catchall_203

    const/4 v0, 0x0

    return-object v0

    :catchall_203
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_208
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_20f

    goto :goto_214

    :cond_20f
    const-string v1, "getNeedDeleteIndex e:"

    invoke-static {v1, v0, v7}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_214
    const/4 v0, 0x0

    return-object v0

    :sswitch_data_216
    .sparse-switch
        -0x7ec86ba1 -> :sswitch_107
        -0x6cbe126f -> :sswitch_fe
        -0x6cbe126e -> :sswitch_f5
        -0x3de56ed6 -> :sswitch_ec
    .end sparse-switch
.end method

.method public static final isInSceneSimpleMode(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->hashCode()I

    move-result v0

    const-string/jumbo v1, "simple_mode_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1d

    move v2, v0

    :cond_1d
    return v2
.end method

.method public static final isNeedSwitchDataWhenLayoutNotSame([I[I)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "currentLayoutSetting"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lastModeLayoutSetting"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    const/4 v3, 0x1

    if-ne v1, v2, :cond_18

    aget p0, p0, v3

    aget p1, p1, v3

    if-eq p0, p1, :cond_19

    :cond_18
    move v0, v3

    :cond_19
    return v0
.end method

.method private static final notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "content://com.coloros.scenemode.provider"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "LauncherModeUtil"

    const-string/jumbo v1, "notify simple mode loadFinishedLauncher"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/android/common/debug/c;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/common/debug/c;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1a
    return-void
.end method

.method private static final notifyLauncherModeChanged$lambda$4(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 5

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    return-void
.end method

.method public static final notifySceneModeToChangeState(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_15

    sget v0, Lcom/android/common/util/LauncherModeUtil;->mIsToNotifySceneMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    invoke-static {p0, v1, v2}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;ZZ)V

    goto :goto_12

    :cond_c
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    invoke-static {p0, v2, v2}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeState(Landroid/content/Context;ZZ)V

    :cond_12
    :goto_12
    sput v2, Lcom/android/common/util/LauncherModeUtil;->mIsToNotifySceneMode:I

    goto :goto_1c

    :cond_15
    const-string p0, "LauncherModeUtil"

    const-string v0, "LauncherModeFragment notifySceneModeToChangeState getActivity = null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1c
    return-void
.end method

.method public static final notifySceneModeToChangeState(Landroid/content/Context;ZZ)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "LauncherModeFragment call SceneMode error:"

    const-string v1, "content://com.coloros.scenemode.provider"

    const-string v2, "context"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifySceneModeToChangeState, isEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isRestore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherModeUtil"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2d

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/common/util/LauncherModeUtil;->mSimpleModeChangedFromRestore:Z

    :cond_2d
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launcherSimpleEnabled"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v4, "launcherSimpleRestore"

    invoke-virtual {v2, v4, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_3c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_48

    const-string/jumbo v4, "notifySimpleMode"

    invoke-static {p0, v1, v4, v2}, Lcom/android/common/util/LauncherModeUtil;->notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_48
    if-nez p2, :cond_50

    const-string p2, "loadFinishedLauncher"

    const/4 v2, 0x0

    invoke-static {p0, v1, p2, v2}, Lcom/android/common/util/LauncherModeUtil;->notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_50
    const-string p2, "LauncherModeFragment notifyLauncherModeChanged done!"

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_3c .. :try_end_55} :catch_a5
    .catch Ljava/lang/SecurityException; {:try_start_3c .. :try_end_55} :catch_91
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_3c .. :try_end_55} :catch_7d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3c .. :try_end_55} :catch_56

    goto :goto_ba

    :catch_56
    move-exception p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p2, :cond_ba

    sget-boolean p2, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz p2, :cond_ba

    sget-object p2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p2}, Lcom/android/common/util/AppFeatureUtils;->isLightWeightOS()Z

    move-result p2

    if-eqz p2, :cond_ba

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherModeUtil;->changSystemFontAndDensity(Landroid/content/Context;Z)V

    goto :goto_ba

    :catch_7d
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :catch_91
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ba

    :catch_a5
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LauncherModeFragment getContentResolver is null:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_ba
    :goto_ba
    return-void
.end method

.method private static final notifySceneModeToChangeStateForOta(Landroid/content/Context;Z)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "content://com.coloros.scenemode.provider"

    const-string v1, "call SceneMode error:"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifySceneModeToChangeStateForOta isEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LauncherModeUtil"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "launcherSimpleEnabled"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :try_start_25
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_83

    const-string/jumbo p1, "otaNotifySimpleMode"

    invoke-static {p0, v0, p1, v2}, Lcom/android/common/util/LauncherModeUtil;->notifyLauncherModeChanged(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_31
    .catch Ljava/lang/NullPointerException; {:try_start_25 .. :try_end_31} :catch_6e
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_31} :catch_5a
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_25 .. :try_end_31} :catch_46
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_31} :catch_32

    goto :goto_83

    :catch_32
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :catch_46
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :catch_5a
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_83

    :catch_6e
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getContentResolver is null:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_83
    :goto_83
    return-void
.end method

.method public static final refreshLauncherMode(Landroid/content/Context;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/LauncherModeUtil;->isInSceneSimpleMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    sget-object v4, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v3, v4, :cond_1b

    move v3, v1

    goto :goto_1c

    :cond_1b
    move v3, v2

    :goto_1c
    if-nez v0, :cond_2b

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v4

    sget-object v5, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq v4, v5, :cond_2b

    goto :goto_2c

    :cond_2b
    move v1, v2

    :goto_2c
    const-string/jumbo v4, "refreshLauncherMode result = "

    const-string v5, " ,isBothInSimpleMode = "

    const-string v6, " ,isBothNotInSimpleMode = "

    invoke-static {v4, v0, v5, v3, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "LauncherModeUtil"

    invoke-static {v4, v1, v5}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-nez v3, :cond_4a

    if-nez v1, :cond_4a

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/common/util/i0;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/common/util/i0;-><init>(Landroid/content/Context;ZI)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_4a
    return-void
.end method

.method private static final refreshLauncherMode$lambda$3(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isOtaVersionUpdate()Z

    move-result v0

    if-eqz v0, :cond_11

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/common/util/LauncherModeUtil;->notifySceneModeToChangeStateForOta(Landroid/content/Context;Z)V

    goto :goto_21

    :cond_11
    const-string v0, "content://com.coloros.scenemode.provider"

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Landroid/net/Uri;ZZ)Z

    :cond_21
    :goto_21
    return-void
.end method

.method public static final switchLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcherMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "postExecute"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "curLauncherMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",launcherMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LauncherModeUtil"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne p1, v0, :cond_3e

    const-string p0, "Same Mode, Don\'t need Change"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_3e
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher/mode/LauncherModeManager;->setChangingMode(Z)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    instance-of v1, p0, Lcom/android/launcher/Launcher;

    const/4 v3, 0x0

    if-eqz v1, :cond_65

    move-object v1, p0

    check-cast v1, Lcom/android/launcher/Launcher;

    goto :goto_66

    :cond_65
    move-object v1, v3

    :goto_66
    const/4 v4, 0x0

    if-eqz v1, :cond_73

    sget-object v5, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v6, Lcom/android/common/util/j0;

    invoke-direct {v6, v1, v4}, Lcom/android/common/util/j0;-><init>(Lcom/android/launcher/Launcher;I)V

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_73
    sget-object v1, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, v1, :cond_85

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Standard:Lcom/android/launcher/mode/LauncherMode;

    if-ne p1, v0, :cond_85

    if-eqz p0, :cond_85

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0, v2}, Lcom/android/launcher/guide/DrawerGuideManager;->setMSwitchDrawer(Z)V

    invoke-virtual {v0, p0, v2}, Lcom/android/launcher/guide/DrawerGuideManager;->setUsedDrawerMode(Landroid/content/Context;Z)V

    :cond_85
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0, p1, v4}, Lcom/android/launcher/mode/LauncherModeManager;->setCurLauncherMode(Lcom/android/launcher/mode/LauncherMode;Z)V

    sget-object v5, Lm7/l1;->a:Lm7/l1;

    sget-object v6, Lm7/y0;->b:Lm7/f0;

    new-instance v8, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;

    invoke-direct {v8, p0, p1, p2, v3}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$3;-><init>(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;Ll4/d;)V

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v7, 0x0

    invoke-static/range {v5 .. v10}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    return-void
.end method

.method public static final switchLauncherMode(Landroid/content/Context;Landroid/net/Uri;ZZ)Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_80

    new-instance p1, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$4$postExecute$1;

    invoke-direct {p1, p0}, Lcom/android/common/util/LauncherModeUtil$switchLauncherMode$4$postExecute$1;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "switchLauncherMode result "

    const-string v2, ", curLauncherMode = "

    invoke-static {v1, p2, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mSimpleModeChangedFromRestore: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/common/util/LauncherModeUtil;->mSimpleModeChangedFromRestore:Z

    const-string v3, "LauncherModeUtil"

    invoke-static {v1, v2, v3}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    const/4 v1, 0x1

    if-eqz p2, :cond_54

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p2

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-eq p2, v2, :cond_53

    sget-boolean p2, Lcom/android/common/util/LauncherModeUtil;->mSimpleModeChangedFromRestore:Z

    if-eqz p2, :cond_41

    goto :goto_53

    :cond_41
    if-eqz p3, :cond_4a

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/LauncherSimpleModeHelper;->setSimpleDelayFlagAndHideWorkSpaceHotSeat()V

    :cond_4a
    invoke-static {p0, v2, p1}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    sget-object p0, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardContainer$Companion;->addFirstCardPreviewAfterEnterSimpleMode(I)V

    goto :goto_7f

    :cond_53
    :goto_53
    return v0

    :cond_54
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object p2

    sget-object v2, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne p2, v2, :cond_80

    sget-boolean p2, Lcom/android/common/util/LauncherModeUtil;->mSimpleModeChangedFromRestore:Z

    if-eqz p2, :cond_65

    goto :goto_80

    :cond_65
    if-eqz p3, :cond_6e

    invoke-static {}, Lcom/android/launcher/LauncherSimpleModeHelper;->getInstance()Lcom/android/launcher/LauncherSimpleModeHelper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher/LauncherSimpleModeHelper;->setSimpleDelayFlagAndHideWorkSpaceHotSeat()V

    :cond_6e
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcom/android/launcher/mode/LauncherModeManager;->getLastModeBeforeChangeToSimpleMode(Z)Lcom/android/launcher/mode/LauncherMode;

    move-result-object p2

    const-string/jumbo p3, "savedState"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p1}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    :goto_7f
    return v1

    :cond_80
    :goto_80
    return v0
.end method

.method public static final switchLauncherModeAndNotify(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "oldMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "newMode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "postExecute"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p2, p3}, Lcom/android/common/util/LauncherModeUtil;->switchLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lkotlin/jvm/functions/Function1;)V

    invoke-static {p1, p2}, Lcom/android/common/util/LauncherModeUtil;->beforeSceneModeChangeState(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/mode/LauncherMode;)V

    return-void
.end method

.method public static final syncDataForLauncherMode(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncDataForLauncherMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherModeUtil"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Simple:Lcom/android/launcher/mode/LauncherMode;

    if-ne v0, p1, :cond_3c

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->stopLoader()Z

    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->resetLoadedFlag()V

    :cond_3c
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Lcom/android/common/util/k0;

    invoke-direct {v2, v0, p0, p1, p2}, Lcom/android/common/util/k0;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V

    const-wide/16 p0, 0x1e

    invoke-virtual {v1, v2, p0, p1}, Lcom/android/launcher3/util/LooperExecutor;->executeBlockWait(Ljava/lang/Runnable;J)Z

    iget-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static final syncDataForLauncherMode$lambda$5(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)V
    .registers 5

    const-string v0, "$needDeleteIndex"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p2, p3}, Lcom/android/common/util/LauncherModeUtil;->syncDataForLauncherModeInner(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method private static final syncDataForLauncherModeInner(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Z)Ljava/util/List;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    const-string/jumbo v0, "syncDataForLauncherMode: "

    const-string v1, " curLauncherMode: "

    invoke-static {v0, v12, v1}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v13, "LauncherModeUtil"

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v15

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    const/4 v10, 0x1

    if-ne v12, v0, :cond_5e

    sget-object v0, Lcom/android/launcher/mode/LauncherMode;->Drawer:Lcom/android/launcher/mode/LauncherMode;

    if-ne v12, v0, :cond_55

    if-nez p2, :cond_55

    sget-object v0, Lcom/android/launcher/guide/DrawerGuideManager;->INSTANCE:Lcom/android/launcher/guide/DrawerGuideManager;

    invoke-virtual {v0, v11}, Lcom/android/launcher/guide/DrawerGuideManager;->isUsedDrawerMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_55

    const-string/jumbo v1, "syncDataForLauncherModeInner: first to Drawer"

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v11, v10}, Lcom/android/launcher/guide/DrawerGuideManager;->setUsedDrawerMode(Landroid/content/Context;Z)V

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "init_drawer_from_standard"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_55
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "load_default_favorites"

    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherSettings$Settings;->call(Landroid/content/ContentResolver;Ljava/lang/String;)Landroid/os/Bundle;

    :cond_5e
    const/4 v9, 0x0

    :try_start_5f
    const-string v3, "itemType=0"

    const-string/jumbo v5, "screen, cellY, cellX"

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "_id"

    const-string v4, "intent"

    const-string/jumbo v6, "profileId"

    const-string/jumbo v7, "user_id"

    const-string/jumbo v8, "restored"

    filled-new-array {v2, v4, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_5f .. :try_end_82} :catch_1c5
    .catchall {:try_start_5f .. :try_end_82} :catchall_1c1

    if-eqz v8, :cond_1bb

    :try_start_84
    invoke-static/range {p0 .. p0}, Lcom/android/launcher/download/DownloadAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/download/DownloadAppsManager;

    move-result-object v7

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v4, 0x4

    :goto_8b
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_8f} :catch_1b5
    .catchall {:try_start_84 .. :try_end_8f} :catchall_1af

    const/4 v1, 0x0

    if-eqz v0, :cond_11c

    :try_start_92
    const-string v0, "launcherApps"

    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "downloadAppsManager"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    invoke-interface {v8, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c.getString(intentIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v8, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    invoke-interface {v8, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-interface {v8, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v20
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_92 .. :try_end_b5} :catch_e5
    .catchall {:try_start_92 .. :try_end_b5} :catchall_1af

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v15

    move/from16 v21, v4

    move-object v4, v7

    move/from16 v22, v5

    move/from16 v23, v6

    move-wide/from16 v5, v16

    move-object/from16 v16, v7

    move-object v7, v0

    move-object/from16 v17, v8

    move/from16 v8, v18

    move-object v11, v9

    move/from16 v9, v19

    move/from16 v18, v10

    move/from16 v10, v20

    :try_start_d1
    invoke-static/range {v1 .. v10}, Lcom/android/common/util/LauncherModeUtil;->getNeedDeleteIndex(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/OplusLauncherAppsCompat;Lcom/android/launcher/download/DownloadAppsManager;JLjava/lang/String;III)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_10b

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_e2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_e2} :catch_e3
    .catchall {:try_start_d1 .. :try_end_e2} :catchall_1ab

    goto :goto_10b

    :catch_e3
    move-exception v0

    goto :goto_f3

    :catch_e5
    move-exception v0

    move/from16 v21, v4

    move/from16 v22, v5

    move/from16 v23, v6

    move-object/from16 v16, v7

    move-object/from16 v17, v8

    move-object v11, v9

    move/from16 v18, v10

    :goto_f3
    :try_start_f3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "There is an error message; e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10b
    :goto_10b
    move-object v9, v11

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move/from16 v10, v18

    move/from16 v4, v21

    move/from16 v5, v22

    move/from16 v6, v23

    move-object/from16 v11, p0

    goto/16 :goto_8b

    :cond_11c
    move-object/from16 v17, v8

    move-object v11, v9

    invoke-interface {v14}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1bd

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncDataForLauncherModeInner delete "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " needDeleteIndex:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v1, [Ljava/lang/Long;

    invoke-interface {v14, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "toString(this)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher/db/DbTracker;->getDbDeleteReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p0 .. p1}, Lcom/android/launcher/mode/LauncherModeManager;->getItemContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_16b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_184

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16b

    :cond_184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id IN ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1, v11}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1aa
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_1aa} :catch_1ad
    .catchall {:try_start_f3 .. :try_end_1aa} :catchall_1ab

    goto :goto_1bd

    :catchall_1ab
    move-exception v0

    goto :goto_1b2

    :catch_1ad
    move-exception v0

    goto :goto_1b8

    :catchall_1af
    move-exception v0

    move-object/from16 v17, v8

    :goto_1b2
    move-object/from16 v9, v17

    goto :goto_1e6

    :catch_1b5
    move-exception v0

    move-object/from16 v17, v8

    :goto_1b8
    move-object/from16 v9, v17

    goto :goto_1c8

    :cond_1bb
    move-object/from16 v17, v8

    :cond_1bd
    :goto_1bd
    invoke-static/range {v17 .. v17}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1e4

    :catchall_1c1
    move-exception v0

    move-object v11, v9

    move-object v9, v11

    goto :goto_1e6

    :catch_1c5
    move-exception v0

    move-object v11, v9

    move-object v9, v11

    :goto_1c8
    :try_start_1c8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "syncDataForLauncherMode failed to SyncDownloadState e = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1e1
    .catchall {:try_start_1c8 .. :try_end_1e1} :catchall_1e5

    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_1e4
    return-object v14

    :catchall_1e5
    move-exception v0

    :goto_1e6
    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v0
.end method

.method public static final updateInstallStateChangedPackage(Lcom/android/launcher3/LauncherModel;Lcom/android/launcher/download/OplusPackageInstallInfo;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcherMode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;

    invoke-direct {v0, p1}, Lcom/android/launcher3/model/OplusPackageInstallStateChangedTask;-><init>(Lcom/android/launcher/download/OplusPackageInstallInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherModel;->enqueueModelUpdateTask(Lcom/android/launcher3/LauncherModel$ModelUpdateTask;)V

    return-void
.end method

.method private static final updateSTKClassName(Landroid/content/Context;ILcom/android/launcher/mode/LauncherMode;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f5

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_f5

    :cond_e
    const-string v0, "com.android.stk"

    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    invoke-static {p0}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object v0

    const-string v1, "getInstance(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v0

    const-string v1, "launcherAppsCompat.getAc…ackageName, context.user)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const-string v2, "LauncherModeUtil"

    if-eqz v1, :cond_3c

    const-string/jumbo p0, "updateSTKClassName launcherActivityInfos is null return"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3c
    invoke-static {v0, p3, p4}, Lcom/android/common/util/LauncherModeUtil;->checkUpdateClassName(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f5

    sget-object v0, Lcom/android/common/util/StkUtils;->STK_QUALCOM_COMPONTNAME_CLASSNAME1:Ljava/lang/String;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "com.android.stk.OplusStkLauncherActivity1"

    const/4 v3, 0x1

    if-eqz v0, :cond_4f

    move v0, v3

    goto :goto_53

    :cond_4f
    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_53
    const-string v4, "com.android.stk.mtk.StkLauncherActivityII"

    const-string v5, "com.android.stk.OplusStkLauncherActivity2"

    const-string v6, "com.android.stk.mtk.StkLauncherActivityI"

    const/4 v7, 0x0

    if-eqz v0, :cond_5e

    move-object v1, v6

    goto :goto_93

    :cond_5e
    sget-object v0, Lcom/android/common/util/StkUtils;->STK_QUALCOM_COMPONTNAME_CLASSNAME2:Ljava/lang/String;

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_68

    move v0, v3

    goto :goto_6c

    :cond_68
    invoke-static {p4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_6c
    if-eqz v0, :cond_70

    move-object v1, v4

    goto :goto_93

    :cond_70
    const-string v0, "com.android.stk.StkLauncherActivityI"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    move v0, v3

    goto :goto_7e

    :cond_7a
    invoke-static {p4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    :goto_7e
    if-eqz v0, :cond_81

    goto :goto_93

    :cond_81
    const-string v0, "com.android.stk.StkLauncherActivityII"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    goto :goto_8e

    :cond_8a
    invoke-static {p4, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    :goto_8e
    if-eqz v3, :cond_92

    move-object v1, v5

    goto :goto_93

    :cond_92
    move-object v1, v7

    :goto_93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateSTKClassName -- className: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, ", updateClassName = "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateSTKClassName update "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " item:"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " intentDescription"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Lcom/android/launcher/db/DbTracker;->getDbUpdateReason(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Lcom/android/launcher/db/DbTracker;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    invoke-static {p3, v1}, Lcom/android/launcher/backup/util/BackupRestoreUtils;->makeIntentDescription(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "intent"

    invoke-virtual {p4, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-static {p0, p2, p1}, Lcom/android/launcher3/LauncherSettings$Favorites;->getContentUri(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p3, p0, p4, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_f5
    :goto_f5
    return-void
.end method


# virtual methods
.method public final getMSimpleModeChangedFromRestore()Z
    .registers 1

    sget-boolean p0, Lcom/android/common/util/LauncherModeUtil;->mSimpleModeChangedFromRestore:Z

    return p0
.end method

.method public final setMSimpleModeChangedFromRestore(Z)V
    .registers 2

    sput-boolean p1, Lcom/android/common/util/LauncherModeUtil;->mSimpleModeChangedFromRestore:Z

    return-void
.end method
