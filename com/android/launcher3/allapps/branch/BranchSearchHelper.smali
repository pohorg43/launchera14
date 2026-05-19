.class public final Lcom/android/launcher3/allapps/branch/BranchSearchHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY:Ljava/lang/String; = "global_search_setting_entrance_preference"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_KEY_VODAFONE:Ljava/lang/String; = "global_search_setting_entrance_preference_vodafone"

.field public static final BRANCH_SEARCH_SETTINGS_PREFERENCE_ORDER:I = 0x23

.field private static final DENIED_TIMES_1:I = 0x1

.field private static final DENIED_TIMES_KEY:Ljava/lang/String; = "denied_times"

.field private static final EMPTY_SEARCH_TIMES_10:I = 0xa

.field private static final EMPTY_SEARCH_TIMES_20:I = 0x14

.field private static final EMPTY_SEARCH_TIMES_30:I = 0x1e

.field private static final GLOBAL_SEARCH_CLASS_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

.field private static final GLOBAL_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.heytap.quicksearchbox"

.field private static final GLOBAL_SEARCH_SHOW_DIALOG_METHOD:Ljava/lang/String; = "shouldShowDialog"

.field private static final GLOBAL_SEARCH_URI:Ljava/lang/String; = "content://com.heytap.quicksearchbox.GlobalSearchProvider"

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

.field private static final KEY_EMPTY_SEARCH_TIMES:Ljava/lang/String; = "empty_search_times"

.field public static final KEY_RUS_OPLUS_BRANCH_NAVIGATOR_ENABLED:Ljava/lang/String; = "oplus_branch_navigator_enabled_config"

.field private static final LAST_DENIED_TIME_KEY:Ljava/lang/String; = "last_denied_time"

.field private static final META_DATA_SUPPORT_BRANCH_SEARCH:Ljava/lang/String; = "launcher_draw_entrance_support"

.field public static final PREF_KEY_SHOW_BRANCH_GUIDE:Ljava/lang/String; = "show_branch_search_guide"

.field private static final RE_START_BRANCH_INTERVAL_TIME:I = 0xa4cb800

.field public static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_CLOSE:I = 0x0

.field private static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_DEFAULT:I = -0x1

.field public static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_OPEN:I = 0x1

.field private static final SETTINGS_LAUNCHER_DRAW_ENTRANCE_SWITCH:Ljava/lang/String; = "launcher_draw_entrance_switch"

.field private static final START_BRANCH_SEARCH_ACTION:Ljava/lang/String; = "com.oppo.quicksearchbox.draw.main"

.field public static final TAG:Ljava/lang/String; = "BranchSearchHelper"

.field private static final TAG_BRANCH_SWITCH:Ljava/lang/String; = "oplus_branch_switch"

.field private static final USER_NOTICE_DENIED:I = 0x0

.field private static final USER_NOTICE_PASS_KEY:Ljava/lang/String; = "global_search_user_notice_pass_key"

.field private static mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final mOplusMarketPackage:Ljava/lang/String;

.field private static final mPlayStorePackage:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const v0, 0x7f120480

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mOplusMarketPackage:Ljava/lang/String;

    const v0, 0x7f12047c

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mPlayStorePackage:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->handleBranchSearchPermissionDenied$lambda$5(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->showEmptySearchMarketTips$lambda$7(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    return-void
.end method

.method private static final branchSearchUserNoticeDenied(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "global_search_user_notice_pass_key"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1
.end method

.method private final getBranchRUSXml(Landroid/content/Context;)Ljava/lang/String;
    .registers 12

    const-string p0, "BranchSearchHelper"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "version"

    const-string/jumbo v1, "xml"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v8, ""

    const/4 v9, 0x0

    :try_start_13
    sget-object v3, Lcom/android/common/rus/RomUpdateUtil;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_19} :catch_65
    .catchall {:try_start_13 .. :try_end_19} :catchall_62

    if-eqz p1, :cond_24

    :try_start_1b
    const-string v5, "filtername=\'oplus_branch_navigator_enabled_config\'"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentProviderClient;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    :cond_24
    if-eqz v9, :cond_5b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "cursor.getString(xmlIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_3d} :catch_59
    .catchall {:try_start_1b .. :try_end_3d} :catchall_7e

    :try_start_3d
    const-string v2, "AllApps"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBranchRUS versionIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_54} :catch_56
    .catchall {:try_start_3d .. :try_end_54} :catchall_7e

    move-object v8, v1

    goto :goto_5b

    :catch_56
    move-exception v0

    move-object v8, v1

    goto :goto_67

    :catch_59
    move-exception v0

    goto :goto_67

    :cond_5b
    :goto_5b
    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_7d

    :catchall_62
    move-exception p0

    move-object p1, v9

    goto :goto_7f

    :catch_65
    move-exception v0

    move-object p1, v9

    :goto_67
    :try_start_67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBranchRUS, Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7c
    .catchall {:try_start_67 .. :try_end_7c} :catchall_7e

    goto :goto_5b

    :goto_7d
    return-object v8

    :catchall_7e
    move-exception p0

    :goto_7f
    invoke-static {v9}, Lcom/android/launcher3/util/IOUtils;->closeSilently(Ljava/io/Closeable;)V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0
.end method

.method public static final getBranchSearchValue(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sExportGlobalSearchMateData:Z

    if-eqz v0, :cond_f

    const/4 v0, -0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x1

    :goto_10
    const-string v1, "launcher_draw_entrance_switch"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getEmptySearchMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mOplusMarketPackage:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_18
    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mPlayStorePackage:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0

    :cond_29
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final getEmptySearchMarketString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "packageName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mOplusMarketPackage:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, v1, v2}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_1d

    const p1, 0x7f120583

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1d
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mPlayStorePackage:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lk7/m;->l(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result p1

    if-eqz p1, :cond_2d

    const p1, 0x7f120584

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2d
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getRusString(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const/4 p0, 0x1

    if-eqz p1, :cond_c

    invoke-static {p1}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 v0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    move v0, p0

    :goto_d
    if-nez v0, :cond_5f

    :try_start_f
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p1

    :goto_26
    if-eq p1, p0, :cond_5f

    const/4 v1, 0x2

    if-ne p1, v1, :cond_43

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "oplus_branch_switch"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_43

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "parser.nextText()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_43
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p1
    :try_end_47
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_f .. :try_end_47} :catch_48

    goto :goto_26

    :catch_48
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed parsing "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchSearchHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    const-string p0, ""

    return-object p0
.end method

.method public static final handleBranchSearchPermissionDenied(Landroid/content/Context;)V
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-nez v0, :cond_17

    return-void

    :cond_17
    sget-object v1, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_20

    return-void

    :cond_20
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "denied_times"

    invoke-interface {p0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deniedTimes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AllApps"

    const-string v5, "BranchSearchHelper"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-interface {v3, v2, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    if-ne v1, v4, :cond_63

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "last_denied_time"

    invoke-interface {p0, v3, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_63
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p0

    if-nez p0, :cond_6a

    return-void

    :cond_6a
    instance-of v0, p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_78

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/recyclerview/widget/a;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_78
    return-void
.end method

.method private static final handleBranchSearchPermissionDenied$lambda$5(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 2

    const-string v0, "$allAppsView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/OplusSearchUiManager;->showKeyboard()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.search.LauncherAppsSearchContainerLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->resetQueryHint()V

    :cond_25
    return-void
.end method

.method public static final needOpenWhenNoticeDenied(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_denied_time"

    const-wide/16 v1, 0x0

    invoke-interface {p0, v0, v1, v2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    const-string v2, "denied_times"

    const/4 v3, 0x0

    invoke-interface {p0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const/4 v2, 0x1

    if-nez p0, :cond_20

    return v2

    :cond_20
    if-ne p0, v2, :cond_2b

    sub-long/2addr v4, v0

    const-wide/32 v0, 0xa4cb800

    cmp-long p0, v4, v0

    if-lez p0, :cond_2b

    return v2

    :cond_2b
    return v3
.end method

.method public static final needShowBranchEmptySearchTips(Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_17

    const-string p0, "AllApps"

    const-string v0, "BranchSearchHelper"

    const-string/jumbo v2, "not support branch search,return"

    invoke-static {p0, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_17
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchSearchValue(Landroid/content/Context;)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1f

    return v1

    :cond_1f
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchUserNoticeDenied(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_26

    return v1

    :cond_26
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "empty_search_times"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0x1e

    if-le v3, v4, :cond_35

    return v1

    :cond_35
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    add-int/2addr v3, v2

    invoke-interface {p0, v0, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/16 p0, 0xa

    if-eq v3, p0, :cond_4b

    const/16 p0, 0x14

    if-eq v3, p0, :cond_4b

    if-ne v3, v4, :cond_4c

    :cond_4b
    move v1, v2

    :cond_4c
    return v1
.end method

.method public static final needShowBranchSearchGuide(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needStartBranchSearch(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const/4 v0, 0x1

    const-string/jumbo v1, "show_branch_search_guide"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final needStartBranchSearch(Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    const-string v1, "BranchSearchHelper"

    const-string v2, "AllApps"

    const/4 v3, 0x0

    if-nez v0, :cond_17

    const-string/jumbo p0, "not support branch search,return"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_17
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchSearchValue(Landroid/content/Context;)I

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1f

    return v3

    :cond_1f
    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->branchSearchUserNoticeDenied(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->needOpenWhenNoticeDenied(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2c

    return v3

    :cond_2c
    const-string/jumbo p0, "need start branch search"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static final setBranchSearchValue(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_draw_entrance_switch"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static final showEmptySearchMarketTips()V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    if-nez v0, :cond_1b

    return-void

    :cond_1b
    instance-of v1, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v1, :cond_34

    move-object v1, v0

    check-cast v1, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    if-eqz v1, :cond_34

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/appcompat/widget/g;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_34
    return-void
.end method

.method private static final showEmptySearchMarketTips$lambda$7(Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;)V
    .registers 2

    const-string v0, "$allAppsView"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LauncherTaskbarAllAppsContainerView;->getColorAppsSearchContainerLayout()Lcom/android/launcher3/allapps/OplusSearchUiManager;

    move-result-object p0

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.launcher3.allapps.search.LauncherAppsSearchContainerLayout"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/search/LauncherAppsSearchContainerLayout;->showBranchSearchMarketTips()V

    return-void
.end method

.method public static final startBranchSearch(Landroid/content/Context;Lcom/android/launcher3/Launcher;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const v1, 0x7f120481

    invoke-static {v1}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oppo.quicksearchbox.draw.main"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const p0, 0x7f01000c

    const v0, 0x7f0100b6

    invoke-virtual {p1, p0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_2f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_23 .. :try_end_2f} :catch_30

    goto :goto_48

    :catch_30
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "start branch search exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BranchSearchHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_48
    return-void
.end method

.method public static final startGlobSearch(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_22

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    goto :goto_23

    :cond_22
    move-object v1, v2

    :goto_23
    if-eqz v1, :cond_32

    sget-object v2, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v2, v1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurfaceSafely(Landroid/view/View;)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :cond_32
    if-nez v2, :cond_40

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface(Z)V

    :cond_40
    const-string v1, "com.heytap.quicksearchbox"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.heytap.quicksearchbox.ui.activity.SearchHomeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "source"

    const-string v2, "drawer_search"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_5c
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_5f
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_78

    :catch_60
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start glob search exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BranchSearchHelper"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_78
    return-void
.end method

.method public static final supportBranchSearchByMetadata(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "BranchSearchHelper"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v2, 0x7f120481

    invoke-static {v2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {p0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_19} :catch_4e

    if-eqz p0, :cond_2a

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz p0, :cond_2a

    const-string v2, "launcher_draw_entrance_support"

    invoke-virtual {p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportBranchSearchByMetadata = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AllApps"

    invoke-static {v3, v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-nez p0, :cond_46

    goto :goto_4d

    :cond_46
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_4d

    move v1, v0

    :cond_4d
    :goto_4d
    return v1

    :catch_4e
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public static final updateBranchRUS(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchSearchHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchRUSXml(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getRusString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "updateBranchRUS value = "

    const-string v1, "AllApps"

    const-string v2, "BranchSearchHelper"

    invoke-static {v0, p0, v1, v2}, Lcom/android/common/util/r;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_28

    invoke-static {p0}, Lk7/m;->m(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    move v3, v1

    goto :goto_29

    :cond_28
    :goto_28
    move v3, v2

    :goto_29
    if-nez v3, :cond_33

    const-string v3, "1"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_34

    :cond_33
    move v1, v2

    :cond_34
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static final updateGlobalSearchSwitchValue(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportBranchSearch()Z

    move-result v0

    if-eqz v0, :cond_49

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sExportGlobalSearchMateData:Z

    if-eqz v0, :cond_49

    invoke-static {p0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getBranchSearchValue(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_49

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsFragment;->Companion:Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;->getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_29

    const-string v1, "DrawerSwitch"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    if-eqz v0, :cond_49

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawerSwitchDefaultValue:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BranchSearchHelper"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->setBranchSearchValue(Landroid/content/Context;I)V

    :cond_49
    return-void
.end method


# virtual methods
.method public final getGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 5

    const-string p0, "content://com.heytap.quicksearchbox.GlobalSearchProvider"

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sGlobalSearchMateData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->sGlobalSearchMateData:Z

    const-string/jumbo v2, "sGlobalSearchMateData"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->sGlobalSearchMateData:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_64

    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2b} :catch_4f
    .catchall {:try_start_1f .. :try_end_2b} :catchall_4d

    if-eqz p1, :cond_5a

    :try_start_2d
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "shouldShowDialog"

    invoke-virtual {p1, p0, v0, v1, v1}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_5a

    const-string v0, "LauncherAppsSearchContainerLayout"

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_47} :catch_4b
    .catchall {:try_start_2d .. :try_end_47} :catchall_5e

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catch_4b
    move-exception p0

    goto :goto_51

    :catchall_4d
    move-exception p0

    goto :goto_60

    :catch_4f
    move-exception p0

    move-object p1, v1

    :goto_51
    :try_start_51
    const-string v0, "BranchSearchHelper"

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_5e

    :cond_5a
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_64

    :catchall_5e
    move-exception p0

    move-object v1, p1

    :goto_60
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_64
    :goto_64
    return-object v1
.end method

.method public final getMBranchRUSSupport()Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 1

    sget-object p0, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public final isShouldShowDialog(Landroid/content/Context;)Z
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->getGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string/jumbo p1, "shouldShowDialog"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method

.method public final setMBranchRUSSupport(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 2

    const-string p0, "<set-?>"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->mBranchRUSSupport:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method
