.class public final synthetic Lcom/android/quickstep/views/u;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/quickstep/views/RecentsView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;I)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/views/u;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/u;->b:Lcom/android/quickstep/views/RecentsView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/u;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object p0, p0, Lcom/android/quickstep/views/u;->b:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->Y(Lcom/android/quickstep/views/RecentsView;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/u;->b:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Landroid/view/MotionEvent;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->U(Lcom/android/quickstep/views/RecentsView;Landroid/view/MotionEvent;)V

    return-void

    :goto_16
    iget-object p0, p0, Lcom/android/quickstep/views/u;->b:Lcom/android/quickstep/views/RecentsView;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/quickstep/views/RecentsView;->applyLoadPlan(Ljava/util/ArrayList;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
