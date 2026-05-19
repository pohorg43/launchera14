.class public final synthetic Lcom/oplus/quickstep/utils/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/utils/AnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/utils/AnimationController;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/utils/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/utils/b;->b:Lcom/oplus/quickstep/utils/AnimationController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/quickstep/utils/b;->a:I

    packed-switch v0, :pswitch_data_12

    goto :goto_c

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/utils/b;->b:Lcom/oplus/quickstep/utils/AnimationController;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController;->b(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void

    :goto_c
    iget-object p0, p0, Lcom/oplus/quickstep/utils/b;->b:Lcom/oplus/quickstep/utils/AnimationController;

    invoke-static {p0}, Lcom/oplus/quickstep/utils/AnimationController$addRecentsAnim$1;->b(Lcom/oplus/quickstep/utils/AnimationController;)V

    return-void

    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
