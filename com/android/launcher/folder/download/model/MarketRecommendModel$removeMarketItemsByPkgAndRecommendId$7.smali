.class final Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher/folder/download/model/MarketRecommendModel;->removeMarketItemsByPkgAndRecommendId(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $pkgName:Ljava/lang/String;

.field public final synthetic $recommendId:I

.field public final synthetic this$0:Lcom/android/launcher/folder/download/model/MarketRecommendModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Ljava/lang/String;I)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->this$0:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    iput-object p2, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->$pkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->$recommendId:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Ljava/lang/Boolean;
    .registers 4

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->this$0:Lcom/android/launcher/folder/download/model/MarketRecommendModel;

    iget-object v1, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->$pkgName:Ljava/lang/String;

    iget p0, p0, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->$recommendId:I

    invoke-static {v0, p1, v1, p0}, Lcom/android/launcher/folder/download/model/MarketRecommendModel;->access$isRemoveMarketItem(Lcom/android/launcher/folder/download/model/MarketRecommendModel;Lcom/android/launcher3/model/data/WorkspaceItemInfo;Ljava/lang/String;I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/download/model/MarketRecommendModel$removeMarketItemsByPkgAndRecommendId$7;->invoke(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
