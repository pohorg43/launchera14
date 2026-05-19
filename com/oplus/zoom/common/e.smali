.class public final synthetic Lcom/oplus/zoom/common/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/common/e;->a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/common/e;->a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    invoke-static {p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->d(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;)V

    return-void
.end method
