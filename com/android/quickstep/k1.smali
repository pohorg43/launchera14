.class public final synthetic Lcom/android/quickstep/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/util/SettingsCache$OnChangeListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsAnimationDeviceState;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RecentsOrientedState;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/k1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onSettingsChanged(Z)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/k1;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsAnimationDeviceState;

    invoke-static {p0, p1}, Lcom/android/quickstep/RecentsAnimationDeviceState;->f(Lcom/android/quickstep/RecentsAnimationDeviceState;Z)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/quickstep/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RecentsOrientedState;

    invoke-static {p0, p1}, Lcom/android/quickstep/util/RecentsOrientedState;->a(Lcom/android/quickstep/util/RecentsOrientedState;Z)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
