.class public final synthetic Lcom/android/launcher/folder/download/model/c;
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

    iput p2, p0, Lcom/android/launcher/folder/download/model/c;->a:I

    packed-switch p2, :pswitch_data_c

    :pswitch_5  #0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8, 0x9, 0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

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
        :pswitch_5  #00000009
        :pswitch_5  #0000000a
    .end packed-switch
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/download/model/c;->a:I

    packed-switch v0, :pswitch_data_54

    goto :goto_4c

    :pswitch_6  #0x9
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d  #0x8
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/widget/WidgetControlHelper;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x7
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/model/ShortcutsAllRefreshTask;->l(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x6
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/hotseat/HotseatDividerHelper;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_22  #0x5
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->d(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_29  #0x4
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->B(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_30  #0x3
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->k(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_37  #0x2
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->n(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_3e  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->j(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_45  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_4c
    iget-object p0, p0, Lcom/android/launcher/folder/download/model/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_54
    .packed-switch 0x0
        :pswitch_45  #00000000
        :pswitch_3e  #00000001
        :pswitch_37  #00000002
        :pswitch_30  #00000003
        :pswitch_29  #00000004
        :pswitch_22  #00000005
        :pswitch_1b  #00000006
        :pswitch_14  #00000007
        :pswitch_d  #00000008
        :pswitch_6  #00000009
    .end packed-switch
.end method
