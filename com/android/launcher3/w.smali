.class public final synthetic Lcom/android/launcher3/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/InvariantDeviceProfile;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/w;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/w;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/w;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher3/w;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/InvariantDeviceProfile;->c(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/launcher3/w;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {p0, p1, p2, p3}, Lcom/android/quickstep/RecentsAnimationDeviceState;->b(Ljava/lang/Runnable;Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
