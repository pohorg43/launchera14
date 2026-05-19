.class public final synthetic Lcom/android/launcher/folder/download/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .registers 4

    iput p2, p0, Lcom/android/launcher/folder/download/c;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 v0, 0x2

    if-eq p2, v0, :cond_c

    const/4 v0, 0x3

    if-eq p2, v0, :cond_c

    const/4 v0, 0x4

    :cond_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/download/c;->a:I

    packed-switch v0, :pswitch_data_30

    goto :goto_29

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->q(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_d  #0x3
    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->y(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_14  #0x2
    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->D(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_1b  #0x1
    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->o(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_22  #0x0
    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->e(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :goto_29
    iget-object p0, p0, Lcom/android/launcher/folder/download/c;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->x(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_1b  #00000001
        :pswitch_14  #00000002
        :pswitch_d  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
