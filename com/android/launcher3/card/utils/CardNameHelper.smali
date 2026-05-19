.class public final Lcom/android/launcher3/card/utils/CardNameHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/utils/CardNameHelper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/utils/CardNameHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "CardNameHelper"


# instance fields
.field private final card:Lcom/android/launcher3/card/LauncherCardView;

.field private cardName:Lcom/android/launcher3/OplusBubbleTextView;

.field private final mCardNamePaddingTop:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/utils/CardNameHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/utils/CardNameHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/utils/CardNameHelper;->Companion:Lcom/android/launcher3/card/utils/CardNameHelper$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/card/LauncherCardView;)V
    .registers 3

    const-string v0, "card"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->card:Lcom/android/launcher3/card/LauncherCardView;

    instance-of v0, p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v0, :cond_1c

    check-cast p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07028d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_27

    :cond_1c
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070832

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_27
    iput p1, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->mCardNamePaddingTop:I

    return-void
.end method


# virtual methods
.method public final getCard()Lcom/android/launcher3/card/LauncherCardView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->card:Lcom/android/launcher3/card/LauncherCardView;

    return-object p0
.end method

.method public final getCardName()Lcom/android/launcher3/OplusBubbleTextView;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    return-object p0
.end method

.method public final initCardName(Lcom/android/launcher3/OplusBubbleTextView;Lcom/android/launcher3/Launcher;)V
    .registers 7

    const-string/jumbo v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2a

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-eqz v0, :cond_26

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    move v0, v2

    :goto_27
    if-eqz v0, :cond_2a

    return-void

    :cond_2a
    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->setTitleShadowEnable(Z)V

    invoke-virtual {p2}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    const-string p2, "launcher.deviceProfile"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInWideSize()Z

    move-result p2

    if-eqz p2, :cond_4d

    iget-object p2, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-nez p2, :cond_48

    goto :goto_4d

    :cond_48
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setVisibility(I)V

    :cond_4d
    :goto_4d
    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_6e

    iget p2, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p2, p2

    invoke-virtual {p0, v2, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1206d9

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6e
    return-void
.end method

.method public final measureCardName(Lcom/android/launcher3/Launcher;)V
    .registers 10

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v1

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget v3, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v4, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/launcher3/OplusDeviceProfile;->mIconTextHeight:I

    add-int/2addr v3, v4

    sub-int v3, v2, v3

    int-to-float v3, v3

    const v4, 0x3eaaaaab

    mul-float/2addr v3, v4

    const/4 v5, 0x2

    int-to-float v5, v5

    mul-float/2addr v3, v5

    invoke-static {v3}, Lu4/a;->b(F)I

    move-result v3

    iget v5, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v5, v0

    iget v0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->mCardNamePaddingTop:I

    sub-int/2addr v5, v0

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v6, 0x0

    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_4e

    :cond_4d
    move-object v0, v6

    :goto_4e
    instance-of v7, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v7, :cond_55

    move-object v6, v0

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    :cond_55
    if-eqz v6, :cond_b1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v0

    if-eqz v0, :cond_60

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    goto :goto_6b

    :cond_60
    iget v0, v1, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->rint(D)D

    move-result-wide v0

    double-to-float v0, v0

    float-to-int v2, v0

    :goto_6b
    iput v2, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->isInSimpleMode()Z

    move-result v0

    if-eqz v0, :cond_88

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0707ac

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    neg-int v0, v0

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_90

    :cond_88
    iget p1, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->mCardNamePaddingTop:I

    iget v0, v6, Landroid/widget/FrameLayout$LayoutParams;->height:I

    add-int/2addr v0, p1

    neg-int v0, v0

    iput v0, v6, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    :goto_90
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_9e

    const-string/jumbo v0, "measureCardName cardNamePaddingTop= "

    const-string v1, "CardNameHelper"

    invoke-static {v0, p1, v1}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9e
    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_b1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_b1
    return-void
.end method

.method public final measureGroupCardName(Lcom/android/launcher3/Launcher;)V
    .registers 7

    const-string v0, "launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    goto :goto_10

    :cond_f
    move-object v0, v1

    :goto_10
    instance-of v2, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_17

    move-object v1, v0

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    :cond_17
    if-eqz v1, :cond_75

    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/OplusInvariantDeviceProfile;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object v2

    invoke-virtual {v0, p1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-object v0, p1, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/OplusInvariantDeviceProfile;

    iget v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-virtual {p1, v3, v0}, Lcom/android/launcher3/DeviceProfile;->getCellSize(II)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isTabletInLongSize()Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->card:Lcom/android/launcher3/card/LauncherCardView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr p1, v0

    goto :goto_58

    :cond_4a
    const p1, 0x3eaaaaab

    iget v0, v2, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-float p1, v2

    float-to-int p1, p1

    :goto_58
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->mCardNamePaddingTop:I

    add-int/2addr p1, v0

    neg-int p1, p1

    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p1, :cond_75

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    iget p0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->mCardNamePaddingTop:I

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_75
    return-void
.end method

.method public final setCardName(Lcom/android/launcher3/OplusBubbleTextView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    return-void
.end method

.method public final updateTextSize(Lcom/android/launcher3/Launcher;)V
    .registers 3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    if-eqz p1, :cond_13

    iget-object p0, p0, Lcom/android/launcher3/card/utils/CardNameHelper;->cardName:Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz p0, :cond_13

    const/4 v0, 0x0

    iget p1, p1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float p1, p1

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_13
    return-void
.end method
