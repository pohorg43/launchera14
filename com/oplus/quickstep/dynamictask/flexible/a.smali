.class public final synthetic Lcom/oplus/quickstep/dynamictask/flexible/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;III)V
    .registers 6

    iput p4, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->a:I

    const/4 v0, 0x1

    if-eq p4, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->b:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    iput p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->c:I

    iput p3, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_24

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->b:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->c:I

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->d(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void

    :pswitch_10  #0x1
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->b:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->c:I

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->f(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void

    :pswitch_1a  #0x0
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->b:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->c:I

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->e(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void

    :goto_24
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->b:Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;

    iget v1, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->c:I

    iget p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/a;->d:I

    invoke-static {v0, v1, p0}, Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;->b(Lcom/oplus/quickstep/dynamictask/flexible/FlexibleTaskSystemNotifier;II)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1a  #00000000
        :pswitch_10  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
