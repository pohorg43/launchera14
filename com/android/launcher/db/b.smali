.class public final synthetic Lcom/android/launcher/db/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/db/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/db/b;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iget v0, p0, Lcom/android/launcher/db/b;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/launcher/db/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/db/DbTracker;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_d
    iget-object p0, p0, Lcom/android/launcher/db/b;->b:Lkotlin/jvm/functions/Function1;

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lz8/c;

    return-object p0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
