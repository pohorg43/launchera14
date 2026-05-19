.class public final synthetic Lcom/oplus/quickstep/gesture/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/gesture/d;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_27

    const/4 v0, 0x2

    if-eq p2, v0, :cond_21

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1b

    const/4 v0, 0x4

    if-eq p2, v0, :cond_15

    const/4 v0, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :cond_1b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :cond_21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :cond_27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/gesture/d;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_24

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createAnimateToFloatOrMiniWindow$2;->b(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_c  #0x3
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->Q0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_12  #0x2
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->B0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_18  #0x1
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->T0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->t0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :goto_24
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/d;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToHome$3;->b(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_18  #00000001
        :pswitch_12  #00000002
        :pswitch_c  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
