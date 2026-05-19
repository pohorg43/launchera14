.class public final synthetic Lcom/oplus/zoom/common/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/common/i;->a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    iput-object p2, p0, Lcom/oplus/zoom/common/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/common/i;->a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    iget-object p0, p0, Lcom/oplus/zoom/common/i;->b:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->e(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;Ljava/lang/String;)V

    return-void
.end method
