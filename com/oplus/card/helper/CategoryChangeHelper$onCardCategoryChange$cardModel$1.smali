.class final Lcom/oplus/card/helper/CategoryChangeHelper$onCardCategoryChange$cardModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/helper/CategoryChangeHelper;->onCardCategoryChange(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/oplus/card/manager/domain/model/CardModel;",
        "Ljava/lang/Boolean;",
        "Lh4/z;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/card/helper/CategoryChangeHelper;


# direct methods
.method public constructor <init>(Lcom/oplus/card/helper/CategoryChangeHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/helper/CategoryChangeHelper$onCardCategoryChange$cardModel$1;->this$0:Lcom/oplus/card/helper/CategoryChangeHelper;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/oplus/card/helper/CategoryChangeHelper$onCardCategoryChange$cardModel$1;->invoke(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 4

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oplus/card/helper/CategoryChangeHelper$onCardCategoryChange$cardModel$1;->this$0:Lcom/oplus/card/helper/CategoryChangeHelper;

    invoke-virtual {p0}, Lcom/oplus/card/helper/CategoryChangeHelper;->getHostView()Lcom/android/launcher3/card/TitleCardView;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/EngineCardView;->enableCacheView(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    return-void
.end method
