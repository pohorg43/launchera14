.class public final synthetic Lcom/android/exceptionmonitor/util/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .registers 3

    iput p2, p0, Lcom/android/exceptionmonitor/util/c;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

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
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/exceptionmonitor/util/c;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_37

    :pswitch_6  #0x6
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/expand/ExpandDataManager;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d  #0x5
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x4
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x3
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_22  #0x2
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->t(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_29  #0x1
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->v(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_30  #0x0
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->f(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_37
    iget-object p0, p0, Lcom/android/exceptionmonitor/util/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_30  #00000000
        :pswitch_29  #00000001
        :pswitch_22  #00000002
        :pswitch_1b  #00000003
        :pswitch_14  #00000004
        :pswitch_d  #00000005
        :pswitch_6  #00000006
    .end packed-switch
.end method
