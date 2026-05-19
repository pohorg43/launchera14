.class public final Lcom/android/launcher/wallpaper/BlurCache;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;
    }
.end annotation


# instance fields
.field private mBlurredWallpaper:Landroid/graphics/Bitmap;

.field private mOnBlurCacheChangedListener:Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;

.field private obj:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/wallpaper/BlurCache;->obj:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getBlurredWallpaper()Landroid/graphics/Bitmap;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/BlurCache;->mBlurredWallpaper:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public final recycleCache()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/wallpaper/BlurCache;->obj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/android/launcher/wallpaper/BlurCache;->mBlurredWallpaper:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/common/util/BitmapUtils;->isBitmapLegal(Landroid/graphics/Bitmap;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/launcher/wallpaper/BlurCache;->mBlurredWallpaper:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_12

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_12
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher/wallpaper/BlurCache;->mBlurredWallpaper:Landroid/graphics/Bitmap;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    :cond_15
    monitor-exit v0

    return-void

    :catchall_17
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setBlurredWallpaper(Landroid/graphics/Bitmap;Z)V
    .registers 3

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/android/launcher/wallpaper/BlurCache;->mBlurredWallpaper:Landroid/graphics/Bitmap;

    if-nez p2, :cond_13

    :cond_6
    iget-object p2, p0, Lcom/android/launcher/wallpaper/BlurCache;->obj:Ljava/lang/Object;

    monitor-enter p2

    :try_start_9
    iput-object p1, p0, Lcom/android/launcher/wallpaper/BlurCache;->mBlurredWallpaper:Landroid/graphics/Bitmap;

    iget-object p0, p0, Lcom/android/launcher/wallpaper/BlurCache;->mOnBlurCacheChangedListener:Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;

    if-eqz p0, :cond_12

    invoke-interface {p0, p1}, Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;->onBlurBitmapChanged(Landroid/graphics/Bitmap;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_14

    :cond_12
    monitor-exit p2

    :cond_13
    return-void

    :catchall_14
    move-exception p0

    monitor-exit p2

    throw p0
.end method

.method public final setOnBlurCacheChangedListener(Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/BlurCache;->mOnBlurCacheChangedListener:Lcom/android/launcher/wallpaper/BlurCache$OnBlurCacheChangedListener;

    return-void
.end method
