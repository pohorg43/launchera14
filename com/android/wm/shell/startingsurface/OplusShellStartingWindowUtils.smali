.class public Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CAN_DISABLE_PRELOAD_SPLASH:Z

.field private static final COLOR_SALT:F = 50.0f

.field private static final DEBUG_PANIC:Z

.field public static final DISABLE_OPLUS_STARTING_WINDOW:Z

.field private static final PRIV_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PROTO_LOG_ABNORMAL:Z = true

.field private static final SYSTEM_APPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OplusShellStartingWindowManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 43

    const-string/jumbo v0, "persist.debug.shell_starting_window.disable_oplus"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->DISABLE_OPLUS_STARTING_WINDOW:Z

    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string/jumbo v2, "oplus.software.wms.disable_preload_splash"

    invoke-virtual {v0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->CAN_DISABLE_PRELOAD_SPLASH:Z

    const-string/jumbo v0, "persist.sys.assert.panic"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->DEBUG_PANIC:Z

    const-string v1, "com.android.launcher"

    const-string v2, "com.android.systemui"

    const-string v3, "com.android.incallui"

    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.intelligence"

    const-string v6, "com.android.browser"

    const-string v7, "com.android.phone"

    const-string v8, "com.android.wallpaper.livepicker"

    const-string v9, "com.android.calculator2"

    const-string v10, "com.android.calendar"

    const-string v11, "com.android.contacts"

    const-string v12, "com.android.mms"

    const-string v13, "com.android.stk"

    const-string v14, "com.android.packageinstaller"

    const-string v15, "com.android.permissioncontroller"

    const-string v16, "com.finshell.wallet"

    const-string v17, "com.redteamobile.roaming"

    const-string v18, "com.android.nfc"

    const-string v19, "com.market.heydemo"

    const-string v20, "com.android.fmradio"

    const-string v21, "com.nearme.gamecenter"

    filled-new-array/range {v1 .. v21}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->SYSTEM_APPS:Ljava/util/Set;

    const-string v1, "com.amazon.mShop.android.shopping"

    const-string v2, "com.minsvyaz.applist"

    const-string v3, "com.jakarta.baca.lite"

    const-string v4, "com.epi"

    const-string v5, "com.bstar.intl"

    const-string v6, "com.booking"

    const-string v7, "com.byjus.thelearningapp"

    const-string v8, "com.eterno"

    const-string v9, "com.facebook.katana"

    const-string v10, "com.flipkart.android"

    const-string/jumbo v11, "world.social.group.video.share"

    const-string v12, "com.eterno.shortvideos"

    const-string v13, "com.msd.JTClient"

    const-string v14, "com.kwai.kuaishou.video.live"

    const-string v15, "com.kwai.video"

    const-string v16, "com.lazada.android"

    const-string v17, "com.linkedin.android"

    const-string v18, "com.igg.android.lordsmobile"

    const-string v19, "in.mohalla.video"

    const-string v20, "com.phonepe.app"

    const-string v21, "com.cardfeed.video_public"

    const-string v22, "in.mohalla.sharechat"

    const-string v23, "com.shopee.id"

    const-string v24, "com.shopee.my"

    const-string v25, "com.shopee.ph"

    const-string v26, "com.shopee.sg"

    const-string v27, "com.shopee.th"

    const-string v28, "com.shopee.vn"

    const-string v29, "com.kwai.bulldog"

    const-string v30, "com.snapchat.android"

    const-string v31, "com.spotify.music"

    const-string v32, "com.ss.android.ugc.trill"

    const-string v33, "com.zhiliaoapp.musically"

    const-string v34, "com.truecaller"

    const-string v35, "com.twitter.android"

    const-string v36, "com.xb.topnews"

    const-string/jumbo v37, "ru.yandex.searchplugin"

    const-string v38, "com.yandex.browser"

    const-string v39, "com.zing.zalo"

    const-string v40, "com.zing.mp3"

    const-string v41, "in.amazon.mShop.android.shopping"

    const-string v42, "com.netflix.mediaclient"

    filled-new-array/range {v1 .. v42}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/collect/Sets;->newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;

    move-result-object v0

    sput-object v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->PRIV_APPS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyWindowAttrsFrom(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V
    .registers 3

    iget v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    iget v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    iget-object v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    iget p1, p1, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    return-void
.end method

.method public static varargs enableShellProtoLog([Ljava/lang/String;)V
    .registers 1

    return-void
.end method

.method public static varargs formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    const-string v0, "OplusShellStartingWindowManager"

    if-nez p0, :cond_5

    return-void

    :cond_5
    :try_start_5
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_13

    :catch_d
    move-exception p0

    const-string p1, "format error."

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    return-void
.end method

.method public static varargs formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 3

    sget-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->DEBUG_PANIC:Z

    if-eqz v0, :cond_7

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public static getAppToken(Landroid/window/StartingWindowInfo;)Landroid/os/IBinder;
    .registers 2

    const-class v0, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object p0, p0, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    invoke-static {v0, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OplusStartingWindowExtendedInfo;

    if-eqz v0, :cond_12

    iget-object p0, v0, Landroid/window/OplusStartingWindowExtendedInfo;->a:Landroid/os/IBinder;

    :cond_12
    return-object p0
.end method

.method public static getSuperField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_32

    if-eqz p1, :cond_32

    if-nez p2, :cond_8

    goto :goto_32

    :cond_8
    :try_start_8
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_31

    :catch_19
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getSuperField: failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_31
    return-object v0

    :cond_32
    :goto_32
    const-string p0, "getSuperField: invalid params"

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isNightMode(Landroid/window/StartingWindowInfo;)Z
    .registers 1

    if-eqz p0, :cond_10

    iget-object p0, p0, Landroid/window/StartingWindowInfo;->a:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method private static isPresetApp(Ljava/lang/String;)Z
    .registers 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->SYSTEM_APPS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    sget-object v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->PRIV_APPS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public static isWindowAttrsDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "OplusShellStartingWindowManager"

    const-string v1, "isWindowAttrsDefault: attrs is null"

    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_b
    iget v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgColor:I

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mSplashScreenIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mBrandingImage:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mIconBgColor:I

    if-nez p0, :cond_1c

    const/4 v0, 0x1

    :cond_1c
    return v0
.end method

.method public static logD(Ljava/lang/String;)V
    .registers 2

    const-string v0, "OplusShellStartingWindowManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logD(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    const-string v0, "OplusShellStartingWindowManager"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static logDIfNeeded(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->DEBUG_PANIC:Z

    if-eqz v0, :cond_7

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public static makeColorBackground(IF)I
    .registers 14

    const/4 v0, 0x3

    new-array v0, v0, [D

    invoke-static {p0, v0}, Lcom/android/internal/graphics/ColorUtils;->colorToLAB(I[D)V

    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/high16 v4, 0x4059000000000000L  # 100.0

    sub-double/2addr v4, v2

    aget-wide v2, v0, v1

    cmpg-double v2, v4, v2

    if-gez v2, :cond_44

    const/high16 v2, -0x40800000  # -1.0f

    cmpl-float v2, p1, v2

    if-eqz v2, :cond_22

    float-to-double v2, p1

    const-wide/high16 v6, 0x4049000000000000L  # 50.0

    div-double/2addr v4, v6

    const/high16 v6, 0x42480000  # 50.0f

    sub-float/2addr v6, p1

    float-to-double v6, v6

    mul-double/2addr v4, v6

    add-double/2addr v4, v2

    :cond_22
    aput-wide v4, v0, v1

    aget-wide v6, v0, v1

    const/4 p1, 0x1

    aget-wide v8, v0, p1

    const/4 p1, 0x2

    aget-wide v10, v0, p1

    invoke-static/range {v6 .. v11}, Lcom/android/internal/graphics/ColorUtils;->LABToColor(DDD)I

    move-result p1

    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result p0

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-static {p0, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    :cond_44
    return p0
.end method

.method public static makeDark(Landroid/content/Context;I)I
    .registers 3

    const-class v0, Landroid/content/res/OplusBaseConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/oplus/util/OplusTypeCastingHelper;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/res/OplusBaseConfiguration;

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Landroid/content/res/OplusBaseConfiguration;->getOplusExtraConfiguration()Loplus/content/res/OplusExtraConfiguration;

    move-result-object p0

    iget p0, p0, Loplus/content/res/OplusExtraConfiguration;->mDarkModeBackgroundMaxL:F

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->makeColorBackground(IF)I

    move-result p0

    return p0
.end method

.method public static needKeepStyleWithLauncherIcon(Landroid/content/pm/ActivityInfo;ZZ)Z
    .registers 5

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->DEBUG_PANIC:Z

    if-eqz v0, :cond_25

    const-string/jumbo v0, "needKeepStyleWithLauncherIcon DISABLE_PRELOAD_SPLASH = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->CAN_DISABLE_PRELOAD_SPLASH:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusShellStartingWindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_25
    if-nez p2, :cond_35

    sget-boolean p2, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->CAN_DISABLE_PRELOAD_SPLASH:Z

    if-eqz p2, :cond_35

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->isPresetApp(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_33

    if-eqz p1, :cond_35

    :cond_33
    const/4 p0, 0x1

    goto :goto_36

    :cond_35
    const/4 p0, 0x0

    :goto_36
    return p0
.end method

.method public static typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    return-object p1

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method
