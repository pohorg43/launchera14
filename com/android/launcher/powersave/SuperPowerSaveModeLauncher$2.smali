.class Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->lambda$showAlertDialog$4(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

.field public final synthetic val$dialog:Landroid/content/DialogInterface;


# direct methods
.method public constructor <init>(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/content/DialogInterface;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$2;->this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    iput-object p2, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$2;->val$dialog:Landroid/content/DialogInterface;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$2;->this$0:Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;

    iget-object p0, p0, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher$2;->val$dialog:Landroid/content/DialogInterface;

    invoke-static {v0, p0}, Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;->access$300(Lcom/android/launcher/powersave/SuperPowerSaveModeLauncher;Landroid/content/DialogInterface;)V

    return-void
.end method
