.class public final synthetic Lcom/oplus/zoom/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IIZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/e;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput p2, p0, Lcom/oplus/zoom/e;->b:I

    iput p3, p0, Lcom/oplus/zoom/e;->c:I

    iput-boolean p4, p0, Lcom/oplus/zoom/e;->d:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/oplus/zoom/e;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget v1, p0, Lcom/oplus/zoom/e;->b:I

    iget v2, p0, Lcom/oplus/zoom/e;->c:I

    iget-boolean p0, p0, Lcom/oplus/zoom/e;->d:Z

    invoke-static {v0, v1, v2, p0}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->f(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IIZ)V

    return-void
.end method
