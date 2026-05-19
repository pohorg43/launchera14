.class public final synthetic Lcom/oplus/zoom/draganimation/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;IZ)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/draganimation/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/f;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/oplus/zoom/draganimation/f;->c:I

    iput-boolean p3, p0, Lcom/oplus/zoom/draganimation/f;->d:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;ZI)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/draganimation/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/draganimation/f;->b:Ljava/lang/Object;

    iput-boolean p2, p0, Lcom/oplus/zoom/draganimation/f;->d:Z

    iput p3, p0, Lcom/oplus/zoom/draganimation/f;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/zoom/draganimation/f;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;

    iget v1, p0, Lcom/oplus/zoom/draganimation/f;->c:I

    iget-boolean p0, p0, Lcom/oplus/zoom/draganimation/f;->d:Z

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;->a(Lcom/oplus/zoom/draganimation/OplusDragZoomPhoneAnimationManager$OplusDragZoomPhoneAnimationStateRecorder$4;IZ)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/oplus/zoom/draganimation/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;

    iget-boolean v1, p0, Lcom/oplus/zoom/draganimation/f;->d:Z

    iget p0, p0, Lcom/oplus/zoom/draganimation/f;->c:I

    invoke-static {v0, v1, p0}, Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;->a(Lcom/oplus/zoom/draganimation/OplusDragZoomTabletAnimationManager$OplusDragZoomTabletAnimationStateRecorder$4;ZI)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
