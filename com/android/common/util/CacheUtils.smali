.class public final Lcom/android/common/util/CacheUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.heytap.pictorial.wallpaper.provider"

.field private static final EXTRA_IS_WALLPAPER_ENTRANCE_SHOW:Ljava/lang/String; = "is_wallpaper_entrance_show"

.field public static final INSTANCE:Lcom/android/common/util/CacheUtils;

.field private static final METHOD_WALLPAPER_ENTRANCE_SHOW:Ljava/lang/String; = "method_wallpaper_entrance_show"

.field private static final SUPPORT_CAROUSEL_WALLPAPER_CACHE_KEY:Ljava/lang/String; = "support_carousel_wallpaper_cache_key"

.field private static final TAG:Ljava/lang/String; = "CacheUtils"

.field private static final URI_WALLPAPER_ENTRANCE_SHOW:Landroid/net/Uri;

.field private static final cloneAppDrawable$delegate:Lh4/f;

.field private static defaultContext:Landroid/content/Context;

.field private static final dotDrawable$delegate:Lh4/f;

.field private static final installedProviders:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/os/UserHandle;",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final mIconSize2RadiusCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Float;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final mImmutableIndexHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/util/Locale;",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final mSupportCarouselWallpaperHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile nativeConfig:Landroid/content/res/Configuration;

.field private static numberFormat:Ljava/text/NumberFormat;

.field private static supportCache:Z

.field private static final uxIconConfig:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/content/res/Configuration;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static windowMetrics:Landroid/view/WindowMetrics;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/CacheUtils;

    invoke-direct {v0}, Lcom/android/common/util/CacheUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->uxIconConfig:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->installedProviders:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->mImmutableIndexHashMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->mIconSize2RadiusCache:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->mSupportCarouselWallpaperHashMap:Ljava/util/HashMap;

    const-string v0, "content://com.heytap.pictorial.wallpaper.provider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->URI_WALLPAPER_ENTRANCE_SHOW:Landroid/net/Uri;

    sget-object v0, Lcom/android/common/util/CacheUtils$dotDrawable$2;->INSTANCE:Lcom/android/common/util/CacheUtils$dotDrawable$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->dotDrawable$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;->INSTANCE:Lcom/android/common/util/CacheUtils$cloneAppDrawable$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->cloneAppDrawable$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getDefaultContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_9

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :cond_9
    sget-object v0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    const-string v1, "CacheUtils"

    if-nez v0, :cond_21

    invoke-static {p0}, Lcom/android/common/util/DisplayDensityUtils;->getDefDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "cache miss getDefaultContext "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2c

    :cond_21
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_2c

    const-string p0, "cache hit getDefaultContext "

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    sget-object p0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final getDisplay(Landroid/content/Context;)Landroid/view/Display;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "displayInfoContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_R:Z

    if-eqz v0, :cond_e

    :try_start_9
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0
    :try_end_d
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_d} :catch_e

    return-object p0

    :catch_e
    :cond_e
    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/display/DisplayManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstalledProviders(Landroid/appwidget/AppWidgetManager;Landroid/os/UserHandle;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/appwidget/AppWidgetManager;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "manager"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_15
    sget-object v0, Lcom/android/common/util/CacheUtils;->installedProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const-string v2, "CacheUtils"

    if-nez v1, :cond_43

    invoke-virtual {p0, p1}, Landroid/appwidget/AppWidgetManager;->getInstalledProvidersForProfile(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_3f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache miss getInstalledProvidersForProfile "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3f
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5d

    :cond_43
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result p0

    if-eqz p0, :cond_5d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cache hit getInstalledProvidersForProfile "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    :goto_5d
    return-object v1
.end method

.method public static final getMaximumWindowMetrics(Landroid/content/Context;)Landroid/view/WindowMetrics;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "displayContext"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/CacheUtils;->getDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    const/16 v0, 0x7f6

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    const-string v0, "displayContext\n         …    .maximumWindowMetrics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final getNativeConfiguration()Landroid/content/res/Configuration;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    const-string/jumbo v1, "nativeConfig is null. create a new Configuration, return a default value"

    const-string v2, "CacheUtils"

    if-nez v0, :cond_18

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_17

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    :cond_17
    return-object v0

    :cond_18
    sget-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_2e

    invoke-static {}, Lcom/oplus/compat/app/ActivityManagerNative;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "cache miss getNativeConfiguration "

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_39

    :cond_2e
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    const-string v0, "cache hit getNativeConfiguration "

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_39
    :goto_39
    sget-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    if-nez v0, :cond_47

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    sput-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    :cond_47
    sget-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final getNumberFormat()Ljava/text/NumberFormat;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_d

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0

    :cond_d
    sget-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    const-string v1, "CacheUtils"

    if-nez v0, :cond_29

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Ljava/text/NumberFormat;->getNumberInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "cache miss getNumberFormat "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    :cond_29
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_34

    const-string v0, "cache hit getNumberFormat "

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    sget-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method public static final getRadiusByIconSize(F)Ljava/lang/Float;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/CacheUtils;->mIconSize2RadiusCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    return-object p0
.end method

.method public static final getSupportCarouselWallpaperCache(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/CacheUtils;->mSupportCarouselWallpaperHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "support_carousel_wallpaper_cache_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "CacheUtils"

    const/4 v4, 0x0

    if-eqz v2, :cond_25

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_1f

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :cond_1f
    const-string p0, "cache hit key getSupportCarouselWallpaperCache "

    invoke-static {p0, v4, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v4

    :cond_25
    :try_start_25
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_33

    sget-object v5, Lcom/android/common/util/CacheUtils;->URI_WALLPAPER_ENTRANCE_SHOW:Landroid/net/Uri;

    invoke-virtual {p0, v5}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0

    goto :goto_34

    :cond_33
    move-object p0, v2

    :goto_34
    if-eqz p0, :cond_3d

    const-string/jumbo v5, "method_wallpaper_entrance_show"

    invoke-virtual {p0, v5, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2

    :cond_3d
    if-eqz v2, :cond_46

    const-string p0, "is_wallpaper_entrance_show"

    invoke-virtual {v2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    goto :goto_47

    :cond_46
    move p0, v4

    :goto_47
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportCarouselWallpaper :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_62
    .catch Landroid/os/DeadObjectException; {:try_start_25 .. :try_end_62} :catch_63

    return p0

    :catch_63
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSupportCarouselWallpaper fail e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v4
.end method

.method public static final getUxIconConfig(Landroid/content/res/Configuration;)J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oplus/compat/utils/util/UnSupportedApiVersionException;
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "config"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez v0, :cond_e

    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v0

    return-wide v0

    :cond_e
    sget-object v0, Lcom/android/common/util/CacheUtils;->uxIconConfig:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v2, "CacheUtils"

    if-nez v1, :cond_40

    invoke-static {p0}, Lcom/oplus/compat/content/res/ConfigurationNative;->getUxIconConfig(Landroid/content/res/Configuration;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v3

    if-eqz v3, :cond_3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache miss getUxIconConfig "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :cond_40
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isInternalLogOpen()Z

    move-result v0

    if-eqz v0, :cond_5a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache hit getUxIconConfig "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->internal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5a
    :goto_5a
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public static final initSupportCarouselWallpaperCache(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/CacheUtils;->mSupportCarouselWallpaperHashMap:Ljava/util/HashMap;

    const-string/jumbo v1, "support_carousel_wallpaper_cache_key"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "CacheUtils"

    if-eqz v0, :cond_18

    const-string p0, "cache exist"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-static {p0}, Lcom/android/common/util/CacheUtils;->getSupportCarouselWallpaperCache(Landroid/content/Context;)Z

    move-result p0

    const-string v0, "initSupportCarouselWallpaperCache "

    invoke-static {v0, p0, v1}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public static final resetCache()V
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    sput-object v0, Lcom/android/common/util/CacheUtils;->defaultContext:Landroid/content/Context;

    sput-object v0, Lcom/android/common/util/CacheUtils;->nativeConfig:Landroid/content/res/Configuration;

    sput-object v0, Lcom/android/common/util/CacheUtils;->numberFormat:Ljava/text/NumberFormat;

    sput-object v0, Lcom/android/common/util/CacheUtils;->windowMetrics:Landroid/view/WindowMetrics;

    sget-object v0, Lcom/android/common/util/CacheUtils;->uxIconConfig:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/android/common/util/CacheUtils;->installedProviders:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v0, Lcom/android/common/util/CacheUtils;->mIconSize2RadiusCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public static final saveRadius(FF)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    sget-object v0, Lcom/android/common/util/CacheUtils;->mIconSize2RadiusCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static final setSupportCache(Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSupportCache "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CacheUtils"

    invoke-static {v1, v0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/common/util/CacheUtils;->supportCache:Z

    if-nez p0, :cond_1e

    invoke-static {}, Lcom/android/common/util/CacheUtils;->resetCache()V

    :cond_1e
    return-void
.end method


# virtual methods
.method public final getCloneAppDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-object p0, Lcom/android/common/util/CacheUtils;->cloneAppDrawable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-cloneAppDrawable>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getDotDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    sget-object p0, Lcom/android/common/util/CacheUtils;->dotDrawable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "<get-dotDrawable>(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public final getImmutableIndex(Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex$ImmutableIndex;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Landroid/icu/text/AlphabeticIndex$ImmutableIndex<",
            "*>;"
        }
    .end annotation

    const-string p0, "locale"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/util/CacheUtils;->mImmutableIndexHashMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    if-nez v0, :cond_26

    new-instance v0, Landroid/icu/text/AlphabeticIndex;

    invoke-direct {v0, p1}, Landroid/icu/text/AlphabeticIndex;-><init>(Ljava/util/Locale;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/Locale;

    const/4 v2, 0x0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/icu/text/AlphabeticIndex;->addLabels([Ljava/util/Locale;)Landroid/icu/text/AlphabeticIndex;

    invoke-virtual {v0}, Landroid/icu/text/AlphabeticIndex;->buildImmutableIndex()Landroid/icu/text/AlphabeticIndex$ImmutableIndex;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_26
    return-object v0
.end method
