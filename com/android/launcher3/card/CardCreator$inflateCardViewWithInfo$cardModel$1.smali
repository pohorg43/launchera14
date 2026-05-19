.class final Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;Ljava/util/List;)Lcom/android/launcher3/card/LauncherCardView;
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
.field public final synthetic $cardView:Lcom/android/launcher3/card/LauncherCardView;

.field public final synthetic $isGroupCard:Z


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->$cardView:Lcom/android/launcher3/card/LauncherCardView;

    iput-boolean p2, p0, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->$isGroupCard:Z

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->invoke(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final invoke(Lcom/oplus/card/manager/domain/model/CardModel;Z)V
    .registers 4

    const-string v0, "cardModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->$cardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->isLauncherHost()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->$isGroupCard:Z

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->$cardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-interface {v0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V

    :cond_16
    iget-object p0, p0, Lcom/android/launcher3/card/CardCreator$inflateCardViewWithInfo$cardModel$1;->$cardView:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/LauncherCardView;->enableCacheView(Lcom/oplus/card/manager/domain/model/CardModel;Z)V

    :cond_1b
    return-void
.end method
