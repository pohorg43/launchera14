.class public final Lcom/android/launcher3/card/NoPermissionHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/NoPermissionHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/NoPermissionHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "LauncherCardView-NP"


# instance fields
.field private final cardView:Lcom/android/launcher3/card/CommonCardView;

.field private final context:Landroid/content/Context;

.field private noPermissionView:Landroid/view/View;

.field private permissionImage:Landroid/widget/ImageView;

.field private permissionSetting:Landroid/widget/TextView;

.field private permissionTip:Landroid/widget/TextView;

.field private preSysTintColor:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/NoPermissionHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/NoPermissionHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/NoPermissionHelper;->Companion:Lcom/android/launcher3/card/NoPermissionHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/CommonCardView;)V
    .registers 4

    const-string v0, "cardView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    const v0, 0x7f0d01b2

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/FrameLayout;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v1, "inflate(context, R.layou…rmission_deny_view, null)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/card/j;->a:Lcom/android/launcher3/card/j;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    const v1, 0x7f0a0170

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "noPermissionView.findVie….card_permission_setting)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    const v1, 0x7f0a016f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "noPermissionView.findVie…id.card_permission_image)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    const v1, 0x7f0a0171

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "noPermissionView.findVie…R.id.card_permission_tip)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-eqz v1, :cond_68

    const v1, 0x7f12053e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6e

    :cond_68
    const v1, 0x7f120196

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_6e
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/coui/appcompat/textutil/COUIChangeTextUtil;->b(Landroid/widget/TextView;I)V

    const v0, 0x7f04021c

    const v1, 0x7f0600ab

    invoke-static {p1, v0, v1}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->preSysTintColor:I

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method private static final _init_$lambda$0(Landroid/view/View;)V
    .registers 1

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/card/CardPermissionManager;->launchCardPermissionActivity()V

    return-void
.end method

.method public static synthetic a(Landroid/view/View;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->_init_$lambda$0(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final addOrRemoveView(Z)V
    .registers 2

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_11

    :cond_a
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :goto_11
    return-void
.end method

.method public final getCardView()Lcom/android/launcher3/card/CommonCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    return-object p0
.end method

.method public final getNoPermissionView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    return-object p0
.end method

.method public final hasShowing()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result p0

    if-ltz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public final onAttach()Z
    .registers 3

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/card/CardPermissionManager;->isPermissionAllowed()Z

    move-result v0

    if-nez v0, :cond_30

    invoke-static {}, Lcom/android/launcher3/card/CardPermissionManager;->getInstance()Lcom/android/launcher3/card/CardPermissionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/card/CardPermissionManager;->isCardPreload(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {p0}, Lcom/android/launcher3/card/LauncherCardView;->fetchPreloadResources()V

    goto :goto_2e

    :cond_1c
    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->hasShowing()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->fetchNoPermissionCardName()V

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2e
    :goto_2e
    const/4 p0, 0x1

    return p0

    :cond_30
    const/4 p0, 0x0

    return p0
.end method

.method public final setDescriptionForView(Ljava/lang/String;)V
    .registers 7

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    const-string p1, ""

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    return-void

    :cond_10
    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardView;->getItemInfo()Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    const-string v1, "cardView.itemInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_24

    const v0, 0x7f120101

    goto :goto_30

    :cond_24
    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2d

    const v0, 0x7f120104

    goto :goto_30

    :cond_2d
    const v0, 0x7f120102

    :goto_30
    iget-object v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->cardView:Lcom/android/launcher3/card/CommonCardView;

    invoke-interface {p0, p1}, Lcom/oplus/card/manager/domain/ICardView;->setCardNameAndUpdateDb(Ljava/lang/String;)V

    return-void
.end method

.method public final updatePermissionSettingColorIfNeeded()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->context:Landroid/content/Context;

    const v1, 0x7f04021c

    const v2, 0x7f0600ab

    invoke-static {v0, v1, v2}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->b(Landroid/content/Context;II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->preSysTintColor:I

    if-eq v0, v1, :cond_25

    invoke-virtual {p0}, Lcom/android/launcher3/card/NoPermissionHelper;->hasShowing()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string v1, "LauncherCardView-NP"

    const-string/jumbo v2, "update permission setting text color"

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->preSysTintColor:I

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_25
    return-void
.end method

.method public final updatePermissionSettingsView(Z)V
    .registers 3

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionImage:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->noPermissionView:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2a

    :cond_19
    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionImage:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionSetting:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/launcher3/card/NoPermissionHelper;->permissionTip:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2a
    return-void
.end method
