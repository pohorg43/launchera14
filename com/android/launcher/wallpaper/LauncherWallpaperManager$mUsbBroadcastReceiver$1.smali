.class public final Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mUsbBroadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/wallpaper/LauncherWallpaperManager;-><init>(Lcom/android/launcher/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mUsbBroadcastReceiver$1;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mUsbBroadcastReceiver$1;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "connected"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    invoke-static {v0, p2}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->access$setConnect$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;Z)V

    :cond_2b
    const-string/jumbo p2, "onReceive, action="

    const-string v0, ", isConnect="

    invoke-static {p2, p1, v0}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher/wallpaper/LauncherWallpaperManager$mUsbBroadcastReceiver$1;->this$0:Lcom/android/launcher/wallpaper/LauncherWallpaperManager;

    invoke-static {p0}, Lcom/android/launcher/wallpaper/LauncherWallpaperManager;->access$isConnect$p(Lcom/android/launcher/wallpaper/LauncherWallpaperManager;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Wallpapers"

    const-string p2, "LauncherWallpaperManager"

    invoke-static {p1, p2, p0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
