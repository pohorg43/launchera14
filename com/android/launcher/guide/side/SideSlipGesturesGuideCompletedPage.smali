.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;
.super Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final SIDE_GESTURE_FULL_SCREEN_GESTURE:I = 0x2

.field private static final SIDE_GESTURE_UP_GESTURE:I = 0x0

.field private static final SIDE_GESTURE_VIRTUAL_KEY:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SideSlipGestureStart"

.field private static final TYPE_GUIDE_FOLD_EXPAND:I = 0x2

.field private static final TYPE_GUIDE_PHONE:I = 0x3

.field private static final TYPE_GUIDE_TABLET:I = 0x1


# instance fields
.field private mFullScreenGesturesRb:Landroid/widget/RadioButton;

.field private mStartUsing:Lcom/coui/appcompat/button/COUIButton;

.field private mUpGestureRb:Landroid/widget/RadioButton;

.field private mVirtualKeyRb:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private startUsingGesture()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mUpGestureRb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startUsingSwipeUpKey()V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mVirtualKeyRb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startUsingVirtualKey(Z)V

    return-void

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mFullScreenGesturesRb:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startUsingSideSlipGestures()V

    :cond_2a
    return-void
.end method


# virtual methods
.method public changeGestureModeStatus(I)V
    .registers 12

    const v0, 0x7f0a055f

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a0563

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a054b

    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a055e

    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/coui/appcompat/button/COUIButton;

    iget-object v4, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const v5, 0x7f04021c

    invoke-static {v4, v5}, Lcom/coui/appcompat/contextutil/COUIContextUtil;->a(Landroid/content/Context;I)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    const v6, 0x7f06071b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    const/16 v6, 0x8

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz p1, :cond_90

    if-eq p1, v7, :cond_74

    const/4 v9, 0x2

    if-eq p1, v9, :cond_42

    goto :goto_ab

    :cond_42
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mFullScreenGesturesRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mVirtualKeyRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mUpGestureRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    if-nez p1, :cond_6d

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_6d

    :cond_69
    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_ab

    :cond_6d
    :goto_6d
    invoke-virtual {v3, v8}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_ab

    :cond_74
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mVirtualKeyRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mUpGestureRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mFullScreenGesturesRb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_ab

    :cond_90
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mUpGestureRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v7}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p1, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mVirtualKeyRb:Landroid/widget/RadioButton;

    invoke-virtual {p1, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object p0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mFullScreenGesturesRb:Landroid/widget/RadioButton;

    invoke-virtual {p0, v8}, Landroid/widget/RadioButton;->setChecked(Z)V

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    :goto_ab
    return-void
.end method

.method public initAnimation(IZ)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initAnimation type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isDark:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideSlipGestureStart"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0a02d1

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationView;

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3d

    if-eqz p2, :cond_36

    const-string/jumbo p1, "navigation_type_open_mode_dark.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5e

    :cond_36
    const-string/jumbo p1, "navigation_type_open_mode_light.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5e

    :cond_3d
    if-ne p1, v0, :cond_4f

    if-eqz p2, :cond_48

    const-string/jumbo p1, "navigation_type_tablet_dark.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5e

    :cond_48
    const-string/jumbo p1, "navigation_type_tablet_light.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5e

    :cond_4f
    if-eqz p2, :cond_58

    const-string/jumbo p1, "navigation_type_dark.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5e

    :cond_58
    const-string/jumbo p1, "navigation_type_light.json"

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_5e
    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    return-void
.end method

.method public initViews()V
    .registers 12

    const v0, 0x7f0a055d

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mStartUsing:Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a055a

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isShowLearnGesture()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_32

    const v0, 0x7f0a055e

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_32
    const v0, 0x7f0a04ae

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mUpGestureRb:Landroid/widget/RadioButton;

    const v0, 0x7f0a04af

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mVirtualKeyRb:Landroid/widget/RadioButton;

    const v0, 0x7f0a04ad

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->mFullScreenGesturesRb:Landroid/widget/RadioButton;

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_66

    sget-object v3, Lcom/android/common/util/ScreenUtils;->INSTANCE:Lcom/android/common/util/ScreenUtils;

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v3

    if-eqz v3, :cond_66

    move v3, v4

    goto :goto_67

    :cond_66
    move v3, v2

    :goto_67
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->changeGestureModeStatus(I)V

    const v7, 0x7f0a054a

    invoke-virtual {p0, v7}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    const v8, 0x7f0a0562

    invoke-virtual {p0, v8}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    const v9, 0x7f0a0549

    invoke-virtual {p0, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isSupportUpGesture(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_a4

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result v10

    if-nez v10, :cond_a4

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v10

    if-nez v10, :cond_a4

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isFlipDevice()Z

    move-result v0

    if-eqz v0, :cond_a7

    :cond_a4
    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_a7
    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v8, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v9, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02fa

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const/16 v7, 0x20

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    if-ne v7, v1, :cond_ce

    move v2, v4

    :cond_ce
    const v1, 0x7f0a0561

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v4, 0x7f0a02e6

    invoke-virtual {p0, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-nez v3, :cond_f6

    if-eqz v5, :cond_e5

    goto :goto_f6

    :cond_e5
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->initAnimation(IZ)V

    const p0, 0x7f080504

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    const p0, 0x7f080506

    invoke-virtual {v4, p0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_113

    :cond_f6
    :goto_f6
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070e55

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p0, v6, v2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->initAnimation(IZ)V

    const v0, 0x7f080505

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :goto_113
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onClick v:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GesturesGuide"

    const-string v2, "SideSlipGestureStart"

    invoke-static {v1, v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_46

    goto :goto_44

    :sswitch_26
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->changeGestureModeStatus(I)V

    goto :goto_44

    :sswitch_2b
    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startGestures()V

    goto :goto_44

    :sswitch_31
    invoke-direct {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->startUsingGesture()V

    goto :goto_44

    :sswitch_35
    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->notUsingSideSlipGestures()V

    goto :goto_44

    :sswitch_3b
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->changeGestureModeStatus(I)V

    goto :goto_44

    :sswitch_40
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideCompletedPage;->changeGestureModeStatus(I)V

    :goto_44
    return-void

    nop

    :sswitch_data_46
    .sparse-switch
        0x7f0a0549 -> :sswitch_40
        0x7f0a054a -> :sswitch_3b
        0x7f0a055a -> :sswitch_35
        0x7f0a055d -> :sswitch_31
        0x7f0a055e -> :sswitch_2b
        0x7f0a0562 -> :sswitch_26
    .end sparse-switch
.end method

.method public onPageSelected(I)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->onPageSelected(I)V

    return-void
.end method
