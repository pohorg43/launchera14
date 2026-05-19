.class public Lcom/android/statistics/WallpaperStatisticsManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final CURRENT_WALLPAPER_NAME:Ljava/lang/String; = "current_wallpaper_name"

.field private static final DEFAULT_LOCK_WALLPAPER_NAME:Ljava/lang/String; = "default_lock_wallpaper_name"

.field private static final DEFAULT_WALLPAPER_NAME:Ljava/lang/String; = "default_wallpaper_name"

.field private static final EVENT_CLICK_WALLPAPER_SET_ENTRANCE:Ljava/lang/String; = "click_wallpaper_set_entrance"

.field private static final EVENT_DESKTOP_WALLPAPER_INFO:Ljava/lang/String; = "desktop_wallpaper_info"

.field private static final EVENT_KEYGUARD_WALLPAPER_INFO:Ljava/lang/String; = "keyguard_wallpaper_info"

.field private static final EVENT_SET_WALLPAPER_IN_DESKTOP:Ljava/lang/String; = "set_wallpaper_in_desktop"

.field private static final EVENT_SET_WALLPAPER_SUCCESS:Ljava/lang/String; = "set_wallpaper_success"

.field private static final EVENT_WALLPAPER_ENTRY:Ljava/lang/String; = "event_wallpaper_entry"

.field private static final EVENT_WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"

.field private static final KEYGUARD_WALLPAPER_STATISTICS_SETTINGS:Ljava/lang/String; = "keyguard_wallpaper_statistics_settings"

.field private static final KEY_WALLPAPER_ENTRY_NAME:Ljava/lang/String; = "key_entry_name"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_ART:Ljava/lang/String; = "art"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_CREATION:Ljava/lang/String; = "creation"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_LIVE:Ljava/lang/String; = "live"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_OTHER:Ljava/lang/String; = "other"

.field private static final KEY_WALLPAPER_ENTRY_VALUE_STATIC:Ljava/lang/String; = "static"

.field private static final KEY_WALLPAPER_NAME:Ljava/lang/String; = "wallpaper_name"

.field private static final KEY_WALLPAPER_TYPE:Ljava/lang/String; = "wallpaper_type"

.field private static final VALUE_DYNAMIC_WALLPAPER:Ljava/lang/String; = "dynamic_wallpaper"

.field private static final VALUE_INDEX_DESKTOP:I = 0x0

.field private static final VALUE_INDEX_KEYGUARD:I = 0x1

.field private static final VALUE_NORMAL_WALLPAPER:Ljava/lang/String; = "normal_wallpaper"

.field private static final WALLPAPER_DEFAULT:Ljava/lang/String; = "default_wallpaper"

.field private static final WALLPAPER_IGNORE:Ljava/lang/String; = "ignore_wallpaper"

.field private static final WALLPAPER_SEPARATOR:Ljava/lang/String; = ";"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStatistics:Lcom/android/statistics/BaseStatistics;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/statistics/BaseStatistics;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    return-void
.end method

.method private isLockScreenDisabled()Z
    .registers 9

    iget-object v0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    :try_start_e
    sget-object v3, Lcom/android/launcher3/pm/UserCache;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object p0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/pm/UserCache;

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    const-class v3, Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "isLockScreenDisabled"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/launcher3/pm/UserCache;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v5

    long-to-int p0, v5

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_3f} :catch_40

    goto :goto_48

    :catch_40
    move-exception p0

    const-string v2, "isLockScreenDisabled e = "

    const-string v3, "LauncherStatistics"

    invoke-static {v2, p0, v3}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :goto_48
    instance-of p0, v0, Ljava/lang/Boolean;

    if-eqz p0, :cond_53

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_53
    return v1
.end method

.method private statsClickWallpaperEntry(Ljava/lang/String;)V
    .registers 4

    const-string v0, "key_entry_name"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object p0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v0, "event_wallpaper_entry"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method private statsSetWallPaperSuccess()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "set_wallpaper_success"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method


# virtual methods
.method public statsClickWallpaperEntryArt()V
    .registers 2

    const-string v0, "art"

    invoke-direct {p0, v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryCreation()V
    .registers 2

    const-string v0, "creation"

    invoke-direct {p0, v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryLive()V
    .registers 2

    const-string v0, "live"

    invoke-direct {p0, v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryOther()V
    .registers 2

    const-string/jumbo v0, "other"

    invoke-direct {p0, v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperEntryStatic()V
    .registers 2

    const-string/jumbo v0, "static"

    invoke-direct {p0, v0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsClickWallpaperEntry(Ljava/lang/String;)V

    return-void
.end method

.method public statsClickWallpaperSetEntrance()V
    .registers 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string v1, "click_wallpaper_set_entrance"

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsSetWallpaperInDesktop(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "wallpaper_name"

    invoke-static {v0, p1}, Lcom/android/launcher3/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iget-object v0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const-string/jumbo v1, "set_wallpaper_in_desktop"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    invoke-direct {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->statsSetWallPaperSuccess()V

    return-void
.end method

.method public statsWallPaperType()V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v1}, Lcom/android/statistics/BaseStatistics;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isLiveWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2c

    const/4 v1, 0x1

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    if-eqz v1, :cond_32

    const-string v1, "dynamic_wallpaper"

    goto :goto_35

    :cond_32
    const-string/jumbo v1, "normal_wallpaper"

    :goto_35
    const-string/jumbo v3, "wallpaper_type"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p0, v3, v0, v2}, Lcom/android/statistics/BaseStatistics;->onEvent(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public statsWallpaperInfo()V
    .registers 14

    iget-object v0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v2

    const-string v3, "desktop_wallpaper_info"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_44

    iget-object v6, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/app/WallpaperInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_36

    iget-object v6, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v3, v2, v5, v5}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_42

    :cond_36
    iget-object v2, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const v6, 0x7f1206a8

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v5, v5}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :goto_42
    move v2, v4

    goto :goto_45

    :cond_44
    move v2, v5

    :goto_45
    invoke-direct {p0}, Lcom/android/statistics/WallpaperStatisticsManager;->isLockScreenDisabled()Z

    move-result v6

    const/4 v7, 0x2

    const-string v8, ";"

    const-string v9, "keyguard_wallpaper_info"

    if-eqz v6, :cond_52

    :goto_50
    move v1, v4

    goto :goto_9b

    :cond_52
    const-string v6, "keyguard_wallpaper_statistics_settings"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7a

    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v10, v6

    if-ne v10, v7, :cond_7a

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v10

    aget-object v11, v6, v5

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v11

    aget-object v6, v6, v4

    invoke-virtual {v11, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    goto :goto_7c

    :cond_7a
    move v6, v4

    move v10, v5

    :goto_7c
    if-eqz v10, :cond_8b

    iget-object v6, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const v10, 0x7f1206a9

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, v1, v5, v5}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_50

    :cond_8b
    if-nez v6, :cond_9a

    iget-object v6, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    const v10, 0x7f1206aa

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v9, v1, v5, v5}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    goto :goto_50

    :cond_9a
    move v1, v5

    :goto_9b
    if-eqz v2, :cond_a0

    if-eqz v1, :cond_a0

    return-void

    :cond_a0
    const-string v6, "current_wallpaper_name"

    invoke-static {v0, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "default_lock_wallpaper_name"

    const-string v10, "default_wallpaper_name"

    const-string v11, "ignore_wallpaper"

    if-nez v0, :cond_c3

    iget-object v0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_101

    :cond_c3
    const-string v12, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_ce

    :goto_cb
    move-object v0, v11

    move-object v4, v0

    goto :goto_101

    :cond_ce
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v8, v0

    if-eq v8, v7, :cond_d6

    goto :goto_cb

    :cond_d6
    aget-object v7, v0, v5

    aget-object v4, v0, v4

    const-string v0, "default_wallpaper"

    if-nez v2, :cond_ee

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_ee

    iget-object v7, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v7

    invoke-virtual {v7, v10}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :cond_ee
    if-nez v1, :cond_100

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    iget-object v0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/statistics/LauncherStatisticsHelper;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatisticsHelper;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/statistics/LauncherStatisticsHelper;->getDefaultWallpaperDisplayName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_100
    move-object v0, v7

    :goto_101
    if-nez v2, :cond_114

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_114

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_114

    iget-object v2, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {v2, v3, v0, v5, v5}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_114
    if-nez v1, :cond_127

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_127

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_127

    iget-object p0, p0, Lcom/android/statistics/WallpaperStatisticsManager;->mStatistics:Lcom/android/statistics/BaseStatistics;

    invoke-virtual {p0, v9, v4, v5, v5}, Lcom/android/statistics/BaseStatistics;->onEventRemark(Ljava/lang/String;Ljava/lang/String;ZZ)V

    :cond_127
    return-void
.end method
