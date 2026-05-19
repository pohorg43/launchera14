.class Lcom/oplus/zoom/ui/tips/TipsController$1;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/zoom/ui/tips/TipsController;->initManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/zoom/ui/tips/TipsController;


# direct methods
.method public constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/zoom/ui/tips/TipsController$1;->this$0:Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    if-eqz p1, :cond_17

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/oplus/zoom/ui/tips/TipsController$1;->this$0:Lcom/oplus/zoom/ui/tips/TipsController;

    check-cast p1, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->access$000(Lcom/oplus/zoom/ui/tips/TipsController;Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    :cond_17
    return-void
.end method
