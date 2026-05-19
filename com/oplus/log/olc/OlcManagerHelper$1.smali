.class Lcom/oplus/log/olc/OlcManagerHelper$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/olc/OlcManagerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/olc/OlcManagerHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/log/olc/OlcManagerHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/olc/OlcManagerHelper$1;->this$0:Lcom/oplus/log/olc/OlcManagerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect componentName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OlcManagerHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oplus/log/olc/OlcManagerHelper$1;->this$0:Lcom/oplus/log/olc/OlcManagerHelper;

    invoke-static {p2}, Lcom/oplus/olc/IOplusLogCore$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oplus/olc/IOplusLogCore;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/oplus/log/olc/OlcManagerHelper;->access$002(Lcom/oplus/log/olc/OlcManagerHelper;Lcom/oplus/olc/IOplusLogCore;)Lcom/oplus/olc/IOplusLogCore;

    iget-object p1, p0, Lcom/oplus/log/olc/OlcManagerHelper$1;->this$0:Lcom/oplus/log/olc/OlcManagerHelper;

    invoke-static {p1}, Lcom/oplus/log/olc/OlcManagerHelper;->access$100(Lcom/oplus/log/olc/OlcManagerHelper;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    if-eqz p1, :cond_30

    iget-object p0, p0, Lcom/oplus/log/olc/OlcManagerHelper$1;->this$0:Lcom/oplus/log/olc/OlcManagerHelper;

    invoke-static {p0}, Lcom/oplus/log/olc/OlcManagerHelper;->access$100(Lcom/oplus/log/olc/OlcManagerHelper;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_30
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/olc/OlcManagerHelper$1;->this$0:Lcom/oplus/log/olc/OlcManagerHelper;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/oplus/log/olc/OlcManagerHelper;->access$002(Lcom/oplus/log/olc/OlcManagerHelper;Lcom/oplus/olc/IOplusLogCore;)Lcom/oplus/olc/IOplusLogCore;

    return-void
.end method
