.class public final synthetic Lcom/android/quickstep/views/h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:F


# direct methods
.method public synthetic constructor <init>(FI)V
    .registers 4

    iput p2, p0, Lcom/android/quickstep/views/h;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/views/h;->b:F

    return-void

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/quickstep/views/h;->b:F

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/h;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget p0, p0, Lcom/android/quickstep/views/h;->b:F

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->H(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_e  #0x0
    iget p0, p0, Lcom/android/quickstep/views/h;->b:F

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->b0(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :goto_16
    iget p0, p0, Lcom/android/quickstep/views/h;->b:F

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->o(FLcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
