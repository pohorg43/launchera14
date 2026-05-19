.class public final synthetic Lcom/android/quickstep/util/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/window/IRemoteTransitionFinishedCallback;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/v;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/v;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/v;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/util/v;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/quickstep/util/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/window/IRemoteTransitionFinishedCallback;

    invoke-static {p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->a(Landroid/window/IRemoteTransitionFinishedCallback;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/android/quickstep/util/v;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;

    invoke-static {p0}, Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;->c(Lcom/android/quickstep/util/OplusAsyncSpringAnimWrapper;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
