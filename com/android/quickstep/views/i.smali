.class public final synthetic Lcom/android/quickstep/views/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/launcher3/DeviceProfile;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/DeviceProfile;I)V
    .registers 3

    iput p2, p0, Lcom/android/quickstep/views/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/views/i;->b:Lcom/android/launcher3/DeviceProfile;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/views/i;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/views/i;->b:Lcom/android/launcher3/DeviceProfile;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/OplusRecentsViewImpl;->h0(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/quickstep/views/i;->b:Lcom/android/launcher3/DeviceProfile;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/views/RecentsView;->r(Lcom/android/launcher3/DeviceProfile;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
