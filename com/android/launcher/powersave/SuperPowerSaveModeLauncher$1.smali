.class Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$1;->this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    if-eqz p2, :cond_27

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_21

    const-string p2, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_27

    :cond_1a
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$1;->this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->access$000(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Z)V

    goto :goto_27

    :cond_21
    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$1;->this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->access$000(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Z)V

    :cond_27
    :goto_27
    return-void
.end method
