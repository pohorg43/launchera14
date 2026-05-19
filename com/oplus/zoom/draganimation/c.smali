.class public final synthetic Lcom/oplus/zoom/draganimation/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;ZI)V
    .registers 4

    iput p3, p0, Lcom/oplus/zoom/draganimation/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/c;->b:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/c;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/zoom/draganimation/c;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/c;->b:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;

    iget-boolean p0, p0, Lcom/oplus/zoom/draganimation/c;->c:Z

    invoke-static {v0, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->a(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;Z)V

    return-void

    :goto_e
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/c;->b:Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;

    iget-boolean p0, p0, Lcom/oplus/zoom/draganimation/c;->c:Z

    invoke-static {v0, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;->d(Lcom/oplus/zoom/draganimation/OplusDragZoomFoldAnimationManager$OplusDragZoomFoldAnimationStateRecorder$4;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
