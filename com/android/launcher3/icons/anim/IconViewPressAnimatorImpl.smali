.class public Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher3/icons/anim/IIconViewPressAnimator;
.implements Lcom/android/launcher3/icons/touch/ITouchProcessor;


# static fields
.field private static final FANCY_ICON_FILTER_ERROR:Ljava/lang/String; = "FancyDrawable don\'t apply colorFilter when icon is disable"

.field public static final MAX_ALPHA:I = 0xff

.field public static final PRESS_ANIMATION_DURATION:J = 0xc8L

.field private static final PRESS_ANIMATION_SCALE_MAX:F = 1.0f

.field public static final PRESS_ANIMATION_SCALE_MIN:F = 0.85f

.field private static final TAG:Ljava/lang/String; = "IconViewPressAnimatorImpl"

.field private static final VIEW_SCALE_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/BubbleTextView;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

.field private mView:Lcom/android/launcher3/BubbleTextView;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "viewScale"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->VIEW_SCALE_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/BubbleTextView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->lambda$resetPressAnimStateForFloating$3()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->lambda$resetPressAnimatorStateForTouch$1(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->lambda$doPressFeedbackAnimation$0(FLandroid/graphics/PorterDuffColorFilter;)V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->lambda$resetPressAnimStateForLongClick$2(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private doPressFeedbackAnimation(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-nez v0, :cond_12

    new-instance v0, Lcom/android/launcher3/anim/IconPressAnimManager;

    new-instance v1, Lcom/android/exceptionmonitor/util/d;

    invoke-direct {v1, p0}, Lcom/android/exceptionmonitor/util/d;-><init>(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;)V

    iget-object v2, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/anim/IconPressAnimManager;-><init>(Lcom/android/launcher3/anim/IconPressAnimManager$PressAnimUpdateListener;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    :cond_12
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->doPressFeedbackAnim(Z)V

    return-void
.end method

.method private synthetic lambda$doPressFeedbackAnimation$0(FLandroid/graphics/PorterDuffColorFilter;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_5c

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_5c

    instance-of v0, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v0, :cond_52

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_3a

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    :cond_3a
    if-eqz v0, :cond_4a

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result p0

    if-eqz p0, :cond_4a

    const-string p0, "IconViewPressAnimatorImpl"

    const-string p1, "FancyDrawable don\'t apply colorFilter when icon is disable"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    :cond_4a
    check-cast p1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 p0, 0xff

    invoke-interface {p1, p0, p2}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_5c

    :cond_52
    instance-of p0, p1, Lcom/android/launcher/download/DownloadProgressDrawable;

    if-nez p0, :cond_59

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_59
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5c
    :goto_5c
    return-void
.end method

.method private synthetic lambda$resetPressAnimStateForFloating$3()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimStateForFloatingImp()V

    return-void
.end method

.method private synthetic lambda$resetPressAnimStateForLongClick$2(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimStateForLongClickImp(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic lambda$resetPressAnimatorStateForTouch$1(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimatorStateForTouchImp(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private resetPressAnimStateForFloatingImp()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v1

    if-nez v1, :cond_58

    instance-of v1, v0, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_3c

    iget-object v1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_3d

    :cond_3c
    move-object v1, v2

    :goto_3d
    if-eqz v1, :cond_4d

    invoke-virtual {v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v1

    if-eqz v1, :cond_4d

    const-string v0, "IconViewPressAnimatorImpl"

    const-string v1, "FancyDrawable don\'t apply colorFilter when icon is disable"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_58

    :cond_4d
    check-cast v0, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v1, 0xff

    invoke-interface {v0, v1, v2}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_58

    :cond_55
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_58
    :goto_58
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    return-void
.end method

.method private resetPressAnimStateForLongClickImp(Landroid/graphics/drawable/Drawable;)V
    .registers 4

    if-eqz p1, :cond_46

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_46

    instance-of v0, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string p1, "IconViewPressAnimatorImpl"

    const-string v0, "FancyDrawable don\'t apply colorFilter when icon is disable"

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_46

    :cond_3b
    check-cast p1, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v0, 0xff

    invoke-interface {p1, v0, v1}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_46

    :cond_43
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_46
    :goto_46
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleX(F)V

    return-void
.end method

.method private resetPressAnimatorStateForTouchImp(Landroid/graphics/drawable/Drawable;Z)V
    .registers 6

    if-eqz p1, :cond_4a

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/hightemperatureprotection/HighTemperatureProtectionManager;->isHighTempProtectedEnable()Z

    move-result v0

    if-nez v0, :cond_47

    instance-of v0, p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    goto :goto_2b

    :cond_2a
    move-object v0, v1

    :goto_2b
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v0

    if-eqz v0, :cond_3b

    const-string v0, "IconViewPressAnimatorImpl"

    const-string v1, "FancyDrawable don\'t apply colorFilter when icon is disable"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    :cond_3b
    move-object v0, p1

    check-cast v0, Lcom/oplus/iconctrl/IDarkEffectCtrl;

    const/16 v2, 0xff

    invoke-interface {v0, v2, v1}, Lcom/oplus/iconctrl/IDarkEffectCtrl;->setDarkEffect(ILandroid/graphics/ColorFilter;)V

    goto :goto_47

    :cond_44
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_47
    :goto_47
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_4a
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    iget-object v0, p1, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/high16 v1, 0x437f0000  # 255.0f

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-virtual {p1}, Landroid/widget/TextView;->invalidate()V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getScaleX()F

    move-result p1

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float p1, p1, v0

    if-nez p1, :cond_62

    return-void

    :cond_62
    if-eqz p2, :cond_88

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p1, :cond_88

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    sget-object p2, Lcom/android/launcher3/LauncherAnimUtils;->SCALE_PROPERTY:Landroid/util/FloatProperty;

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput v0, v1, v2

    invoke-static {p1, p2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/anim/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->getResetPressDuration()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_92

    :cond_88
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setScaleY(F)V

    :goto_92
    return-void
.end method

.method private shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p1, :cond_28

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    if-eqz v0, :cond_28

    sget-object v0, Lcom/android/common/util/WidgetUtils;->INSTANCE:Lcom/android/common/util/WidgetUtils;

    invoke-virtual {v0, p1}, Lcom/android/common/util/WidgetUtils;->isWorkProfileItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v0

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result p1

    if-eqz p1, :cond_21

    return v1

    :cond_21
    return p0

    :cond_22
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    move p0, v1

    :cond_28
    return p0
.end method


# virtual methods
.method public getPressAnimationCurrentValue()F
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getScaleX()F

    move-result p0

    return p0

    :cond_b
    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->getCurrentAnimScale()F

    move-result p0

    return p0
.end method

.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 7

    invoke-virtual {p1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_9a

    invoke-static {v0}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_11

    goto/16 :goto_9a

    :cond_11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_91

    if-eq v2, v3, :cond_6a

    const/4 v0, 0x2

    if-eq v2, v0, :cond_59

    const/4 p2, 0x3

    if-eq v2, p2, :cond_22

    goto/16 :goto_9a

    :cond_22
    iget-object p2, p1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_44

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/dragndrop/OplusDragView;

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/OplusDragController;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/launcher3/dragndrop/OplusDragController;->getDragObject()Lcom/android/launcher3/DropTarget$DragObject;

    move-result-object p2

    if-eqz p2, :cond_41

    iget-object v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->originalView:Lcom/android/launcher3/dragndrop/DraggableView;

    :cond_41
    move-object p2, v0

    move-object v0, v2

    goto :goto_45

    :cond_44
    move-object p2, v0

    :goto_45
    if-eqz v0, :cond_49

    if-eq p2, p1, :cond_9a

    :cond_49
    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p1, :cond_55

    invoke-virtual {p1}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_55
    invoke-virtual {p0, v3}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimatorStateForTouch(Z)V

    goto :goto_9a

    :cond_59
    invoke-static {p1, p2}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_9a

    invoke-virtual {p1}, Landroid/widget/TextView;->clearAnimation()V

    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p0, :cond_9a

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    goto :goto_9a

    :cond_6a
    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-direct {p0, v1}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->doPressFeedbackAnimation(Z)V

    :cond_73
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p2

    if-gt p2, v3, :cond_89

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isAccessibilityDynamicEffectDisabled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_89

    iget-object p1, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    iget-boolean p1, p1, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p1, :cond_9a

    :cond_89
    iget-object p0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz p0, :cond_9a

    invoke-virtual {p0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    goto :goto_9a

    :cond_91
    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->shouldPlayPressAnimation(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p1

    if-eqz p1, :cond_9a

    invoke-direct {p0, v3}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->doPressFeedbackAnimation(Z)V

    :cond_9a
    :goto_9a
    return v1
.end method

.method public resetPressAnimStateForFloating()V
    .registers 4

    const-string v0, "Icon"

    const-string v1, "IconViewPressAnimatorImpl"

    const-string/jumbo v2, "resetPressAnimStateForFloating"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_2a

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_27

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroidx/appcompat/widget/g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2a

    :cond_27
    invoke-direct {p0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimStateForFloatingImp()V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public resetPressAnimStateForLongClick()V
    .registers 4

    const-string v0, "Icon"

    const-string v1, "IconViewPressAnimatorImpl"

    const-string/jumbo v2, "resetPressAnimStateForLongClick"

    invoke-static {v0, v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mBtvPressAnimManager:Lcom/android/launcher3/anim/IconPressAnimManager;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/launcher3/anim/IconPressAnimManager;->cancel()V

    :cond_16
    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_35

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher/widget/b;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher/widget/b;-><init>(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_38

    :cond_35
    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimStateForLongClickImp(Landroid/graphics/drawable/Drawable;)V

    :goto_38
    return-void
.end method

.method public resetPressAnimatorStateForTouch(Z)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->mView:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v1, v2, :cond_1f

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/z0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_22

    :cond_1f
    invoke-direct {p0, v0, p1}, Lcom/android/launcher3/icons/anim/IconViewPressAnimatorImpl;->resetPressAnimatorStateForTouchImp(Landroid/graphics/drawable/Drawable;Z)V

    :goto_22
    return-void
.end method
