.class final Lcom/oplus/card/manager/domain/CardManager$removeModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/card/manager/domain/CardManager;->removeModel(Ljava/util/Set;Lpantanal/app/Card;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/oplus/card/manager/domain/model/CardModel;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $card:Lpantanal/app/Card;


# direct methods
.method public constructor <init>(Lpantanal/app/Card;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$2;->$card:Lpantanal/app/Card;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/oplus/card/manager/domain/model/CardModel;)Ljava/lang/Boolean;
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oplus/card/manager/domain/model/CardModel;->getCard()Lpantanal/app/Card;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/card/manager/domain/CardManager$removeModel$2;->$card:Lpantanal/app/Card;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, Lcom/oplus/card/manager/domain/model/CardModel;

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager$removeModel$2;->invoke(Lcom/oplus/card/manager/domain/model/CardModel;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
