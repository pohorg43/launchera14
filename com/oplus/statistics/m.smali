.class public final synthetic Lcom/oplus/statistics/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/statistics/util/Supplier;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/statistics/m;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/m;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .registers 2

    iget v0, p0, Lcom/oplus/statistics/m;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/statistics/m;->b:Ljava/lang/String;

    invoke-static {p0}, Lcom/oplus/statistics/OplusTrack;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_d
    iget-object p0, p0, Lcom/oplus/statistics/m;->b:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
