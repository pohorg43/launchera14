.class public final Lcom/android/launcher/wallpaper/WallpaperBlur;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/wallpaper/WallpaperHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;

.field private static final DEBUG:Z

.field private static final PREPROCESS_DISALLOW:Z = false

.field private static final TAG:Ljava/lang/String; = "WallpaperBlur"

.field public static final WALLPAPER_SCALE_FACTOR:F = 0.2f


# instance fields
.field private mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/wallpaper/WallpaperBlur;->Companion:Lcom/android/launcher/wallpaper/WallpaperBlur$Companion;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher/wallpaper/WallpaperBlur;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher/wallpaper/BlurCache;

    invoke-direct {v0}, Lcom/android/launcher/wallpaper/BlurCache;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    return-void
.end method

.method public static final synthetic access$getMBlurCache$p(Lcom/android/launcher/wallpaper/WallpaperBlur;)Lcom/android/launcher/wallpaper/BlurCache;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    return-object p0
.end method

.method private final createScaledWallpaperForBlur(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 7

    const-string p0, "WallpaperBlur"

    const-string v0, "createScaledWallpaperForBlur: create scaled wallpaper for blur start."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "WallpaperBlur"

    const-string v0, "create scaled wallpaper for blur start."

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "createScaledWallpaperForBlur"

    const-wide/16 v0, 0x8

    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance p0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x4

    iput v2, p0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v2, 0x0

    if-nez p2, :cond_24

    invoke-static {p1, p0, v2}, Lcom/android/launcher/wallpaper/WallpaperUtil;->getStaticWallpaper(Landroid/content/Context;Landroid/graphics/BitmapFactory$Options;Landroid/app/IWallpaperManagerCallback;)Landroid/graphics/Bitmap;

    move-result-object p2

    :cond_24
    if-nez p2, :cond_30

    const-string p0, "Wallpapers"

    const-string p1, "WallpaperBlur"

    const-string p2, "Fail to create scaled wallpaper fo blur as we get null wallpaper from system"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_30
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    if-lez p0, :cond_8e

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    if-gtz p0, :cond_3d

    goto :goto_8e

    :cond_3d
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    const p1, 0x3e4ccccd  # 0.2f

    mul-float/2addr p0, p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, p1

    :try_start_4c
    monitor-enter p2
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_6b

    :try_start_4d
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_5b

    float-to-int p0, p0

    float-to-int p1, v3

    const/4 v3, 0x0

    invoke-static {p2, p0, p1, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_64

    :cond_5b
    const-string p0, "Wallpapers"

    const-string p1, "WallpaperBlur"

    const-string v3, "access free bitmap"

    invoke-static {p0, p1, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_64
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_66
    .catchall {:try_start_4d .. :try_end_66} :catchall_68

    :try_start_66
    monitor-exit p2

    goto :goto_70

    :catchall_68
    move-exception p0

    monitor-exit p2

    throw p0
    :try_end_6b
    .catchall {:try_start_66 .. :try_end_6b} :catchall_6b

    :catchall_6b
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_70
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_81

    const-string p1, "WallpaperBlur"

    const-string p2, "createScaledBitmap error = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/android/common/config/l;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_81
    const-string p0, "Wallpapers"

    const-string p1, "WallpaperBlur"

    const-string p2, "create scaled wallpaper for blur end"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-object v2

    :cond_8e
    :goto_8e
    const-string p0, "Wallpapers"

    const-string p1, "WallpaperBlur"

    const-string v0, "Got error wallpaper, width = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method private final getScaledLiveWallpaper(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;
    .registers 6

    const-string p0, "Wallpapers"

    const-string v0, "WallpaperBlur"

    const-string v1, "Get scaled live wallpaper start."

    invoke-static {p0, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v1, 0x8

    const-string v3, "getScaledLiveWallpaper"

    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const v3, 0x3e4ccccd  # 0.2f

    invoke-static {p1, v3}, Lcom/android/launcher/wallpaper/WallpaperUtil;->screenshotWallpaper(Lcom/android/launcher/Launcher;F)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string v3, "Get scaled live wallpaper end"

    invoke-static {p0, v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p1
.end method

.method private final getScaledWallpaper(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 p0, 0x0

    const-string v0, "WallpaperBlur"

    if-eqz p2, :cond_a3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_d

    goto/16 :goto_a3

    :cond_d
    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v1, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const v2, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, v2

    float-to-int p1, p1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    float-to-int v1, v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_aa

    sget-boolean v6, Lcom/android/launcher/wallpaper/WallpaperBlur;->DEBUG:Z

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_7b

    const-string v6, "getScaledWallpaper, wallpaperWidth = "

    const-string v9, ", wallpaperHeight = "

    const-string v10, ",createBitmapWidth = "

    invoke-static {v6, v1, v9, v2, v10}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, ",  createBitmapHeight = "

    const-string v10, ",offset = ["

    invoke-static {v6, v3, v9, v4, v10}, Landroidx/constraintlayout/core/c;->a(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    aget v9, v5, v8

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v9, 0x2c

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget v9, v5, v7

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v9, 0x5d

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v9, "Wallpapers"

    invoke-static {v9, v0, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7b
    const/4 v0, 0x0

    if-ge v3, v1, :cond_85

    sub-int v6, v1, v3

    int-to-float v6, v6

    aget v9, v5, v8

    mul-float/2addr v6, v9

    goto :goto_86

    :cond_85
    move v6, v0

    :goto_86
    if-ge v4, v2, :cond_8e

    sub-int v0, v2, v4

    int-to-float v0, v0

    aget v5, v5, v7

    mul-float/2addr v0, v5

    :cond_8e
    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/graphics/Rect;

    float-to-int v6, v6

    float-to-int v0, v0

    invoke-direct {v7, v6, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v8, v8, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v5, p2, v7, v0, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object p1

    :cond_a3
    :goto_a3
    const-string p1, "Get illegal bitmap while getScaledWallpaper"

    invoke-static {v0, p1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    nop

    :array_aa
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method private final getWallpaperBitmap(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;
    .registers 3

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getScaledLiveWallpaper(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->createScaledWallpaperForBlur(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final isScaleBitmapFitScreen(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Z
    .registers 7

    const/4 p0, 0x0

    if-nez p2, :cond_4

    return p0

    :cond_4
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    const v1, 0x3e4ccccd  # 0.2f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const-string/jumbo v1, "scaleWidth = "

    const-string v2, ", scaleHeight = "

    const-string v3, ", bitmapWidth = "

    invoke-static {v1, p1, v2, v0, v3}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", bitmapHeight = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Wallpapers"

    const-string v3, "WallpaperBlur"

    invoke-static {v2, v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    if-ne p1, v1, :cond_58

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    if-ne v0, p1, :cond_58

    const/4 p0, 0x1

    :cond_58
    return p0
.end method


# virtual methods
.method public final getBlurredWallpaper(Lcom/android/launcher/Launcher;FLcom/android/launcher3/popup/EffectResultCallbackImp;)V
    .registers 6

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "effectResultCallback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/BlurCache;->getBlurredWallpaper()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_25

    const-string p0, "Wallpapers"

    const-string p1, "WallpaperBlur"

    const-string p2, "Found blurred wallpaper from cache"

    invoke-static {p0, p1, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Lcom/android/launcher3/popup/EffectResultCallbackImp;->onEffectDone(Landroid/graphics/Bitmap;)V

    return-void

    :cond_25
    invoke-direct {p0, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getWallpaperBitmap(Lcom/android/launcher/Launcher;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2c

    return-void

    :cond_2c
    invoke-direct {p0, p1, v0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getScaledWallpaper(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_33

    return-void

    :cond_33
    sget-object v0, Lcom/android/launcher3/popup/PopupBlurHelper;->INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

    invoke-virtual {v0, p0, p2, p1, p3}, Lcom/android/launcher3/popup/PopupBlurHelper;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    return-void
.end method

.method public onWallpaperChanged()V
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/WallpaperBlur;->recycleWallpaperBlurCache()V

    return-void
.end method

.method public final preprocessBlurredWallpaper(Landroid/graphics/Bitmap;Lcom/android/launcher/Launcher;)V
    .registers 6

    const-string/jumbo v0, "wallpaperBitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/common/util/PlatformLevelUtils;->isBlurUnavailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "WallpaperBlur"

    if-eqz v0, :cond_19

    const-string p0, "Can not preprocess blurred wallpaper as gaussian level is low."

    invoke-static {v1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->isBitmapLegal(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-nez v0, :cond_25

    const-string p0, "Can not preprocess blurred wallpaper as we get illegal bitmap"

    invoke-static {v1, p0}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    invoke-virtual {p2}, Lcom/android/launcher/Launcher;->getWallpaperManager()Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    move-result-object v0

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->isLiveWallpaper()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto :goto_42

    :cond_3e
    invoke-direct {p0, p2, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->createScaledWallpaperForBlur(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_42
    invoke-direct {p0, p2, p1}, Lcom/android/launcher/wallpaper/WallpaperBlur;->getScaledWallpaper(Lcom/android/launcher/Launcher;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_49

    return-void

    :cond_49
    sget-object v0, Lcom/android/launcher3/popup/PopupBlurHelper;->INSTANCE:Lcom/android/launcher3/popup/PopupBlurHelper;

    const v1, 0x3f333333  # 0.7f

    new-instance v2, Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/wallpaper/WallpaperBlur$preprocessBlurredWallpaper$1;-><init>(Lcom/android/launcher/wallpaper/WallpaperBlur;)V

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/android/launcher3/popup/PopupBlurHelper;->blurBitmap(Landroid/graphics/Bitmap;FLandroid/content/Context;Lcom/android/launcher3/popup/EffectResultCallbackImp;)V

    return-void
.end method

.method public final recycleWallpaperBlurCache()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    invoke-virtual {p0}, Lcom/android/launcher/wallpaper/BlurCache;->recycleCache()V

    return-void
.end method

.method public final setBlurCacheListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    invoke-virtual {p0, p1}, Lcom/android/launcher/wallpaper/BlurCache;->setOnBlurCacheChangedListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V

    return-void
.end method

.method public final setWallpaperBlurToCache(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher/wallpaper/WallpaperBlur;->mBlurCache:Lcom/android/launcher/wallpaper/BlurCache;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher/wallpaper/BlurCache;->setBlurredWallpaper(Landroid/graphics/Bitmap;Z)V

    return-void
.end method
