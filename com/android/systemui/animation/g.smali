.class public final synthetic Lcom/android/systemui/animation/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/animation/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/g;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/animation/AnimatedDialog;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/animation/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/animation/g;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/systemui/animation/g;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/systemui/animation/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/AnimatedDialog;

    invoke-virtual {p0}, Lcom/android/systemui/animation/AnimatedDialog;->onDialogDismissed()V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/systemui/animation/g;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    invoke-static {p0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->b(Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
