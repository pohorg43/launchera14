.class public Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;


# instance fields
.field private mNeedHandleStartingWindowBar:Z

.field private final mPreviewInfoCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviewInfoMapLock:Ljava/lang/Object;

.field private final mSplashWindowAttrsLock:Ljava/lang/Object;

.field private final mSplashWindowAttrsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/IBinder;",
            "Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartingWindowController:Lcom/android/wm/shell/startingsurface/StartingWindowController;


# direct methods
.method private constructor <init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$1;-><init>(Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;I)V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoCache:Landroid/util/LruCache;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoMapLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsMap:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mNeedHandleStartingWindowBar:Z

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mStartingWindowController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->enableShellProtoLog([Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->lambda$setContentViewBackground$0(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;
    .registers 3

    sget-boolean v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->DISABLE_OPLUS_STARTING_WINDOW:Z

    if-eqz v0, :cond_7

    sget-object p0, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->DEFAULT:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    return-object p0

    :cond_7
    sget-object v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    if-nez v0, :cond_28

    const-class v0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;

    monitor-enter v0

    :try_start_e
    sget-object v1, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    if-nez v1, :cond_23

    new-instance v1, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;

    check-cast p0, Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;-><init>(Lcom/android/wm/shell/startingsurface/StartingWindowController;)V

    const-class p0, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    invoke-static {v1, p0}, Lcom/android/wm/shell/startingsurface/DummyClassHelper;->createSafeCallProxy(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    sput-object p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    :cond_23
    monitor-exit v0

    goto :goto_28

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_25

    throw p0

    :cond_28
    :goto_28
    sget-object p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    return-object p0
.end method

.method private static synthetic lambda$setContentViewBackground$0(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-virtual {p0, p1}, Landroid/window/SplashScreenView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private setContentViewBackground(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_13

    if-nez p2, :cond_5

    goto :goto_13

    :cond_5
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mStartingWindowController:Lcom/android/wm/shell/startingsurface/StartingWindowController;

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/StartingWindowController;->getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;

    move-result-object p0

    new-instance v0, Lcom/android/wm/shell/startingsurface/d0;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/startingsurface/d0;-><init>(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p0, v0}, Lcom/android/wm/shell/common/ShellExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_13
    :goto_13
    return-void
.end method

.method private updateOrCreatePreviewInfo(Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/window/SplashScreenView;)Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;
    .registers 6

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;

    if-nez v1, :cond_12

    new-instance v1, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;

    invoke-direct {v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;-><init>()V

    :cond_12
    invoke-virtual {v1, p2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->setPreviewBitmapIfPresent(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, p3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->setContentViewIfPresent(Landroid/window/SplashScreenView;)V

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoCache:Landroid/util/LruCache;

    invoke-virtual {p0, p1, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method


# virtual methods
.method public adjustSuggestedWindowType(Landroid/content/Context;Landroid/window/StartingWindowInfo;I)I
    .registers 10
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const-class v0, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object p2, p2, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {v0, p2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/OplusStartingWindowExtendedInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_19

    const-string p0, "adjustSuggestedWindowType: extendedInfo is null!"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :cond_19
    sget-boolean v2, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->CAN_DISABLE_PRELOAD_SPLASH:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_24

    iget-boolean v2, v0, Landroid/window/OplusStartingWindowExtendedInfo;->b:Z

    if-nez v2, :cond_24

    move v2, v3

    goto :goto_25

    :cond_24
    move v2, v1

    :goto_25
    if-nez v2, :cond_8f

    iget-boolean v2, v0, Landroid/window/OplusStartingWindowExtendedInfo;->c:Z

    if-nez v2, :cond_30

    iget-boolean v2, v0, Landroid/window/OplusStartingWindowExtendedInfo;->e:Z

    if-nez v2, :cond_30

    goto :goto_8f

    :cond_30
    sget-object v2, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    invoke-interface {v2, p3, v0}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->shouldForceUseSolidColorSplashScreen(ILandroid/window/OplusStartingWindowExtendedInfo;)Z

    move-result v2

    if-eqz v2, :cond_42

    const-string p0, "adjustSuggestedWindowType: use solid color splash screen for %s"

    new-array p1, v3, [Ljava/lang/Object;

    aput-object v0, p1, v1

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3

    :cond_42
    iget-object v2, v0, Landroid/window/OplusStartingWindowExtendedInfo;->a:Landroid/os/IBinder;

    new-instance v4, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    invoke-direct {v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;-><init>()V

    invoke-static {p1, v4}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->getWindowAttrs(Landroid/content/Context;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    iget-object p1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_4f
    iget-object v5, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsMap:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1
    :try_end_55
    .catchall {:try_start_4f .. :try_end_55} :catchall_8c

    invoke-static {v4}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->isWindowAttrsDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Z

    move-result p1

    const/4 v4, 0x2

    const/4 v5, 0x4

    if-eqz p1, :cond_79

    iget-boolean p1, v0, Landroid/window/OplusStartingWindowExtendedInfo;->b:Z

    if-eqz p1, :cond_66

    iget-object p1, v0, Landroid/window/OplusStartingWindowExtendedInfo;->d:Landroid/graphics/Bitmap;

    invoke-direct {p0, v2, p1, p2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->updateOrCreatePreviewInfo(Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/window/SplashScreenView;)Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;

    :cond_66
    const-string p0, "adjustSuggestedWindowType: extendedInfo=%s, appToken=%s, originType=%d"

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v0, p1, v1

    aput-object v2, p1, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v4

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    return v5

    :cond_79
    iget-boolean p0, v0, Landroid/window/OplusStartingWindowExtendedInfo;->e:Z

    if-eqz p0, :cond_8b

    if-ne p3, v5, :cond_8b

    const-string p0, "adjustSuggestedWindowType: change type from legacy to normal extendedInfo=%s, appToken=%s"

    new-array p1, v4, [Ljava/lang/Object;

    aput-object v0, p1, v1

    aput-object v2, p1, v3

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    return v3

    :cond_8b
    return p3

    :catchall_8c
    move-exception p0

    :try_start_8d
    monitor-exit p1
    :try_end_8e
    .catchall {:try_start_8d .. :try_end_8e} :catchall_8c

    throw p0

    :cond_8f
    :goto_8f
    const-string p0, "adjustSuggestedWindowType: skip no-system app and no-exception list app"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogD(Ljava/lang/String;[Ljava/lang/Object;)V

    return p3
.end method

.method public getIconExt(Landroid/content/Context;Landroid/content/pm/ActivityInfo;I)Landroid/graphics/drawable/Drawable;
    .registers 10
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->getIconExt(Landroid/content/Context;Landroid/content/pm/ActivityInfo;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public getIconExt(Landroid/content/Context;Landroid/content/pm/ActivityInfo;IZZ)Landroid/graphics/drawable/Drawable;
    .registers 8

    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->getIconResource()I

    move-result p0

    invoke-static {p2, p4, p5}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->needKeepStyleWithLauncherIcon(Landroid/content/pm/ActivityInfo;ZZ)Z

    move-result p4

    if-nez p4, :cond_44

    if-eqz p3, :cond_44

    if-eqz p0, :cond_44

    :try_start_e
    const-string p4, "getIconExt: activityInfo=%s,  iconDpi=%s"

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p5, v0

    const/4 v0, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p5, v0

    invoke-static {p4, p5}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p4

    iget-object p5, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p4, p5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object p4

    invoke-virtual {p4, p0, p3}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_2e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_2e} :catch_2f
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_e .. :try_end_2e} :catch_2f

    goto :goto_45

    :catch_2f
    move-exception p0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getIconExt error:"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    :cond_44
    const/4 p0, 0x0

    :goto_45
    if-nez p0, :cond_4f

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :cond_4f
    return-object p0
.end method

.method public getReviseStartingWindowType(ILandroid/window/StartingWindowInfo;)I
    .registers 3
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    if-eqz p2, :cond_26

    const/4 p0, 0x4

    if-eq p1, p0, :cond_6

    goto :goto_26

    :cond_6
    const-class p0, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object p2, p2, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/OplusStartingWindowExtendedInfo;

    if-eqz p0, :cond_25

    iget-boolean p0, p0, Landroid/window/OplusStartingWindowExtendedInfo;->b:Z

    if-nez p0, :cond_25

    sget-boolean p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->CAN_DISABLE_PRELOAD_SPLASH:Z

    if-eqz p0, :cond_25

    const-string p0, "getReviseStartingWindowType support in LightOS"

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_25
    return p1

    :cond_26
    :goto_26
    const-string p0, "getReviseStartingWindowType not support, windowInfo is null"

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return p1
.end method

.method public getThemeBackgroundColor(Landroid/content/Context;ILandroid/window/StartingWindowInfo;)I
    .registers 5

    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->isNightMode(Landroid/window/StartingWindowInfo;)Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1, p3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p0, p3

    const-string p2, "getThemeBackgroundColor: originColor=%s"

    invoke-static {p2, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, -0x1

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->makeDark(Landroid/content/Context;I)I

    move-result p0

    return p0

    :cond_21
    return p2
.end method

.method public getWindowAttrsIfPresent(Landroid/window/StartingWindowInfo;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Z
    .registers 5
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->getAppToken(Landroid/window/StartingWindowInfo;)Landroid/os/IBinder;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_b
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    if-eqz p0, :cond_22

    const-string p1, "getWindowAttrsIfPresent: get cached attrs"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->copyWindowAttrsFrom(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)V

    const/4 p0, 0x1

    monitor-exit v1

    return p0

    :cond_22
    monitor-exit v1

    return v0

    :catchall_24
    move-exception p0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw p0
.end method

.method public handleSplashScreenView(Landroid/content/Context;Landroid/window/SplashScreenView;Landroid/window/StartingWindowInfo;I)V
    .registers 15
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    if-eqz p2, :cond_ef

    if-nez p3, :cond_6

    goto/16 :goto_ef

    :cond_6
    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->getAppToken(Landroid/window/StartingWindowInfo;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_12

    const-string p0, "handleSplashScreenView: appToken is null"

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return-void

    :cond_12
    const-class v1, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object v2, p3, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object v3, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;

    if-eqz v1, :cond_ea

    iget-boolean v4, v1, Landroid/window/OplusStartingWindowExtendedInfo;->c:Z

    if-nez v4, :cond_32

    iget-boolean v4, v1, Landroid/window/OplusStartingWindowExtendedInfo;->e:Z

    if-eqz v4, :cond_ea

    :cond_32
    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->isWindowAttrsDefault(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;)Z

    move-result v4

    if-nez v4, :cond_3a

    goto/16 :goto_ea

    :cond_3a
    sget-object v4, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->sInstance:Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;

    invoke-interface {v4, p4, v1}, Lcom/android/wm/shell/startingsurface/IOplusShellStartingWindowManager;->shouldForceUseSolidColorSplashScreen(ILandroid/window/OplusStartingWindowExtendedInfo;)Z

    move-result p4

    if-eqz p4, :cond_48

    const-string p0, "handleSplashScreenView: force use solid color splash screen, do not update content view background"

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return-void

    :cond_48
    iget-boolean p4, v1, Landroid/window/OplusStartingWindowExtendedInfo;->c:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mNeedHandleStartingWindowBar:Z

    invoke-direct {p0, v0, v2, p2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->updateOrCreatePreviewInfo(Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/window/SplashScreenView;)Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    iget v3, v3, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$SplashScreenWindowAttrs;->mWindowBgResId:I

    if-eqz v3, :cond_5d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_63

    :cond_5d
    const-string v3, "handleSplashScreenView: windowAttrs.mWindowBgResId is 0"

    invoke-static {v3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    move-object v3, v2

    :goto_63
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_69

    move v7, v6

    goto :goto_6a

    :cond_69
    move v7, v5

    :goto_6a
    if-eqz v7, :cond_76

    instance-of v8, v3, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v8, :cond_74

    instance-of v8, v3, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v8, :cond_76

    :cond_74
    move v8, v6

    goto :goto_77

    :cond_76
    move v8, v5

    :goto_77
    xor-int/lit8 v9, v7, 0x1

    if-eqz v4, :cond_86

    if-nez v8, :cond_86

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-boolean v6, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mNeedHandleStartingWindowBar:Z

    move v9, v5

    goto :goto_b7

    :cond_86
    if-eqz v7, :cond_b7

    instance-of v4, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v4, :cond_8e

    move-object v2, v3

    goto :goto_96

    :cond_8e
    instance-of v4, v3, Landroid/graphics/drawable/StateListDrawable;

    if-eqz v4, :cond_96

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    :cond_96
    :goto_96
    if-eqz v2, :cond_b7

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v4

    if-eqz v4, :cond_b6

    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->isNightMode(Landroid/window/StartingWindowInfo;)Z

    move-result v4

    if-eqz v4, :cond_b7

    iget-boolean v1, v1, Landroid/window/OplusStartingWindowExtendedInfo;->c:Z

    if-eqz v1, :cond_b7

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->makeDark(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    goto :goto_b7

    :cond_b6
    move v9, v6

    :cond_b7
    :goto_b7
    if-eqz v9, :cond_d3

    const/4 v1, -0x1

    invoke-static {p1, v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->makeDark(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->isNightMode(Landroid/window/StartingWindowInfo;)Z

    move-result p3

    if-eqz p3, :cond_cb

    new-instance p3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p3, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v3, p3

    goto :goto_d1

    :cond_cb
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    move-object v3, p1

    :goto_d1
    iput-boolean v6, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mNeedHandleStartingWindowBar:Z

    :cond_d3
    invoke-direct {p0, p2, v3}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->setContentViewBackground(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aput-object v0, p0, v5

    aput-object p4, p0, v6

    const/4 p1, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    aput-object p2, p0, p1

    const-string p1, "handleSplashScreenView: appToken=%s, previewInfo=%s, buildNewColorDrawable=%b"

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_ea
    :goto_ea
    const-string p0, "handleSplashScreenView: normal third app or no-default"

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    :cond_ef
    :goto_ef
    return-void
.end method

.method public handleWindowBarIfNeeded(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 5
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3c

    if-nez p2, :cond_6

    goto :goto_3c

    :cond_6
    const-class p1, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object v1, p2, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/OplusStartingWindowExtendedInfo;

    if-eqz p1, :cond_38

    iget-boolean v1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mNeedHandleStartingWindowBar:Z

    if-eqz v1, :cond_38

    iget-boolean v1, p1, Landroid/window/OplusStartingWindowExtendedInfo;->e:Z

    if-nez v1, :cond_22

    iget-boolean p1, p1, Landroid/window/OplusStartingWindowExtendedInfo;->c:Z

    if-eqz p1, :cond_38

    :cond_22
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleWindowBarIfNeeded true, windowInfo="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    const/4 p1, 0x1

    goto :goto_39

    :cond_38
    move p1, v0

    :goto_39
    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mNeedHandleStartingWindowBar:Z

    return p1

    :cond_3c
    :goto_3c
    return v0
.end method

.method public isExceptionListApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 4
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    :cond_6
    const-class p1, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object v0, p2, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/OplusStartingWindowExtendedInfo;

    if-eqz p1, :cond_2f

    iget-boolean p1, p1, Landroid/window/OplusStartingWindowExtendedInfo;->e:Z

    if-eqz p1, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isExceptionListApp support, windowInfo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_2f
    return p0

    :cond_30
    :goto_30
    const-string p1, "isExceptionListApp not support, windowInfo or context is null"

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return p0
.end method

.method public isSupportSplashScreenPreview(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 4
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    :cond_6
    const-class p1, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object v0, p2, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/OplusStartingWindowExtendedInfo;

    if-eqz p1, :cond_2f

    iget-boolean p1, p1, Landroid/window/OplusStartingWindowExtendedInfo;->b:Z

    if-eqz p1, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSupportSplashScreenPreview support, windowInfo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_2f
    return p0

    :cond_30
    :goto_30
    const-string p1, "isSupportSplashScreenPreview not support, windowInfo or context is null"

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return p0
.end method

.method public isSystemApp(Landroid/content/Context;Landroid/window/StartingWindowInfo;)Z
    .registers 4
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_30

    if-nez p2, :cond_6

    goto :goto_30

    :cond_6
    const-class p1, Landroid/window/OplusStartingWindowExtendedInfo;

    iget-object v0, p2, Landroid/window/StartingWindowInfo;->n:Ld/a;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->typeCasting(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/window/OplusStartingWindowExtendedInfo;

    if-eqz p1, :cond_2f

    iget-boolean p1, p1, Landroid/window/OplusStartingWindowExtendedInfo;->c:Z

    if-eqz p1, :cond_2f

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isSystemApp support, windowInfo="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    const/4 p0, 0x1

    :cond_2f
    return p0

    :cond_30
    :goto_30
    const-string p1, "isSystemApp not support, windowInfo or context is null"

    invoke-static {p1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->logD(Ljava/lang/String;)V

    return p0
.end method

.method public onWindowRemoved(Landroid/os/IBinder;)V
    .registers 5

    const-string/jumbo v0, "onWindowRemoved: appToken=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoMapLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_f
    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mPreviewInfoCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_f .. :try_end_15} :catchall_22

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_18
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->mSplashWindowAttrsMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v1
    :try_end_21
    .catchall {:try_start_18 .. :try_end_21} :catchall_1f

    throw p0

    :catchall_22
    move-exception p0

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public shouldForceUseSolidColorSplashScreen(ILandroid/window/OplusStartingWindowExtendedInfo;)Z
    .registers 3
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    const/4 p0, 0x3

    if-ne p1, p0, :cond_9

    iget-boolean p0, p2, Landroid/window/OplusStartingWindowExtendedInfo;->f:Z

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public updateStartingWindowExtendedInfo(Landroid/window/OplusStartingWindowExtendedInfo;Landroid/os/IBinder;)V
    .registers 7
    .annotation runtime Lcom/android/wm/shell/startingsurface/DummyClassSafeCall;
    .end annotation

    if-eqz p2, :cond_3a

    if-nez p1, :cond_5

    goto :goto_3a

    :cond_5
    iget-boolean v0, p1, Landroid/window/OplusStartingWindowExtendedInfo;->b:Z

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v0, p1, Landroid/window/OplusStartingWindowExtendedInfo;->d:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->updateOrCreatePreviewInfo(Landroid/os/IBinder;Landroid/graphics/Bitmap;Landroid/window/SplashScreenView;)Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    aput-object v1, v2, p1

    const-string/jumbo p1, "updateStartingWindowExtendedInfo: appToken=%s, extendedInfo=%s, previewInfo=%s"

    invoke-static {p1, v2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2e

    new-array p0, v3, [Ljava/lang/Object;

    const-string/jumbo p1, "previewBitmap is null"

    invoke-static {p1, p0}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowUtils;->formatLogDIfNeeded(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2e
    invoke-virtual {v1}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager$OplusSplashScreenPreviewInfo;->getContentView()Landroid/window/SplashScreenView;

    move-result-object p1

    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/startingsurface/OplusShellStartingWindowManager;->setContentViewBackground(Landroid/window/SplashScreenView;Landroid/graphics/drawable/Drawable;)V

    :cond_3a
    :goto_3a
    return-void
.end method
