.class public final synthetic Lcom/oplus/zoom/common/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

.field public final synthetic b:F

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;FF)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/common/h;->a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    iput p2, p0, Lcom/oplus/zoom/common/h;->b:F

    iput p3, p0, Lcom/oplus/zoom/common/h;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/zoom/common/h;->a:Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;

    iget v1, p0, Lcom/oplus/zoom/common/h;->b:F

    iget p0, p0, Lcom/oplus/zoom/common/h;->c:F

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;->h(Lcom/oplus/zoom/common/ZoomDCSManager$ZoomStateRecorder;FF)V

    return-void
.end method
