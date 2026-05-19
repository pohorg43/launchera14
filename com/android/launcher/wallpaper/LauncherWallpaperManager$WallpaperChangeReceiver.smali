.class public final Lcom/android/launcher/wallpaper/LauncherWallpaperManager$WallpaperChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/wallpaper/LauncherWallpaperManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "WallpaperChangeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$WallpaperChangeReceiver;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string p2, "Wallpapers"

    const-string v0, "LauncherWallpaperManager"

    const-string v1, "Wallpaper change received"

    invoke-static {p2, v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/wallpaper/WallpaperLoader;->Companion:Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;

    invoke-virtual {p2, p1}, Lcom/android/launcher/wallpaper/WallpaperLoader$Companion;->isFlipDeviceClosed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    return-void

    :cond_12
    sget-object p1, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->INSTANCE:Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;

    invoke-virtual {p1}, Lcom/android/launcher/wallpaper/WallpaperUpdateFuture;->resetLauncherRefreshState()V

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$WallpaperChangeReceiver;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->access$getMWallpaperHolderList$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_21
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_31

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/wallpaper/WallpaperHolder;

    invoke-interface {p1}, Lcom/android/launcher/wallpaper/WallpaperHolder;->onWallpaperChanged()V

    goto :goto_21

    :cond_31
    return-void
.end method
