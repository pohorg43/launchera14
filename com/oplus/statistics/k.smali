.class public final synthetic Lcom/oplus/statistics/k;
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

    iput p2, p0, Lcom/oplus/statistics/k;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

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
        :pswitch_5  #00000008
    .end packed-switch
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/k;->a:I

    packed-switch v0, :pswitch_data_46

    goto :goto_3e

    :pswitch_6  #0x7
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_d  #0x6
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_14  #0x5
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1b  #0x4
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_22  #0x3
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_29  #0x2
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_30  #0x1
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_37  #0x0
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_3e
    iget-object p0, p0, Lcom/oplus/statistics/k;->b:Ljava/lang/Exception;

    invoke-static {p0}, Lcom/oplus/statistics/util/IntentUtils;->d(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_37  #00000000
        :pswitch_30  #00000001
        :pswitch_29  #00000002
        :pswitch_22  #00000003
        :pswitch_1b  #00000004
        :pswitch_14  #00000005
        :pswitch_d  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
