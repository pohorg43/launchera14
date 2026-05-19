.class Lcom/oplus/zoom/common/ZoomSettingDispatcher$2;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/zoom/common/ZoomSettingDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/common/ZoomSettingDispatcher;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$2;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mUserBroadcastReceiver, intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZoomSettingObserver"

    invoke-static {v1, v0}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_28

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    goto :goto_28

    :cond_23
    iget-object p0, p0, Lcom/oplus/zoom/common/ZoomSettingDispatcher$2;->this$0:Lcom/oplus/zoom/common/ZoomSettingDispatcher;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/zoom/common/ZoomSettingDispatcher;->notifyBroadCastReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_28
    :goto_28
    return-void
.end method
