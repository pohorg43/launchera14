.class public final synthetic Lcom/android/launcher/wallpaper/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/launcher/wallpaper/WallpaperLoader;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher/wallpaper/WallpaperLoader;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/wallpaper/c;->a:Lcom/android/launcher/wallpaper/WallpaperLoader;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/c;->a:Lcom/android/launcher/wallpaper/WallpaperLoader;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/WallpaperLoader$mDetermineToLoadWallpaperRunnable$2;->a(Lcom/android/launcher/wallpaper/WallpaperLoader;)V

    return-void
.end method
