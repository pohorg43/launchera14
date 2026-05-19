.class Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;
.super Landroid/view/IOplusWindowStateObserver$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->initView(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-direct {p0}, Landroid/view/IOplusWindowStateObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWindowStateChange(Landroid/os/Bundle;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, " onWindowStateChange win "

    const-string v4, " shown "

    invoke-static {v3, v1, v4}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FloatHandle"

    invoke-static {v2, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$100(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$200(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleView$1;->this$0:Lcom/oplus/zoom/ui/floathandle/FloatHandleView;

    invoke-static {v1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleView;->access$200(Lcom/oplus/zoom/ui/floathandle/FloatHandleView;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_8

    :cond_50
    return-void
.end method
