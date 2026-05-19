.class public final synthetic Lcom/android/quickstep/j0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OplusBaseTouchInteractionService;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/OverviewComponentObserver;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/j0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/quickstep/j0;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_24

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OplusBaseTouchInteractionService;

    check-cast p1, Lcom/android/quickstep/inputconsumers/OtherActivityInputConsumer;

    invoke-static {p0, p1}, Lcom/android/quickstep/OplusBaseTouchInteractionService;->d(Lcom/android/quickstep/OplusBaseTouchInteractionService;Lcom/android/quickstep/InputConsumer;)V

    return-void

    :pswitch_10  #0x1
    iget-object p0, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->P(Lcom/android/quickstep/util/SurfaceTransactionApplier;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :pswitch_1a  #0x0
    iget-object p0, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;

    check-cast p1, Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;

    invoke-static {p0, p1}, Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;->f(Lcom/android/quickstep/FallbackSwipeHandler$FallbackHomeAnimationFactory;Lcom/android/quickstep/RemoteTargetGluer$RemoteTargetHandle;)V

    return-void

    :goto_24
    iget-object p0, p0, Lcom/android/quickstep/j0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/OverviewComponentObserver;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/android/quickstep/OverviewComponentObserver;->a(Lcom/android/quickstep/OverviewComponentObserver;Landroid/content/Intent;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_10  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
