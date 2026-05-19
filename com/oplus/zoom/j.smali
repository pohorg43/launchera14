.class public final synthetic Lcom/oplus/zoom/j;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:Z


# direct methods
.method public synthetic constructor <init>(IIZZI)V
    .registers 7

    iput p5, p0, Lcom/oplus/zoom/j;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/zoom/j;->b:I

    iput p2, p0, Lcom/oplus/zoom/j;->c:I

    iput-boolean p3, p0, Lcom/oplus/zoom/j;->d:Z

    iput-boolean p4, p0, Lcom/oplus/zoom/j;->e:Z

    return-void
.end method

.method public synthetic constructor <init>(IZIZ)V
    .registers 6

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/zoom/j;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/zoom/j;->b:I

    iput-boolean p2, p0, Lcom/oplus/zoom/j;->d:Z

    iput p3, p0, Lcom/oplus/zoom/j;->c:I

    iput-boolean p4, p0, Lcom/oplus/zoom/j;->e:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget v0, p0, Lcom/oplus/zoom/j;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_22

    :pswitch_6  #0x1
    iget v0, p0, Lcom/oplus/zoom/j;->b:I

    iget v1, p0, Lcom/oplus/zoom/j;->c:I

    iget-boolean v2, p0, Lcom/oplus/zoom/j;->d:Z

    iget-boolean p0, p0, Lcom/oplus/zoom/j;->e:Z

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->a(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_14  #0x0
    iget v0, p0, Lcom/oplus/zoom/j;->b:I

    iget v1, p0, Lcom/oplus/zoom/j;->c:I

    iget-boolean v2, p0, Lcom/oplus/zoom/j;->d:Z

    iget-boolean p0, p0, Lcom/oplus/zoom/j;->e:Z

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->e(IIZZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :goto_22
    iget v0, p0, Lcom/oplus/zoom/j;->b:I

    iget-boolean v1, p0, Lcom/oplus/zoom/j;->d:Z

    iget v2, p0, Lcom/oplus/zoom/j;->c:I

    iget-boolean p0, p0, Lcom/oplus/zoom/j;->e:Z

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->k(IZIZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_14  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
