.class final Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByRecommendId(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $recommendId:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$2;->$recommendId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;->getMRecommendId()I

    move-result p1

    iget p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$2;->$recommendId:I

    if-ne p1, p0, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByRecommendId$2;->invoke(Lcom/android/launcher/folder/download/bean/MarketRecommendAppInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
