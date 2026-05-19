.class public final Lcom/android/launcher/wallpaper/LauncherWallpaperManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/WallpaperManager$OnColorsChangedListener;
.implements Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/LauncherWallpaperManager$WallpaperChangeReceiver;,
        Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherWallpaperManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherWallpaperManager.kt\ncom/android/launcher/wallpaper/LauncherWallpaperManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,259:1\n1#2:260\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;

.field private static final DELAY_TO_GC_MEMORY:J = 0x1388L

.field private static final DELAY_TO_USER_PRESENT:J = 0xbb8L

.field public static final LAUNCHER_TEXT_COLOR_VALUE:Ljava/lang/String; = "launcher_text_appearance"

.field private static final TAG:Ljava/lang/String; = "LauncherWallpaperManager"

.field private static final TRIM_SYSTEM_MEMORY_GC:I = 0x28


# instance fields
.field private isConnect:Z

.field private mOplusActivityManager:Landroid/app/OplusActivityManager;

.field private final mUsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

.field private final mWallpaperChangeReceiver$delegate:Lh4/f;

.field private mWallpaperHolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/wallpaper/WallpaperHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

.field private mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

.field private final usbStateRunnable:Ljava/lang/Runnable;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->Companion:Lcom/android/launcher/wallpaper/LauncherWallpaperManager$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    sget-object v0, Lkotlin/a;->c:Lkotlin/a;

    new-instance v1, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mWallpaperChangeReceiver$2;

    invoke-direct {v1, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mWallpaperChangeReceiver$2;-><init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    invoke-static {v0, v1}, Lh4/g;->a(Lkotlin/a;Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperChangeReceiver$delegate:Lh4/f;

    new-instance v0, Landroid/app/OplusActivityManager;

    invoke-direct {v0}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    new-instance v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mUsbBroadcastReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mUsbBroadcastReceiver$1;-><init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroidx/core/widget/a;

    invoke-direct {v0, p0}, Landroidx/core/widget/a;-><init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->usbStateRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/WallpaperBlur;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-direct {v0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;-><init>(Lcom/android/launcher/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-direct {v0, p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher/wallpaper/WallpaperLoader$ILoadSuccess;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->usbStateRunnable$lambda$3(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    return-void
.end method

.method public static final synthetic access$getMUserPresentReceiver$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method public static final synthetic access$getMWallpaperHolderList$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static final synthetic access$isConnect$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isConnect:Z

    return p0
.end method

.method public static final synthetic access$setConnect$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isConnect:Z

    return-void
.end method

.method private final getMWallpaperChangeReceiver()Landroid/content/BroadcastReceiver;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperChangeReceiver$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method private final registerUserPresentReceiver(Landroid/content/Context;)V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isGcWhenUserPresent()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    invoke-static {p1}, Lcom/android/common/util/UserUtils;->isUserUnlocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    new-instance v0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$registerUserPresentReceiver$1;-><init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private final unregisterUsbStateChangeReceiver(Landroid/content/Context;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private final unregisterUserPresentReceiver(Landroid/content/Context;)V
    .registers 3

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isGcWhenUserPresent()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p0, :cond_10

    invoke-static {p1, p0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    :cond_10
    return-void
.end method

.method private static final usbStateRunnable$lambda$3(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 5

    const-string/jumbo v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_6
    const-string v0, "OplusActivityManager#trimSystemMemory"

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mOplusActivityManager:Landroid/app/OplusActivityManager;

    const/16 v0, 0x28

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Landroid/app/OplusActivityManager;->trimSystemMemory(IZ)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_1b

    goto :goto_20

    :catchall_1b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_20
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_2f

    const-string p0, "Wallpapers"

    const-string v0, "LauncherWallpaperManager"

    const-string v1, "The version is old and does not contain the aar package !"

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public final getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V
    .registers 5

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectResultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V

    return-void
.end method

.method public final initTextThemeColor(Lcom/android/launcher/Launcher;)V
    .registers 3

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->initTextThemeColor(Lcom/android/launcher/Launcher;)V

    return-void
.end method

.method public final isChildrenModeWpBright()Ljava/lang/Boolean;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isChildrenModeWpBright()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return-object p0
.end method

.method public final isLiveWallpaper()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->isLiveWallpaper()Z

    move-result p0

    return p0
.end method

.method public final isStatusBarWpBright()Z
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperResolver;->isStatusBarWpBright()Z

    move-result p0

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public onColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 6

    const-string/jumbo v0, "onColorsChanged, "

    const-string v1, "Wallpapers"

    const-string v2, "LauncherWallpaperManager"

    invoke-static {v0, p2, v1, v2}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isChangingFoldState()Z

    move-result v0

    if-eqz v0, :cond_1e

    return-void

    :cond_1e
    const-wide/16 v0, 0x8

    const-string/jumbo v2, "onColorsChanged"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {v2, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setWallBitValue(I)V

    iget-object p2, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p2, p1}, Lcom/android/launcher/wallpaper/WallpaperResolver;->setWallpaperColors(Landroid/app/WallpaperColors;)V

    :cond_34
    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->tryLoadWallpaper(Z)V

    :cond_3f
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final onLauncherDestroy(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->getMWallpaperChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/launcher3/Utilities;->unregisterReceiverSafely(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->unregisterUserPresentReceiver(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->unregisterUsbStateChangeReceiver(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->removeColorsChangeListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    iget-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher/wallpaper/WallpaperHolder;

    invoke-interface {v0}, Lcom/android/launcher/wallpaper/WallpaperHolder;->onDestroy()V

    goto :goto_1d

    :cond_2d
    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperHolderList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final onLauncherResumed()V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->reloadWallpaper(Z)V

    return-void
.end method

.method public final recycleWallpaperBlurCache()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    return-void
.end method

.method public final registerUsbStateChangeReceiver(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mUsbBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerWallpaperChangeReceiver(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->getMWallpaperChangeReceiver()Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {v0, p1, p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->addOnColorsChangedListener(Landroid/content/Context;Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->registerUserPresentReceiver(Landroid/content/Context;)V

    return-void
.end method

.method public final setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V

    return-void
.end method

.method public final setWallpaperBlurToCache(Landroid/graphics/Bitmap;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->setWallpaperBlurToCache(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public final tryLoadWallpaper(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {v0, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader;->determineToLoadWallpaper(Z)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperLoader:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader;->ensureLoadWallpaper()V

    return-void
.end method

.method public wallpaperLoadSuccess(Landroid/graphics/Bitmap;ZLcom/android/launcher/Launcher;)V
    .registers 6

    const-string/jumbo v0, "wallpaperBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWallpaperBrightness(Landroid/graphics/Bitmap;Z)V

    invoke-static {p3}, Lcom/android/launcher3/folder/big/BigFolderUtil;->saveBigFolderBgParameter(Landroid/content/Context;)V

    iget-object p2, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperResolver:Lcom/android/launcher/wallpaper/WallpaperResolver;

    invoke-virtual {p2, p3}, Lcom/android/launcher/wallpaper/WallpaperResolver;->resolveWallpaperColor(Lcom/android/launcher/Launcher;)V

    iget-object p2, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->mWallpaperBlur:Lcom/android/launcher/wallpaper/WallpaperBlur;

    invoke-virtual {p2, p1, p3}, Lcom/android/launcher/wallpaper/WallpaperBlur;->preprocessBlurredWallpaper(Landroid/graphics/Bitmap;Lcom/android/launcher/Launcher;)V

    const-string p2, "Wallpapers"

    const-string v0, "LauncherWallpaperManager"

    const-string/jumbo v1, "recycle wallpaper bitmap"

    invoke-static {p2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter p1

    :try_start_28
    invoke-static {p3}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/WallpaperManager;->forgetLoadedWallpaper()V
    :try_end_2f
    .catchall {:try_start_28 .. :try_end_2f} :catchall_42

    monitor-exit p1

    iget-boolean p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isConnect:Z

    if-eqz p1, :cond_41

    sget-object p1, Lcom/oplus/util/OplusExecutors;->WALLPAPER_MANAGER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {p1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->usbStateRunnable:Ljava/lang/Runnable;

    const-wide/16 p2, 0x1388

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_41
    return-void

    :catchall_42
    move-exception p0

    monitor-exit p1

    throw p0
.end method
