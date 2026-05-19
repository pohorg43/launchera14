.class public final synthetic Lcom/oplus/statistics/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Exception;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Exception;I)V
    .registers 3

    iput p2, p0, Lcom/oplus/statistics/i;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/i;->b:Ljava/lang/Exception;

    return-void

    nop

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
        :pswitch_5  #00000007
    .end packed-switch
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/i;->a:I

    packed-switch v0, :pswitch_data_c

    :pswitch_5  #0x0, 0x1, 0x2, 0x3, 0x4, 0x5, 0x6
    iget-object p0, p0, Lcom/oplus/statistics/i;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_5  #00000000
        :pswitch_5  #00000001
        :pswitch_5  #00000002
        :pswitch_5  #00000003
        :pswitch_5  #00000004
        :pswitch_5  #00000005
        :pswitch_5  #00000006
    .end packed-switch
.end method
