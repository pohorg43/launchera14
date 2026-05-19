.class public final Lcom/android/launcher3/bottomsearch/CommonUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCommonUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CommonUtils.kt\ncom/android/launcher3/bottomsearch/CommonUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,182:1\n1855#2,2:183\n*S KotlinDebug\n*F\n+ 1 CommonUtils.kt\ncom/android/launcher3/bottomsearch/CommonUtils\n*L\n165#1:183,2\n*E\n"
    }
.end annotation


# static fields
.field public static final DEFAULT_SEARCH_WIDGET_ID:I = -0x1

.field public static final INSTANCE:Lcom/android/launcher3/bottomsearch/CommonUtils;

.field private static final KEY_BUNDLE_MENU:Ljava/lang/String; = "menuInfo"

.field private static final KEY_IS_NIGHT_MODE:Ljava/lang/String; = "isNightMode"

.field public static final KEY_SEARCH_APPWIDGET_ID:Ljava/lang/String; = "search_appwidget_id"

.field private static final KEY_SETTING_BUNDLE:Ljava/lang/String; = "openSource"

.field private static final METHOD_GET_WIDGET_MENU:Ljava/lang/String; = "getWidgetMenuInfo"

.field private static final SHOW_DELAY_LIMITED:J = 0x64L

.field private static final TAG:Ljava/lang/String; = "BOTTOM.WIDGET - Util"

.field private static final URI_GET_WIDGET_MENU:Ljava/lang/String; = "content://com.heytap.browser.widget.setting"

.field private static final VALUE_START_FROM_LAUNCHER:Ljava/lang/String; = "bottomWidget"

.field private static final VALUE_START_FROM_LAUNCHER_SETTING:Ljava/lang/String; = "setting"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/bottomsearch/CommonUtils;

    invoke-direct {v0}, Lcom/android/launcher3/bottomsearch/CommonUtils;-><init>()V

    sput-object v0, Lcom/android/launcher3/bottomsearch/CommonUtils;->INSTANCE:Lcom/android/launcher3/bottomsearch/CommonUtils;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/CommonUtils;->getSettingShortcut$lambda$2(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/CommonUtils;->showSettingPopup$lambda$7$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    return-void
.end method

.method public static synthetic c(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/bottomsearch/CommonUtils;->showSettingPopup$lambda$7(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final deleteAppWidgetId(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "BOTTOM.WIDGET - Util"

    const-string v1, "deleteAppWidgetId"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "search_appwidget_id"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_17

    return-void

    :cond_17
    new-instance v3, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v3, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final featureSupport()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getSupportBottomSearch()Z

    move-result v0

    if-nez v0, :cond_18

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v0, :cond_18

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_18

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isRmSearchEntrySupport()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method public static final getAppWidgetId(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "search_appwidget_id"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getBottomSearchHeight(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    const v1, 0x7f0701ca

    if-nez v0, :cond_15

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_2f

    :cond_15
    invoke-static {}, Lcom/android/common/config/VersionInfo;->isRussianVersion()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    goto :goto_2f

    :cond_24
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f0701c5

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    :goto_2f
    return p0
.end method

.method public static final getBrowserSettingIntent(ZLandroid/content/Context;)Landroid/content/Intent;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.heytap.browser.action.WIDGET_SETTING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p0, :cond_1a

    const-string/jumbo v1, "setting"

    goto :goto_1c

    :cond_1a
    const-string v1, "bottomWidget"

    :goto_1c
    const-string/jumbo v2, "openSource"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/statistics/LauncherStatistics;->statsClickWidgetSetting(Z)V

    return-object v0
.end method

.method public static final getSettingShortcut()Lcom/android/launcher3/popup/SystemShortcut$Factory;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/popup/SystemShortcut$Factory<",
            "Lcom/android/launcher/Launcher;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/bottomsearch/e;->a:Lcom/android/launcher3/bottomsearch/e;

    return-object v0
.end method

.method private static final getSettingShortcut$lambda$2(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Lcom/android/launcher3/popup/SystemShortcut;
    .registers 4

    new-instance v0, Lcom/android/launcher3/bottomsearch/IconWidgetSettings;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/bottomsearch/IconWidgetSettings;-><init>(Lcom/android/launcher3/BaseDraggingActivity;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-object v0
.end method

.method public static final isBottomEnable(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key_is_show_search_box"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isBottomSearchWidget(Landroid/content/ComponentName;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_1d

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.heytap.browser"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.android.browser.widget.DefaultSearchWidgetProvider"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1d

    const/4 p0, 0x1

    move v0, p0

    :cond_1d
    return v0
.end method

.method public static final isBottomSearchWidget(Ljava/lang/String;)Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_b

    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/bottomsearch/CommonUtils;->isBottomSearchWidget(Landroid/content/ComponentName;)Z

    move-result p0

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static final isBrowserWidget(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "cn"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.browser"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser.widget.DefaultSearchWidgetProvider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.browser.widget.NaviSearchWidgetProvider"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    :cond_29
    const/4 p0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 p0, 0x0

    :goto_2c
    return p0
.end method

.method public static final launcherSupport(Lcom/android/launcher3/Launcher;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isOplusLauncher()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p0

    iget-boolean p0, p0, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eqz p0, :cond_13

    return v0

    :cond_13
    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result p0

    if-nez p0, :cond_28

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher/mode/LauncherModeManager;->isStandardMode()Z

    move-result p0

    if-nez p0, :cond_28

    return v0

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method public static final showSettingPopup(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/util/List<",
            "Lcom/android/launcher/bottomsearch/DynamicMenuBean;",
            ">;",
            "Lh4/z;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "showPopup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher/widget/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/b;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final showSettingPopup$lambda$7(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 9

    const-string v0, "BOTTOM.WIDGET - Util"

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$showPopup"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    new-instance v3, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v3, p1, v1, v2}, Lcom/android/exceptionmonitor/util/b;-><init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    const-wide/16 v4, 0x64

    invoke-virtual {p1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :try_start_26
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "isNightMode"

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isDarkTheme(Landroid/content/Context;)Z

    move-result v5

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v4, "content://com.heytap.browser.widget.setting"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "getWidgetMenuInfo"

    const/4 v6, 0x0

    invoke-virtual {p0, v4, v5, v6, p1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_4e

    const-string/jumbo p1, "menuInfo"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_4e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getSettingList listString : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v6, :cond_6d

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_6b

    goto :goto_6d

    :cond_6b
    const/4 p0, 0x0

    goto :goto_6e

    :cond_6d
    :goto_6d
    const/4 p0, 0x1

    :goto_6e
    if-nez p0, :cond_b8

    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    new-instance p1, Lcom/google/gson/JsonParser;

    invoke-direct {p1}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {p1, v6}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    const-string v4, "element.asJsonArray"

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/gson/JsonElement;

    const-class v5, Lcom/android/launcher/bottomsearch/DynamicMenuBean;

    invoke-virtual {p0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher/bottomsearch/DynamicMenuBean;

    const-string v5, "fromJson"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_ad
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_ad} :catch_ae

    goto :goto_91

    :catch_ae
    move-exception p0

    const-string p1, "e  : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lcom/android/launcher/e0;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_b8
    sget-object p0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    iget-boolean p1, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez p1, :cond_c8

    invoke-virtual {p0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_c8
    return-void
.end method

.method private static final showSettingPopup$lambda$7$lambda$3(Lkotlin/jvm/functions/Function1;Ljava/util/List;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .registers 4

    const-string v0, "$showPopup"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$beanList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$hasShowPopup"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    iput-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return-void
.end method
