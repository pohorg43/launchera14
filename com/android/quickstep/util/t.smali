.class public final synthetic Lcom/android/quickstep/util/t;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/util/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/util/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/t;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/util/t;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/t;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/quickstep/util/t;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/util/t;->a:I

    packed-switch v0, :pswitch_data_28

    goto :goto_1c

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/quickstep/util/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/CancellableTask;

    iget-object p0, p0, Lcom/android/quickstep/util/t;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/CancellableTask;->a(Lcom/android/quickstep/util/CancellableTask;Ljava/lang/Object;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/quickstep/util/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;

    iget-object p0, p0, Lcom/android/quickstep/util/t;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;->c(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchAnimationRunner;Ljava/lang/Runnable;)V

    return-void

    :goto_1c
    iget-object v0, p0, Lcom/android/quickstep/util/t;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/util/OplusRectFSpringAnim;

    iget-object p0, p0, Lcom/android/quickstep/util/t;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    invoke-static {v0, p0}, Lcom/android/quickstep/util/OplusRectFSpringAnim;->q(Lcom/android/quickstep/util/OplusRectFSpringAnim;Ljava/lang/Float;)V

    return-void

    :pswitch_data_28
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
