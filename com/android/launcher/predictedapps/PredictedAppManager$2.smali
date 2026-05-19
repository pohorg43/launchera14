.class Lcom/android/launcher/predictedapps/PredictedAppManager$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/predictedapps/PredictedAppManager;->registerUserRemovedBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/launcher/predictedapps/PredictedAppManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher/predictedapps/PredictedAppManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/predictedapps/PredictedAppManager$2;->this$0:Lcom/android/launcher/predictedapps/PredictedAppManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.intent.extra.user_handle"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/android/launcher/predictedapps/PredictedAppManager$2;->this$0:Lcom/android/launcher/predictedapps/PredictedAppManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher/predictedapps/PredictedAppManager;->onUserRemoved(I)V

    :cond_e
    return-void
.end method
