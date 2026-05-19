.class public final Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/card/groupcard/GroupCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$Companion;->setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    return-void
.end method

.method public static synthetic getAttachedInstance$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final setAttachedInstance(Lcom/android/launcher3/card/groupcard/GroupCardView;)V
    .registers 2

    invoke-static {p1}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$setAttachedInstance$cp(Lcom/android/launcher3/card/groupcard/GroupCardView;)V

    if-eqz p1, :cond_13

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getOnCardListChangeCb$cp()Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->addCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    goto :goto_20

    :cond_13
    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getOnCardListChangeCb$cp()Lcom/android/launcher3/card/groupcard/GroupCardView$Companion$onCardListChangeCb$1;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->removeCardListChangeCallback(Lcom/oplus/card/manager/domain/CardManager$CardListChangeCallback;)V

    :goto_20
    return-void
.end method


# virtual methods
.method public final getAttachedInstance()Lcom/android/launcher3/card/groupcard/GroupCardView;
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/groupcard/GroupCardView;->access$getAttachedInstance$cp()Lcom/android/launcher3/card/groupcard/GroupCardView;

    move-result-object p0

    return-object p0
.end method

.method public final onAnyCardAttachToWindow(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "card"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->isLauncherHost()Z

    move-result p0

    if-nez p0, :cond_c

    return-void

    :cond_c
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_26

    invoke-virtual {p1}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p0

    const-string v0, "card.itemInfo"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardUtil;->isSeedOrGroupCard(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    sget-object p0, Lcom/android/launcher3/card/seed/SeedCardClient;->INSTANCE:Lcom/android/launcher3/card/seed/SeedCardClient;

    invoke-virtual {p0}, Lcom/android/launcher3/card/seed/SeedCardClient;->initExtraDataRuleSourceAsync()V

    :cond_26
    sget-object p0, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->INSTANCE:Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardRejectHelper;->tryRejectChildCardForPage(Lcom/android/launcher3/card/LauncherCardView;)V

    return-void
.end method
