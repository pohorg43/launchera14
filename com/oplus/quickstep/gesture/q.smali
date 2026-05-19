.class public final synthetic Lcom/oplus/quickstep/gesture/q;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/quickstep/gesture/q;->a:I

    packed-switch p2, :pswitch_data_30

    goto :goto_2a

    :pswitch_6  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :pswitch_c  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :pswitch_12  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :pswitch_18  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :pswitch_1e  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :pswitch_24  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :goto_2a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_24  #00000001
        :pswitch_1e  #00000002
        :pswitch_18  #00000003
        :pswitch_12  #00000004
        :pswitch_c  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/gesture/q;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_2a

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->Y0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_c  #0x4
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->L0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_12  #0x3
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->h0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_18  #0x2
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->g1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->b1(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_24  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->e0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :goto_2a
    iget-object p0, p0, Lcom/oplus/quickstep/gesture/q;->b:Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    invoke-static {p0}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler$createWindowAnimationToBracketSpace$4;->b(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V

    return-void

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_24  #00000000
        :pswitch_1e  #00000001
        :pswitch_18  #00000002
        :pswitch_12  #00000003
        :pswitch_c  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
