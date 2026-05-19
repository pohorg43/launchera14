.class public final synthetic Lcom/oplus/zoom/zoomstate/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/zoomstate/ZoomStateManager;ZIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/zoomstate/d;->a:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iput-boolean p2, p0, Lcom/oplus/zoom/zoomstate/d;->b:Z

    iput p3, p0, Lcom/oplus/zoom/zoomstate/d;->c:I

    iput-boolean p4, p0, Lcom/oplus/zoom/zoomstate/d;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/zoomstate/d;->a:Lcom/oplus/zoom/zoomstate/ZoomStateManager;

    iget-boolean v1, p0, Lcom/oplus/zoom/zoomstate/d;->b:Z

    iget v2, p0, Lcom/oplus/zoom/zoomstate/d;->c:I

    iget-boolean p0, p0, Lcom/oplus/zoom/zoomstate/d;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/zoom/zoomstate/ZoomStateManager;->f(Lcom/oplus/zoom/zoomstate/ZoomStateManager;ZIZ)V

    return-void
.end method
