.class public final Lcom/oplus/card/helper/CategoryChangeHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/card/helper/CategoryChangeHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/card/helper/CategoryChangeHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "CategoryChangeHelper"


# instance fields
.field private final hostView:Lcom/android/launcher3/card/TitleCardView;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/card/helper/CategoryChangeHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/card/helper/CategoryChangeHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/card/helper/CategoryChangeHelper;->Companion:Lcom/oplus/card/helper/CategoryChangeHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/TitleCardView;)V
    .registers 3

    const-string v0, "hostView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    return-void
.end method


# virtual methods
.method public final getHostView()Lcom/android/launcher3/card/TitleCardView;
    .registers 1

    iget-object p0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    return-object p0
.end method

.method public final onCardCategoryChange(I)V
    .registers 14

    const-string v0, "onCardCategoryChange: category = "

    const-string v1, "CategoryChangeHelper"

    invoke-static {v0, p1, v1}, Landroidx/recyclerview/widget/c;->a(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragFromAssistant:Z

    iput-boolean v0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mDragToAssistant:Z

    iget-object v0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/EngineCardView;->setEngine(Lcom/oplus/card/helper/EngineManner;)V

    iget-object v0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->pause()Z

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->destroy()V

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardModelWrapper;->unSubscribed()V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardModelWrapper;->release(Ljava/lang/Boolean;)Z

    sget-object v0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v1

    iget v2, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {v1, v2}, Lcom/oplus/card/manager/domain/CardManager;->allocateCardId(I)I

    move-result v1

    iput v1, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    new-instance v6, Lcom/android/launcher3/card/seed/SeedParams;

    const-string v1, "itemInfo"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, p1}, Lcom/android/launcher3/card/seed/SeedParams;-><init>(Lcom/android/launcher3/card/LauncherCardInfo;)V

    invoke-virtual {v0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object v2

    iget v3, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    iget v4, p1, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    new-instance v9, Lcom/oplus/card/helper/CategoryChangeHelper$onCardCategoryChange$cardModel$1;

    invoke-direct {v9, p0}, Lcom/oplus/card/helper/CategoryChangeHelper$onCardCategoryChange$cardModel$1;-><init>(Lcom/oplus/card/helper/CategoryChangeHelper;)V

    const/16 v10, 0x30

    const/4 v11, 0x0

    invoke-static/range {v2 .. v11}, Lcom/oplus/card/manager/domain/ICardManager$DefaultImpls;->createCard$default(Lcom/oplus/card/manager/domain/ICardManager;IIILcom/android/launcher3/card/seed/SeedParams;Lcom/android/launcher3/model/data/ItemInfo;Landroid/content/Context;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lcom/oplus/card/manager/domain/model/CardModel;

    move-result-object p1

    iget-object v0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    new-instance v1, Lcom/android/launcher3/card/CardModelWrapper;

    invoke-direct {v1}, Lcom/android/launcher3/card/CardModelWrapper;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CommonCardView;->setCardModelWrapper(Lcom/android/launcher3/card/CardModelWrapper;)V

    iget-object v0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/card/CommonCardView;->setCardModel(Lcom/oplus/card/manager/domain/model/CardModel;)V

    iget-object p1, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {p1}, Lcom/android/launcher3/card/CommonCardView;->getCardModelWrapper()Lcom/android/launcher3/card/CardModelWrapper;

    move-result-object p1

    iget-object p0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/CardModelWrapper;->bindView(Lcom/android/launcher3/card/LauncherCardView;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/CardModelWrapper;->create()V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/card/CardModelWrapper;->resume(Z)Z

    return-void
.end method

.method public final test(II)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/card/helper/CategoryChangeHelper;->hostView:Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    iput p1, v0, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0, p2}, Lcom/oplus/card/helper/CategoryChangeHelper;->onCardCategoryChange(I)V

    return-void
.end method
