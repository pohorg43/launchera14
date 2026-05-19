.class public Lcom/android/launcher/guide/side/SideSlipGesturesGuideStartPage;
.super Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "SideSlipGestureStart"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public initViews()V
    .registers 4

    invoke-super {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuidePage;->initViews()V

    const v0, 0x7f0a055c

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a055b

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/button/COUIButton;

    invoke-static {}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideHelper;->isHideSkipMenu()Z

    move-result v1

    if-eqz v1, :cond_23

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_26

    :cond_23
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_26
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/16 v1, 0x20

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3d

    move v0, v2

    goto :goto_3e

    :cond_3d
    const/4 v0, 0x0

    :goto_3e
    const v1, 0x7f0a02f8

    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/oplus/anim/EffectiveAnimationView;

    if-eqz v0, :cond_50

    const-string/jumbo v0, "navigation_type_dark.json"

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_56

    :cond_50
    const-string/jumbo v0, "navigation_type_light.json"

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_56
    invoke-virtual {p0, v2}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatMode(I)V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oplus/anim/EffectiveAnimationView;->setRepeatCount(I)V

    invoke-virtual {p0}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

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

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    packed-switch p1, :pswitch_data_2e

    goto :goto_2c

    :pswitch_21  #0x7f0a055c
    iget-object p0, p0, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->mListener:Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;

    if-eqz p0, :cond_2c

    invoke-interface {p0}, Lcom/android/launcher/guide/side/SideSlipGesturesGuideListener;->startGestures()V

    goto :goto_2c

    :pswitch_29  #0x7f0a055b
    invoke-virtual {p0}, Lcom/android/launcher/guide/side/AbsSideSlipGesturesGuideView;->onGestureFinished()V

    :cond_2c
    :goto_2c
    return-void

    nop

    :pswitch_data_2e
    .packed-switch 0x7f0a055b
        :pswitch_29  #7f0a055b
        :pswitch_21  #7f0a055c
    .end packed-switch
.end method
