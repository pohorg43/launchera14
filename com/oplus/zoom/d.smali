.class public final synthetic Lcom/oplus/zoom/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/d;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iput p2, p0, Lcom/oplus/zoom/d;->b:I

    iput p3, p0, Lcom/oplus/zoom/d;->c:I

    iput-object p4, p0, Lcom/oplus/zoom/d;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/oplus/zoom/d;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/oplus/zoom/d;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/oplus/zoom/d;->a:Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;

    iget v1, p0, Lcom/oplus/zoom/d;->b:I

    iget v2, p0, Lcom/oplus/zoom/d;->c:I

    iget-object v3, p0, Lcom/oplus/zoom/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/oplus/zoom/d;->e:Ljava/lang/String;

    iget-object v5, p0, Lcom/oplus/zoom/d;->f:Landroid/os/Bundle;

    invoke-static/range {v0 .. v5}, Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;->g(Lcom/oplus/zoom/ZoomController$OplusZoomTaskListenerImpl;IILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
