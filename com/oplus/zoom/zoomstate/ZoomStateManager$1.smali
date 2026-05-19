.class Lcom/oplus/zoom/zoomstate/ZoomStateManager$1;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/zoomstate/ZoomStateManager;->registerUserChangeBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/zoomstate/ZoomStateManager;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/ZoomStateManager$1;->this$0:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    if-eqz p2, :cond_2b

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "onReceive, intent = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ZoomStateManager"

    invoke-static {p2, p1}, Lcom/oplus/zoom/common/LogD;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/zoom/zoomstate/ZoomStateManager$1;->this$0:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->access$000(Lcom/oplus/zoom/zoomstate/ZoomStateManager;ZZ)V

    :cond_2b
    return-void
.end method
