.class Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$AvailableTimeObserver;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AvailableTimeObserver"
.end annotation


# instance fields
.field private mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$AvailableTimeObserver;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$AvailableTimeObserver;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    if-eqz p0, :cond_10

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->access$100(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V

    :cond_10
    return-void
.end method
