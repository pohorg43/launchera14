.class public final Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/taskbar/TaskbarControllers$LoggableTaskbarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

.field public static final KEY_ENABLE_TASKBAR:Ljava/lang/String; = "enable_launcher_taskbar"

.field public static final KEY_ENABLE_TASKBAR_ALL_APPS:Ljava/lang/String; = "enable_launcher_tools_allapps_entry"

.field public static final KEY_ENABLE_TASKBAR_EXPAND_AREA:Ljava/lang/String; = "enable_launcher_expand_area"

.field public static final KEY_ENABLE_TASKBAR_FILE_MANAGER:Ljava/lang/String; = "enable_launcher_tools_filemanager_entry"

.field public static final KEY_ENABLE_TASKBAR_GLOBAL_SEARCH:Ljava/lang/String; = "enable_launcher_tools_globalsearch_entry"

.field public static final KEY_ENABLE_TASKBAR_LONG_PRESS:Ljava/lang/String; = "enable_launcher_tools_longpress_entry"

.field public static final KEY_SUPPORT_TASKBAR_DEBUG:Ljava/lang/String; = "support_launcher_taskbar_debug"

.field public static final KEY_TASKBAR_HEIGHT:Ljava/lang/String; = "launcher_taskbar_height"

.field private static final PREF_KEY_DOCK_EXPAND_SWITCH:Ljava/lang/String; = "sp_key_dock_expand_switch"

.field private static final PREF_KEY_TASKBAR_SWITCH:Ljava/lang/String; = "sp_key_taskbar_switch"

.field private static final STATE_DISABLE:I = 0x0

.field private static final STATE_ENABLE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "TaskbarSettingsConfig"

.field private static final URI_ENABLE_TASKBAR:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

.field private static final URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

.field private static final URI_SUPPORT_TASKBAR_DEBUG:Landroid/net/Uri;

.field private static sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mIsFirstReadExpandEnableState:Z

.field private mIsFirstReadTaskbarEnableState:Z

.field private final mSettingsCache:Lcom/android/launcher3/util/SettingsCache;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    const-string v0, "enable_launcher_taskbar"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    const-string v0, "enable_launcher_expand_area"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    const-string v0, "enable_launcher_tools_allapps_entry"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    const-string v0, "enable_launcher_tools_globalsearch_entry"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    const-string v0, "enable_launcher_tools_filemanager_entry"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    const-string v0, "enable_launcher_tools_longpress_entry"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    const-string/jumbo v0, "support_launcher_taskbar_debug"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_SUPPORT_TASKBAR_DEBUG:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/launcher3/util/SettingsCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/SettingsCache;

    iput-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    iput-boolean p1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 1

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;)V
    .registers 1

    sput-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->sInstance:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    return-void
.end method

.method private final enableSetting(Ljava/lang/String;Z)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->getKeyUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/SettingsCache;->getCache(Landroid/net/Uri;)Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_f

    goto :goto_20

    :cond_f
    const-string/jumbo v2, "mSettingsCache.getCache(this) ?: return@apply"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eq v1, p2, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/SettingsCache;->removeCache(Landroid/net/Uri;)V

    :cond_20
    :goto_20
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static final get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->Companion:Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig$Companion;->get(Landroid/content/Context;)Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    move-result-object p0

    return-object p0
.end method

.method private final getKeyUri(Ljava/lang/String;)Landroid/net/Uri;
    .registers 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    sparse-switch p0, :sswitch_data_52

    goto :goto_4f

    :sswitch_8
    const-string p0, "enable_launcher_tools_globalsearch_entry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_4f

    :cond_11
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    goto :goto_50

    :sswitch_14
    const-string p0, "enable_launcher_tools_filemanager_entry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1d

    goto :goto_4f

    :cond_1d
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    goto :goto_50

    :sswitch_20
    const-string p0, "enable_launcher_tools_longpress_entry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_4f

    :cond_29
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    goto :goto_50

    :sswitch_2c
    const-string p0, "enable_launcher_expand_area"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_4f

    :cond_35
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    goto :goto_50

    :sswitch_38
    const-string p0, "enable_launcher_taskbar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4f

    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    goto :goto_50

    :sswitch_43
    const-string p0, "enable_launcher_tools_allapps_entry"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4c

    goto :goto_4f

    :cond_4c
    sget-object p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 p0, 0x0

    :goto_50
    return-object p0

    nop

    :sswitch_data_52
    .sparse-switch
        -0x41d05c81 -> :sswitch_43
        -0x3f41b9f5 -> :sswitch_38
        -0x694b1d1 -> :sswitch_2c
        0x32a141f3 -> :sswitch_20
        0x3c5ffb9d -> :sswitch_14
        0x4981ff25 -> :sswitch_8
    .end sparse-switch
.end method


# virtual methods
.method public final backupTaskbarSettingEnable()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->backupTaskbarSettingEnable(ZZ)V

    return-void
.end method

.method public final backupTaskbarSettingEnable(ZZ)V
    .registers 4

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string/jumbo v0, "sp_key_taskbar_switch"

    if-nez p2, :cond_13

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1a

    :cond_13
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1a
    return-void
.end method

.method public dumpLogs(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 9

    if-eqz p2, :cond_7

    const-string v0, "TaskbarSettingsConfig:"

    invoke-static {p1, v0, p2}, Lcom/android/launcher/download/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_7
    const-string v0, "format(format, *args)"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz p2, :cond_2e

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarSettingEnable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s\t taskBar_switch_state=%b"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2e
    if-eqz p2, :cond_50

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarAllAppsSettingEnable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s\t taskBar_allapps_switch_state=%b"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_50
    if-eqz p2, :cond_72

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarFileManagerSettingEnable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s\t taskBar_file_switch_state=%b"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_72
    if-eqz p2, :cond_94

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarLongPressSettingEnable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s\t taskBar_longpress_swtch_state=%b"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_94
    if-eqz p2, :cond_b6

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarExpandAreaSettingEnable()Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s\t taskBar_expand_area_swtch_state=%b"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_b6
    if-eqz p2, :cond_d8

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-virtual {p0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->isTaskbarGlobalSearchSettingEnable()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s\t taskbar_search_switch_state=%b"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_d8
    return-void
.end method

.method public final isSupportTaskbarDebug()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_SUPPORT_TASKBAR_DEBUG:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarAllAppsSettingEnable()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarExpandAreaSettingEnable()Z
    .registers 10

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_61

    const-class v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    monitor-enter v0

    :try_start_8
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    if-eqz v2, :cond_5c

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadExpandEnableState:Z

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "enable_launcher_expand_area"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_5c

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string/jumbo v4, "sp_key_dock_expand_switch"

    invoke-interface {v3, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_32

    goto :goto_33

    :cond_32
    move v1, v2

    :goto_33
    const-string v2, "Taskbar"

    const-string v6, "TaskbarSettingsConfig"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "update enable_launcher_expand_area with old state: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v6, v7}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "enable_launcher_expand_area"

    invoke-direct {p0, v2, v5}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_5c
    .catchall {:try_start_8 .. :try_end_5c} :catchall_5e

    :cond_5c
    monitor-exit v0

    goto :goto_61

    :catchall_5e
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_61
    :goto_61
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarFileManagerSettingEnable()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarGlobalSearchSettingEnable()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarLongPressSettingEnable()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final isTaskbarSettingEnable()Z
    .registers 7

    iget-boolean v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_53

    const-class v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;

    monitor-enter v0

    :try_start_8
    iget-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    if-eqz v2, :cond_4e

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mIsFirstReadTaskbarEnableState:Z

    iget-object v3, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const-string v4, "enable_launcher_taskbar"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_38

    const-string v3, "Taskbar"

    const-string v4, "TaskbarSettingsConfig"

    const-string v5, "init taskbar enable state"

    invoke-static {v3, v4, v5}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSTaskbarDefaultEnable()Z

    move-result v3

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-virtual {p0, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->backupTaskbarSettingEnable(ZZ)V

    :cond_30
    if-eqz v3, :cond_35

    if-nez v4, :cond_35

    move v2, v1

    :cond_35
    invoke-virtual {p0, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    :cond_38
    iget-object v2, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "launcher_taskbar_height"

    iget-object v4, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "mContext.resources"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarSizePx(Landroid/content/res/Resources;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4e
    .catchall {:try_start_8 .. :try_end_4e} :catchall_50

    :cond_4e
    monitor-exit v0

    goto :goto_53

    :catchall_50
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_53
    :goto_53
    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/SettingsCache;->getValue(Landroid/net/Uri;I)Z

    move-result p0

    return p0
.end method

.method public final registerTaskbarAllAppsEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarFileManagerEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarGlobalSearchEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final registerTaskbarLongPressEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->register(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final resetTaskbarSettings()V
    .registers 2

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportTaskBar()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result v0

    if-nez v0, :cond_23

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSTaskbarDefaultEnable()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarAllAppsSettingEnable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarGlobalSearchSettingEnable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarFileManagerSettingEnable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarExpandAreaSettingEnable(Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarLongPressSettingEnable(Z)V

    :cond_23
    return-void
.end method

.method public final restoreTaskbarSettingEnable()V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "sp_key_taskbar_switch"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_33

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "enable_launcher_taskbar"

    invoke-direct {p0, v3, v2}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_33
    return-void
.end method

.method public final setTaskbarAllAppsSettingEnable(Z)V
    .registers 3

    const-string v0, "enable_launcher_tools_allapps_entry"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setTaskbarExpandAreaSettingEnable(Z)V
    .registers 3

    const-string v0, "enable_launcher_expand_area"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setTaskbarFileManagerSettingEnable(Z)V
    .registers 3

    const-string v0, "enable_launcher_tools_filemanager_entry"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setTaskbarGlobalSearchSettingEnable(Z)V
    .registers 3

    const-string v0, "enable_launcher_tools_globalsearch_entry"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setTaskbarLongPressSettingEnable(Z)V
    .registers 3

    const-string v0, "enable_launcher_tools_longpress_entry"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setTaskbarSettingEnable(Z)V
    .registers 5

    if-eqz p1, :cond_12

    sget-object v0, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy;->Companion:Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->getNavButtonsPosition(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/quickstep/common/settingsvalue/NavigationSettingsValueProxy$Companion;->setNavButtonsPosition(Landroid/content/Context;I)V

    :cond_12
    const-string v0, "enable_launcher_taskbar"

    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->enableSetting(Ljava/lang/String;Z)V

    return-void
.end method

.method public final setTaskbarSettingEnableForBackupRestore(Z)V
    .registers 4

    invoke-static {}, Lcom/android/common/util/LauncherUtil;->isCustomizedDefaultLauncher()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->backupTaskbarSettingEnable(ZZ)V

    :cond_a
    if-eqz p1, :cond_f

    if-nez v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    invoke-virtual {p0, v1}, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->setTaskbarSettingEnable(Z)V

    return-void
.end method

.method public final unregisterTaskbarAllAppsEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_ALL_APPS:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarExpandAreaEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_EXPAND_AREA:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarFileManagerEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_FILE_MANAGER:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarGlobalSearchEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_GLOBAL_SEARCH:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method

.method public final unregisterTaskbarLongPressEnableSetting(Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V
    .registers 3

    const-string/jumbo v0, "onChangeListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->mSettingsCache:Lcom/android/launcher3/util/SettingsCache;

    sget-object v0, Lcom/android/launcher3/taskbar/TaskbarSettingsConfig;->URI_ENABLE_TASKBAR_LONG_PRESS:Landroid/net/Uri;

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/SettingsCache;->unregister(Landroid/net/Uri;Lcom/android/launcher3/util/SettingsCache$OnChangeListener;)V

    return-void
.end method
