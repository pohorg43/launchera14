.class public Lcom/android/launcher3/OplusBubbleTextView;
.super Lcom/android/launcher3/BubbleTextView;
.source ""

# interfaces
.implements Lcom/android/launcher/batchdrag/ISelectableBubbleTextView;
.implements Lcom/android/launcher/IHorizontalIcon;
.implements Lcom/android/launcher3/util/ViewPool$Reusable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/OplusBubbleTextView$ViewAlphaAnimatorCallBacks;
    }
.end annotation


# static fields
.field private static final FLOAT_0:F = 0.0f

.field private static final ICON_SWITCH_ANIMATION_DURATION:J = 0x1f4L

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_VIEW_ALPHA:I = 0x1

.field private static final MIN_ALPHA:I = 0x0

.field private static final POINTER_AREA_ENTER_HOTSPOT:I = 0x2

.field private static final POINTER_AREA_ENTER_VIEW:I = 0x1

.field private static final POINTER_AREA_EXIT_VIEW:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OplusBubbleTextView"

.field private static final TEXT_VISIBLE_THRESHOLD:F = 0.5f


# instance fields
.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mClickOptsForRecentReverse:Ljava/lang/Runnable;

.field private mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mDragSource:Lcom/android/launcher3/DragSource;

.field private mFolder:Lcom/android/launcher3/folder/Folder;

.field private mHasInitSpring:Z

.field private mIconViewDrawable:Landroid/graphics/drawable/Drawable;

.field public mIconVisibleSizePx:I

.field private mIsRTL:Z

.field private mIsRecoveryStatus:Z

.field private mOnlyOneTimeEnter:Z

.field private mOnlyOneTimeExit:Z

.field private mPointStatus:I

.field private mPreEvent:[F

.field private mSelectedIconRect:Landroid/graphics/Rect;

.field private mShadowColorIconFall:I

.field private mShadowR:F

.field private mShadowX:F

.field private mShadowY:F

.field private mSlowSpeedThreshold:F

.field private mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/OplusBubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mHasInitSpring:Z

    iput p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iput-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    const/4 p3, 0x2

    new-array v0, p3, [F

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    const/high16 v0, 0x40a00000  # 5.0f

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSlowSpeedThreshold:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    const-string v1, "OplusBubbleTextView"

    if-eqz v0, :cond_3c

    invoke-static {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "fold screen expand state set mLayoutHorizontal false"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    :cond_3c
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    iget-boolean p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    iput-boolean p2, p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->leftAlign:Z

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget p2, p1, Lcom/android/launcher3/OplusDeviceProfile;->mIconVisiableSizePx:I

    iput p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    iget p2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/high16 v0, 0x3f800000  # 1.0f

    const/4 v2, 0x1

    if-eqz p2, :cond_70

    const/16 v3, 0x9

    if-ne p2, v3, :cond_58

    goto :goto_70

    :cond_58
    if-ne p2, v2, :cond_5f

    const/4 p2, 0x0

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_7e

    :cond_5f
    if-ne p2, p3, :cond_7e

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f070834

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    goto :goto_7e

    :cond_70
    :goto_70
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v3, 0x7f07113e

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    invoke-virtual {p0, p2, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_7e
    :goto_7e
    iget-object p2, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, p2, Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_8d

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-static {p2}, Lcom/android/launcher3/Launcher;->cast(Lcom/android/launcher3/views/ActivityContext;)Lcom/android/launcher3/Launcher;

    move-result-object p2

    invoke-interface {v0, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->setLauncher(Lcom/android/launcher3/views/ActivityContext;)V

    :cond_8d
    iget p2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-eqz p2, :cond_99

    const/16 v0, 0x8

    if-eq p2, v0, :cond_99

    if-eq p2, v2, :cond_99

    if-ne p2, p3, :cond_b8

    :cond_99
    iget-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    if-eq p2, v0, :cond_b8

    const-string p2, "BubbleTextView mLayoutHorizontal = "

    invoke-static {p2}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isLandscape "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    invoke-static {p2, v0, v1}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    :cond_b8
    iget-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p1, :cond_c8

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    if-eqz p1, :cond_c3

    const/16 p1, 0x15

    goto :goto_c5

    :cond_c3
    const/16 p1, 0x13

    :goto_c5
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_c8
    sget-object p1, Lcom/android/launcher3/touch/ItemClickHandler;->TOUCH_LISTENER:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isAppNameShowInTwoLines()Z

    move-result p1

    if-eqz p1, :cond_dc

    invoke-virtual {p0, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_df

    :cond_dc
    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_df
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result p1

    if-eqz p1, :cond_f5

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    :cond_f5
    return-void
.end method

.method public static synthetic access$002(Lcom/android/launcher3/OplusBubbleTextView;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    return-object p1
.end method

.method private adjustCompoundDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 6

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getRegularCompoundDrawablePadding()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_23

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v1}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingOriginalPx:I

    const-string v2, "Fold screen expanded in supper power workspace drawable padding:"

    const-string v3, "OplusBubbleTextView"

    invoke-static {v2, v1, v3}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_23
    if-eqz p1, :cond_29

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_29
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_35

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    :cond_35
    return-void
.end method

.method public static synthetic d(Lcom/android/launcher3/OplusBubbleTextView;Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusBubbleTextView;->lambda$setIconVisibleForFIView$0(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private doShadowAnimByPosition(ILandroid/view/MotionEvent;)V
    .registers 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_2b

    if-eq p1, v0, :cond_8

    goto :goto_57

    :cond_8
    iget p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-ne p1, v2, :cond_25

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    if-nez p1, :cond_25

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, v2, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    iput-boolean v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iput-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    :cond_25
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->upgradeTranslation(Landroid/view/MotionEvent;)V

    goto :goto_57

    :cond_2b
    iget p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-ne p1, v0, :cond_52

    iput v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    if-nez p1, :cond_52

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setLeftLocation(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-direct {p0, p2}, Lcom/android/launcher3/OplusBubbleTextView;->isSpeedSlow(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-interface {p1, v1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->playSpiritAnimation(ZZ)V

    iput-boolean v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    iput-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setTranslationTo(F)V

    :cond_52
    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->prepareForShadowAnim(Landroid/view/MotionEvent;)V

    :goto_57
    return-void
.end method

.method private drawSatelliteBadge(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/icons/FastBitmapDrawable;)V
    .registers 6

    invoke-static {}, Lcom/android/launcher/model/SatelliteStateManage;->getInstance()Lcom/android/launcher/model/SatelliteStateManage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/SatelliteStateManage;->isDisplaySatelliteBadge()Z

    move-result v0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_15

    const-string v1, " drawSatelliteMarkers isDisplaySatelliteBadge = "

    const-string v2, "OplusBubbleTextView"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_15
    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/common/util/SatelliteUtils;->INSTANCE:Lcom/android/common/util/SatelliteUtils;

    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/common/util/SatelliteUtils;->satelliteBadgeDrawable(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_27

    :cond_23
    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :goto_27
    return-void
.end method

.method private getColorIconBounds(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 5

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p0, :cond_1f

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result p0

    if-eqz p0, :cond_1a

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr p0, v0

    sub-int v0, p0, p3

    goto :goto_28

    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    goto :goto_26

    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    sub-int/2addr p0, p3

    div-int/lit8 v0, p0, 0x2

    :goto_26
    add-int p0, v0, p3

    :goto_28
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result p1

    add-int/2addr p3, p1

    invoke-virtual {p2, v0, p1, p0, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private getRegularCompoundDrawablePadding()I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsIconDrawablePaddingPx:I

    return p0

    :cond_12
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_20

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getInitCompoundDrawablePaddingOfFolder(Lcom/android/launcher3/DeviceProfile;)I

    move-result p0

    return p0

    :cond_20
    iget p0, v0, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    return p0
.end method

.method private initFancyIcon(Landroid/content/ComponentName;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .registers 10

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/FancyIconKey;

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    invoke-interface {v2, p3, v3}, Lcom/android/launcher3/IBubbleTextViewExt;->getFancyIconLocation(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)Lcom/android/launcher/FancyIconKey$AppLocationType;

    move-result-object v2

    invoke-direct {v1, p3, v2}, Lcom/android/launcher/FancyIconKey;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/FancyIconKey$AppLocationType;)V

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v2, v2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    const/4 v3, 0x1

    const-string v4, "OplusBubbleTextView"

    const/4 v5, 0x0

    if-eqz v2, :cond_7d

    iget-object v2, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v2, v1}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcon(Lcom/android/launcher/FancyIconKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_5d

    const-string v2, "initFancyIcon when TaskbarActivityContext --cache miss!!!"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_40

    iget-object v2, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget v4, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-interface {v2, p1, v4, v4}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCacheForTaskBarFolderIcon(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_62

    :cond_40
    const/4 v4, 0x5

    if-ne v2, v4, :cond_50

    iget-object v2, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget v4, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-interface {v2, p1, v4, v4}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCacheForTaskBar(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_62

    :cond_50
    iget-object v2, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget v4, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-interface {v2, p1, v4, v4}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCacheForTaskBar(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_62

    :cond_5d
    const-string p1, "initFancyIcon when TaskbarActivityContext  --cache hit!!!"

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_62
    instance-of p1, v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz p1, :cond_c4

    move-object p1, v2

    check-cast p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResume()V

    invoke-interface {p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResumeThread()V

    if-eqz p2, :cond_74

    invoke-static {p3, p2, p1}, Lcom/android/common/util/IconUtils;->applyFancyIconDarkEffect(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;Lcom/oplus/iconctrl/IAppsFancyDrawable;)V

    :cond_74
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0, v2, v1}, Lcom/android/launcher3/icons/IIconCacheExt;->putFancyIcon(Landroid/graphics/drawable/Drawable;Lcom/android/launcher/FancyIconKey;)V

    goto :goto_c5

    :cond_7d
    iget-object v2, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {v2, v1}, Lcom/android/launcher3/icons/IIconCacheExt;->getFancyIcon(Lcom/android/launcher/FancyIconKey;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_97

    const-string v2, "initFancyIcon when Launcher --cache miss!!!"

    invoke-static {v4, v2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iget v4, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-interface {v2, p1, v4, v4}, Lcom/android/launcher3/icons/IIconCacheExt;->loadFancyIconCache(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_9c

    :cond_97
    const-string p1, "initFancyIcon when Launcher --cache hit!!!"

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9c
    instance-of p1, v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz p1, :cond_c4

    move-object p1, v2

    check-cast p1, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResume()V

    invoke-interface {p1}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onResumeThread()V

    if-eqz p2, :cond_ae

    invoke-static {p3, p2, p1}, Lcom/android/common/util/IconUtils;->applyFancyIconDarkEffect(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;Lcom/oplus/iconctrl/IAppsFancyDrawable;)V

    :cond_ae
    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_be

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->setFancyIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_be
    iget-object p0, v0, Lcom/android/launcher3/icons/IconCache;->sOPlusIconCacheExtV2:Lcom/android/launcher3/icons/IIconCacheExt;

    invoke-interface {p0, v2, v1}, Lcom/android/launcher3/icons/IIconCacheExt;->putFancyIcon(Landroid/graphics/drawable/Drawable;Lcom/android/launcher/FancyIconKey;)V

    goto :goto_c5

    :cond_c4
    move v3, v5

    :goto_c5
    return v3
.end method

.method private isLimitedIconEnabled()Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    if-eq v0, v1, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_30

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_30

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v1, 0x0

    :cond_30
    :goto_30
    return v1
.end method

.method private isSpeedSlow(Landroid/view/MotionEvent;)Z
    .registers 8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-double v0, v0

    float-to-double v4, p1

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSlowSpeedThreshold:F

    float-to-double p0, p0

    cmpg-double p0, v0, p0

    if-gez p0, :cond_2a

    move v2, v3

    :cond_2a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "speed is : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "speed is Slow ？ "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBubbleTextView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method private synthetic lambda$setIconVisibleForFIView$0(Landroid/graphics/drawable/Drawable;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIViewImp(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method private resetWhenHoverExit()V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-nez v0, :cond_c

    const-string p0, "OplusBubbleTextView"

    const-string v0, "already reset by screen off"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPointerIcon(Landroid/view/PointerIcon;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isPointerAnimRunning()Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->cancelPointerAnim()V

    goto :goto_30

    :cond_26
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->setDrawShadowFlag(Z)V

    :goto_30
    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    iget-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    if-eqz v1, :cond_3a

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    :cond_3a
    return-void
.end method

.method private setIconVisibleForFIViewImp(Landroid/graphics/drawable/Drawable;Z)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->adjustCompoundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0, v1, v1, p1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :cond_10
    invoke-virtual {p0, p1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_17

    :cond_14
    invoke-virtual {p0, v1, p1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_17
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    iput-boolean p2, p0, Lcom/android/launcher3/BubbleTextView;->mIsIconVisible:Z

    return-void
.end method

.method private updateAlphaValue(I)V
    .registers 2

    if-nez p1, :cond_7

    const/high16 p1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setAlpha(F)V

    :cond_7
    return-void
.end method

.method private updateCustomizeAppTitle(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 4

    if-nez p1, :cond_a

    const-string p0, "OplusBubbleTextView"

    const-string p1, " updateCustomizeAppTitle info is empty."

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_a
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_41

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_41

    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_33

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    goto :goto_34

    :cond_33
    move-object v0, v1

    :goto_34
    iget-object p0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/launcher3/shortcuts/OplusShortcutKeyInjector;->injectMakeTitle(Landroid/content/pm/ShortcutInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lcom/android/launcher3/model/data/ItemInfo;->setTitle(Ljava/lang/CharSequence;Lcom/android/launcher3/model/ModelWriter;)V

    :cond_41
    return-void
.end method


# virtual methods
.method public applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    iput-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->adjustCompoundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRTL:Z

    if-eqz v0, :cond_1a

    invoke-virtual {p0, v2, v2, p1, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    :cond_1a
    invoke-virtual {p0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_21

    :cond_1e
    invoke-virtual {p0, v2, p1, v2, v2}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_21
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    return-void
.end method

.method public applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->overrideApplyDotStateWithoutSuper(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->verifyHighRes()V

    instance-of v0, p1, Lcom/android/launcher/model/data/PromiseAppInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_32

    move-object v0, p1

    check-cast v0, Lcom/android/launcher/model/data/PromiseAppInfo;

    iget-object v2, v0, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v2}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget v0, v0, Lcom/android/launcher/model/data/PromiseAppInfo;->level:I

    invoke-interface {v2, v0, v1, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyOplusProgressLevel(IZZ)V

    goto :goto_4a

    :cond_21
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_2a

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_2a
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    goto :goto_4a

    :cond_32
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-nez v0, :cond_4a

    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_43

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->applyProgressLevel()Lcom/android/launcher3/graphics/PreloadIconDrawable;

    :cond_43
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    :cond_4a
    :goto_4a
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/OplusBubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyFromApplicationInfoExitPoint(Lcom/android/launcher3/model/data/AppInfo;)V

    return-void
.end method

.method public applyFromWorkspaceItem(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V
    .registers 7

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    const/4 v1, 0x0

    if-nez p2, :cond_13

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->hasPromiseIconUi()Z

    move-result v2

    if-eqz v2, :cond_23

    :cond_13
    const/4 v2, 0x1

    instance-of v3, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v3, :cond_1e

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0, p1}, Lcom/android/launcher/download/DownloadAppsManager;->checkNeedDownloadAnimation(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    :cond_1e
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p2, v2, v1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyPromiseState(ZZZ)V

    :cond_23
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v0}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v0

    if-nez v0, :cond_35

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->applyLoadingState(Z)V

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/BubbleTextView;->setDownloadStateContentDescription(Lcom/android/launcher3/model/data/ItemInfoWithIcon;I)V

    :cond_35
    invoke-virtual {p0, p1, v1}, Lcom/android/launcher3/OplusBubbleTextView;->applyDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/IBubbleTextViewExt;->applyFromWorkspaceItemExitPoint(Lcom/android/launcher3/model/data/WorkspaceItemInfo;Z)V

    return-void
.end method

.method public applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 12

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->updateCustomizeAppTitle(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    :cond_c
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v2, 0x5

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v0, :cond_2e

    if-eq v0, v3, :cond_2e

    if-eq v0, v2, :cond_2e

    const/16 v5, 0x8

    if-eq v0, v5, :cond_2e

    if-eq v0, v4, :cond_2e

    const/16 v5, 0x9

    if-ne v0, v5, :cond_2c

    goto :goto_2e

    :cond_2c
    move v0, v1

    goto :goto_2f

    :cond_2e
    :goto_2e
    move v0, v4

    :goto_2f
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3d

    if-eqz v0, :cond_3d

    move v0, v4

    goto :goto_3e

    :cond_3d
    move v0, v1

    :goto_3e
    iget-object v5, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v5, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    invoke-static {p1, v1}, Lcom/android/launcher/folder/download/FolderRecommendUtils;->isRecommendItemInfo(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Z)Z

    move-result v5

    if-eqz v5, :cond_5f

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfo;->mInstallState:Lcom/android/launcher/download/InstallState;

    invoke-virtual {v5}, Lcom/android/launcher/download/InstallState;->isFromOplusAppStore()Z

    move-result v5

    if-nez v5, :cond_5f

    new-instance v5, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/android/launcher/folder/download/view/RecommendDotDrawable;->applyScaleAndOffset()V

    invoke-virtual {v0, v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_5f
    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_86

    iget-object v5, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher/theme/LauncherIconConfig;->getInstance(Landroid/content/res/Resources;)Lcom/android/launcher/theme/LauncherIconConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher/theme/LauncherIconConfig;->getIconConfig()Lcom/oplus/uxicon/helper/IconConfig;

    move-result-object v6

    invoke-static {v5, v0, v6}, Lcom/oplus/uxicon/ui/util/UxIconLoaderHelper;->handleIconThemeDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/oplus/uxicon/helper/IconConfig;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_92

    :cond_86
    sget-object v5, Lcom/android/common/util/BitmapUtils;->INSTANCE:Lcom/android/common/util/BitmapUtils;

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lcom/android/common/util/BitmapUtils;->convertToThemeStyle(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_92
    new-instance v5, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-direct {v5, v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v5

    :cond_98
    iget-object v5, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v6, v5, Lcom/android/launcher/Launcher;

    const-string v7, "OplusBubbleTextView"

    if-eqz v6, :cond_100

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v5, v2, 0x4

    if-nez v5, :cond_ab

    and-int/2addr v2, v4

    if-eqz v2, :cond_16a

    :cond_ab
    instance-of v2, v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_16a

    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_16a

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher/theme/LauncherIconConfig;->getUXScalar(Landroid/content/res/Resources;)F

    move-result v2

    iget-object v5, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v5, v5, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v5, v5, 0x4

    const/high16 v6, 0x3f800000  # 1.0f

    if-eqz v5, :cond_dd

    sget-object v5, Lcom/android/common/util/CacheUtils;->INSTANCE:Lcom/android/common/util/CacheUtils;

    invoke-virtual {v5}, Lcom/android/common/util/CacheUtils;->getCloneAppDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    div-float/2addr v6, v2

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v9, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v2, v8, v9}, Lcom/android/common/util/IconUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_f2

    :cond_dd
    invoke-virtual {v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    div-float/2addr v6, v2

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v9, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v2, v8, v9}, Lcom/android/common/util/IconUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;FILandroid/graphics/Bitmap$Config;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    :goto_f2
    if-eqz v2, :cond_16a

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v2, v0

    check-cast v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    goto :goto_16a

    :cond_100
    instance-of v5, v5, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v5, :cond_16a

    iget v5, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-ne v5, v2, :cond_16a

    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v2, v2, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_116

    const-string v2, "in case of Clone App , do nothing"

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14e

    :cond_116
    and-int/2addr v2, v4

    if-eqz v2, :cond_11f

    const-string v2, "in case of WorkProfile , do nothing"

    invoke-static {v7, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_14e

    :cond_11f
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v2, v4, :cond_14e

    instance-of v2, v0, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v2, :cond_14e

    move-object v2, v0

    check-cast v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-virtual {v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-nez v5, :cond_131

    goto :goto_14e

    :cond_131
    sget-object v5, Lcom/android/common/util/UxDrawableScaleUtil;->INSTANCE:Lcom/android/common/util/UxDrawableScaleUtil;

    iget-object v5, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v2}, Lcom/oplus/icons/OplusFastBitmapDrawable;->getBadge()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAppIconActualSize(Landroid/content/Context;)I

    move-result v6

    invoke-static {v5, v2, v6, v1}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setBadge(Landroid/graphics/drawable/Drawable;)V

    :cond_14e
    :goto_14e
    sget-object v2, Lcom/android/common/util/UxDrawableScaleUtil;->INSTANCE:Lcom/android/common/util/UxDrawableScaleUtil;

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v5, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAppIconActualSize(Landroid/content/Context;)I

    move-result v5

    invoke-static {v2, v0, v5, v1}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIcon(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v2, Lcom/oplus/icons/OplusFastBitmapDrawable;

    invoke-static {v0}, Lcom/android/common/util/BitmapUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oplus/icons/OplusFastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v2

    :cond_16a
    :goto_16a
    iget v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v2, :cond_174

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->isExpandItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_185

    :cond_174
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isNewInstallingOrUpgradingApp()Z

    move-result v2

    if-nez v2, :cond_185

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_185

    invoke-direct {p0, v2, v0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->initFancyIcon(Landroid/content/ComponentName;Lcom/android/launcher3/icons/FastBitmapDrawable;Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result v2

    goto :goto_186

    :cond_185
    move v2, v1

    :goto_186
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v5

    if-eqz v5, :cond_1b0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "applyIconAndLabel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", hasFancyIcon: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", iconDrawable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1b0
    if-eqz v2, :cond_1cf

    iget-object v5, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/launcher3/util/Themes;->isThemedIconEnabled(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_1cf

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v2, :cond_1ce

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v2}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPause()V

    invoke-interface {v2}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->onPauseThread()V

    :cond_1ce
    move v2, v1

    :cond_1cf
    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1da

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_1db

    :cond_1da
    const/4 v5, 0x0

    :goto_1db
    if-eqz v5, :cond_1eb

    iget-object v6, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher/AppLimitedStartUpManager;->isAppLimited(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1eb

    move v6, v4

    goto :goto_1ec

    :cond_1eb
    move v6, v1

    :goto_1ec
    if-eqz v6, :cond_202

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextView;->isLimitedIconEnabled()Z

    move-result v6

    if-eqz v6, :cond_202

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getLimitedDrawable(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_207

    :cond_202
    if-nez v2, :cond_207

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_207
    :goto_207
    invoke-static {}, Lcom/android/launcher/NewUpdatedAppsManager;->getInstance()Lcom/android/launcher/NewUpdatedAppsManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher/NewUpdatedAppsManager;->isNewUpdatedApp(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mIsNewUpdated:Z

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->isOplusExpansionDownloadingApp()Z

    move-result v2

    if-eqz v2, :cond_21b

    iget v2, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-ne v2, v3, :cond_220

    :cond_21b
    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :cond_220
    iget-object v2, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_241

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_23c

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120224

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    aput-object v6, v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_23e

    :cond_23c
    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    :goto_23e
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_241
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportTTSatelliteDevice()Z

    move-result v1

    if-eqz v1, :cond_25a

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v1, :cond_25a

    iget v1, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-nez v1, :cond_25a

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_25a

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->drawSatelliteBadge(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Lcom/android/launcher3/icons/FastBitmapDrawable;)V

    :cond_25a
    instance-of p1, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz p1, :cond_263

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, v4}, Lcom/android/launcher3/IBubbleTextViewExt;->setTitleShadowEnable(Z)V

    :cond_263
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isSupportMinimumMemory()Z

    move-result v1

    if-nez v1, :cond_2a0

    iget v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    if-eq v1, v4, :cond_2a0

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    if-eqz v1, :cond_292

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    if-eqz v2, :cond_292

    iget-object v2, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    invoke-virtual {v1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/OplusDeviceProfile;->mStyleBoundOffset:I

    invoke-static {v2, v0, v3, v4, v1}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZI)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconViewDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2a0

    :cond_292
    iget-object v1, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    invoke-static {v1, v0, v2, v4}, Lcom/android/common/util/UxDrawableScaleUtil;->scaleToLargestIconForAsync(Landroid/content/res/Resources;Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconViewDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2a0
    :goto_2a0
    if-eqz p1, :cond_2a7

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v4}, Lcom/android/launcher3/IBubbleTextViewExt;->setTitleShadowEnable(Z)V

    :cond_2a7
    return-void
.end method

.method public applyLimitedState(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyLimitedState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLimitedStart: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    const-string v2, "OplusBubbleTextView"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mLimitedStart:Z

    if-eqz v0, :cond_2f

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/AppLimitedStartUpManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/AppLimitedStartUpManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher/AppLimitedStartUpManager;->getLimitedDrawable(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/graphics/drawable/Drawable;)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_32

    :cond_2f
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->applyIconAndLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    :goto_32
    return-void
.end method

.method public canHoverAnimEnable()Z
    .registers 6

    instance-of v0, p0, Lcom/android/launcher/powersave/view/SuperPowerSaveBubbleTextView;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    :cond_6
    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isDisableIconHoverAnim()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/android/launcher3/popup/OplusPopupContainerWithArrow;->isPopupDismissed()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v0

    const/16 v3, 0x8

    if-eq v0, v3, :cond_34

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->getIconDisplay()I

    move-result v0

    if-ne v0, v2, :cond_32

    goto :goto_34

    :cond_32
    move v0, v1

    goto :goto_35

    :cond_34
    :goto_34
    move v0, v2

    :goto_35
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v3, :cond_7b

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v3, v3, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v3, :cond_4b

    const/16 v4, 0xca

    if-ne v3, v4, :cond_54

    :cond_4b
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_54

    if-eqz v0, :cond_54

    return v2

    :cond_54
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v3, :cond_7b

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v3, p0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-ne v3, v2, :cond_7b

    sget-object v3, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isHeytapMarketShortcutType(Landroid/content/pm/ShortcutInfo;)Z

    move-result p0

    if-eqz p0, :cond_7b

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result p0

    if-eqz p0, :cond_7b

    if-eqz v0, :cond_7b

    move v1, v2

    :cond_7b
    return v1

    :cond_7c
    const-string p0, "OplusBubbleTextView"

    const-string v0, "Popu memu has shown, do nothing"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public clearShadowLayer()V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerColor()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowColorIconFall:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerRadius()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowR:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerDx()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowX:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->getShadowLayerDy()F

    move-result v0

    iput v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowY:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->clearShadowLayer()V

    return-void
.end method

.method public clickForRecentAnimReverse()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->createTextAlphaAnimator(Z)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/launcher3/OplusBubbleTextView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/OplusBubbleTextView$1;-><init>(Lcom/android/launcher3/OplusBubbleTextView;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    return-object p0
.end method

.method public dispatchSetSelected(Z)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->dispatchSetSelected(Z)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onDispatchSetSelected(Z)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBubbleTextView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->overrideDrawDotIfNecessaryWithoutSuper(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getDragSource()Lcom/android/launcher3/DragSource;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDragSource:Lcom/android/launcher3/DragSource;

    return-object p0
.end method

.method public getFolder()Lcom/android/launcher3/folder/Folder;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-object p0
.end method

.method public getIconBounds(Landroid/graphics/Rect;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    invoke-direct {p0, p0, p1, v0}, Lcom/android/launcher3/OplusBubbleTextView;->getColorIconBounds(Landroid/view/View;Landroid/graphics/Rect;I)V

    return-void
.end method

.method public getIconDisplay()I
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result p0

    return p0
.end method

.method public getIconRect(Landroid/graphics/Rect;)V
    .registers 2

    if-nez p1, :cond_7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public getIconViewDrawable()Landroid/graphics/drawable/Drawable;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconViewDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getInitCompoundDrawablePaddingOfFolder(Lcom/android/launcher3/DeviceProfile;)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_1b

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1b

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070f98

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1b
    iget p0, p1, Lcom/android/launcher3/DeviceProfile;->folderChildDrawablePaddingPx:I

    return p0
.end method

.method public getInitIconSize(Landroid/content/res/TypedArray;I)I
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v0, v0, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v0, :cond_2f

    iget p1, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f070f9a

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0

    :cond_1b
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2e

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAppIconActualSize(Landroid/content/Context;)I

    move-result p0

    const-string p1, "getInitIconSize : "

    const-string p2, "OplusBubbleTextView"

    invoke-static {p1, p0, p2}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    return p0

    :cond_2e
    return p2

    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->getInitIconSize(Landroid/content/res/TypedArray;I)I

    move-result p0

    return p0
.end method

.method public getRealIconBounds(Landroid/graphics/Rect;)V
    .registers 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->getIconBounds(Landroid/graphics/Rect;)V

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mIconSize:I

    iget p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    iget p0, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr p0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v0

    iget v2, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v0

    invoke-virtual {p1, p0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public getSelectedIconRect()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSelectedIconRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method public isLayoutHorizontal()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    return p0
.end method

.method public isTextVisible()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v0, 0x3f000000  # 0.5f

    cmpl-float p0, p0, v0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public onAppUpdateDotSwitchChange()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    invoke-interface {v0, p0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6

    const-string v0, "OplusBubbleTextView#onDraw("

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->canHoverAnimEnable()Z

    move-result v3

    if-eqz v3, :cond_46

    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result v3

    if-eqz v3, :cond_46

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v3

    if-nez v3, :cond_41

    sget-object v3, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->recoveryIconWhenEnterToggleBar()V

    :cond_46
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BubbleTextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_1f

    const-string p1, "Current mode is TouchMode? "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/TextView;->isInTouchMode()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OplusBubbleTextView"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    if-nez v0, :cond_79

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result v0

    if-eqz v0, :cond_79

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_79

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_27

    goto :goto_79

    :cond_27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mHasInitSpring:Z

    const/4 v3, 0x1

    if-nez v2, :cond_37

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v2}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->initSpiritAnimParams()V

    iput-boolean v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mHasInitSpring:Z

    :cond_37
    const/4 v2, 0x7

    if-eq v1, v2, :cond_55

    const/16 p1, 0x9

    if-eq v1, p1, :cond_47

    const/16 p1, 0xa

    if-eq v1, p1, :cond_43

    goto :goto_77

    :cond_43
    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextView;->resetWhenHoverExit()V

    goto :goto_77

    :cond_47
    iget-object p1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->updateIconBounds()V

    iput v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    iget-boolean p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    if-eqz p1, :cond_77

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    goto :goto_77

    :cond_55
    iget v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    if-eqz v1, :cond_78

    iget-boolean v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    if-eqz v1, :cond_5e

    goto :goto_78

    :cond_5e
    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, p0, p1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->whereIsThePointer(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)I

    move-result v1

    invoke-direct {p0, v1, p1}, Lcom/android/launcher3/OplusBubbleTextView;->doShadowAnimByPosition(ILandroid/view/MotionEvent;)V

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    aput v2, v1, v0

    iget-object p0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPreEvent:[F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, p0, v3

    :cond_77
    :goto_77
    return v3

    :cond_78
    :goto_78
    return v0

    :cond_79
    :goto_79
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onRecycle()V
    .registers 1

    return-void
.end method

.method public onScreenStateChanged(I)V
    .registers 3

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1b

    if-nez p1, :cond_1b

    iget p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mPointStatus:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_10

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1b

    :cond_10
    const-string p1, "OplusBubbleTextView"

    const-string/jumbo v0, "reset hover cover status."

    invoke-static {p1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher3/OplusBubbleTextView;->resetWhenHoverExit()V

    :cond_1b
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    if-eqz v1, :cond_d

    if-nez v0, :cond_d

    invoke-interface {v1, p1}, Landroidx/core/util/Consumer;->accept(Ljava/lang/Object;)V

    :cond_d
    instance-of v0, p0, Lcom/android/launcher3/OplusBubbleTextViewSubscribe;

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->handleOnTouchEvent(Landroid/view/MotionEvent;)Lcom/android/launcher3/icons/touch/TouchEventResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->isHandled()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->isInterceptBubbleTextViewSuperMethod()Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_23
    invoke-virtual {v0}, Lcom/android/launcher3/icons/touch/TouchEventResult;->isHandled()Z

    move-result p0

    return p0

    :cond_28
    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public prepareForRecentAnimReverse(Landroidx/core/util/Consumer;Ljava/lang/Runnable;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/core/util/Consumer<",
            "Landroid/view/MotionEvent;",
            ">;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "prepareForRecentAnimReverse callers:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBubbleTextView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object p2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public reset()V
    .registers 3

    invoke-super {p0}, Lcom/android/launcher3/BubbleTextView;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public resetPointer()V
    .registers 2

    iget-object v0, p0, Landroid/widget/TextView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/PointerIcon;->getDefaultIcon(Landroid/content/Context;)Landroid/view/PointerIcon;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPointerIcon(Landroid/view/PointerIcon;)V

    return-void
.end method

.method public resetRecentReverseOpts()V
    .registers 3

    const-string v0, "OplusBubbleTextView"

    const-string/jumbo v1, "resetRecentReverseOpts"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDownTouchOptsForRecentReverse:Landroidx/core/util/Consumer;

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mClickOptsForRecentReverse:Ljava/lang/Runnable;

    return-void
.end method

.method public resetShadowLayer()V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowR:F

    iget v1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowX:F

    iget v2, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowY:F

    iget v3, p0, Lcom/android/launcher3/OplusBubbleTextView;->mShadowColorIconFall:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public setDragSource(Lcom/android/launcher3/DragSource;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mDragSource:Lcom/android/launcher3/DragSource;

    return-void
.end method

.method public setFolder(Lcom/android/launcher3/folder/Folder;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mFolder:Lcom/android/launcher3/folder/Folder;

    return-void
.end method

.method public setForceHideDot(Z)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->overrideSetForceHideDotWithoutSuper(Z)V

    return-void
.end method

.method public setIconVisibleForFIView(Z)V
    .registers 6

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    if-eqz v0, :cond_33

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "view is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", setIconVisibleForFIView, visible = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Callers = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OplusBubbleTextView"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_33
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->resetAllFlagImmediately(Z)V

    const/4 v0, 0x0

    if-eqz p1, :cond_3f

    iget-object v2, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_44

    :cond_3f
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    :goto_44
    iget-object v3, p0, Lcom/android/launcher3/BubbleTextView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_49

    goto :goto_4a

    :cond_49
    move v1, v0

    :goto_4a
    iput-boolean v1, p0, Lcom/android/launcher3/BubbleTextView;->mDisableRelayout:Z

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_65

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/z0;

    invoke-direct {v1, p0, v2, p1}, Lcom/android/launcher3/z0;-><init>(Lcom/android/launcher3/OplusBubbleTextView;Landroid/graphics/drawable/Drawable;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_68

    :cond_65
    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIViewImp(Landroid/graphics/drawable/Drawable;Z)V

    :goto_68
    return-void
.end method

.method public setIconVisibleSizePx(I)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIconVisibleSizePx:I

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public setSelectedIconRect(Landroid/graphics/Rect;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    iput-object p1, p0, Lcom/android/launcher3/OplusBubbleTextView;->mSelectedIconRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .registers 4

    if-eqz p1, :cond_11

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v0, :cond_11

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/OplusLauncherModel;->checkItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v1, p0, v0}, Lcom/android/launcher3/IBubbleTextViewExt;->checkItemInfoRender(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setTextAlpha(F)V
    .registers 2

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextAlpha(F)V

    return-void
.end method

.method public setTextAppearance(I)V
    .registers 2

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->onTextAppearanceChanged(I)V

    return-void
.end method

.method public setTextVisibility()V
    .registers 2

    invoke-virtual {p0}, Lcom/android/launcher3/OplusBubbleTextView;->shouldTextBeVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBubbleTextView;->setTextVisibility(Z)V

    return-void
.end method

.method public setTextVisibility(Z)V
    .registers 4

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/common/util/FontManager;

    iget v0, v0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_14

    const/4 p1, 0x0

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mTextAlphaPropertyAnimator:Landroid/animation/ObjectAnimator;

    :cond_26
    if-eqz p1, :cond_41

    iget v0, p0, Lcom/android/launcher3/BubbleTextView;->mTextAlpha:F

    const/high16 v1, 0x437f0000  # 255.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/icons/anim/ITextAlphaAnimator;->textInVisibleAnimation()Z

    move-result v0

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    goto :goto_49

    :cond_41
    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->cancelTextAlphaAnimator()V

    invoke-super {p0, p1}, Lcom/android/launcher3/BubbleTextView;->setTextVisibility(Z)V

    :cond_49
    :goto_49
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz v1, :cond_60

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    if-eqz p1, :cond_5b

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, v0}, Lcom/android/launcher3/IBubbleTextViewExt;->applyLabel(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V

    goto :goto_60

    :cond_5b
    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_60
    :goto_60
    return-void
.end method

.method public setVisibility(I)V
    .registers 2

    invoke-virtual {p0}, Landroid/widget/TextView;->clearAnimation()V

    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/OplusBubbleTextView;->updateAlphaValue(I)V

    return-void
.end method

.method public shouldIgnoreTouchDown(FF)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-static {v0}, Lcom/oplus/quickstep/utils/LauncherRemoteAnimUtil;->isShellTransitionRecentAnimRunning(Lcom/android/launcher/Launcher;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x0

    return p0

    :cond_10
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/BubbleTextView;->shouldIgnoreTouchDown(FF)Z

    move-result p0

    return p0
.end method

.method public shouldTextBeVisible()Z
    .registers 6

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderIcon;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    goto :goto_17

    :cond_13
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    :goto_17
    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v1, :cond_1e

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    const/16 v1, -0x65

    const/4 v2, 0x1

    if-eqz v0, :cond_33

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/mode/LauncherModeManager;->isInBigSimpleMode()Z

    move-result v3

    if-eqz v3, :cond_33

    iget v3, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-ne v3, v1, :cond_33

    return v2

    :cond_33
    if-eqz v0, :cond_57

    iget v3, p0, Lcom/android/launcher3/BubbleTextView;->mDisplay:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_57

    iget v0, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    if-eq v0, v1, :cond_56

    const/16 v1, -0x67

    if-eq v0, v1, :cond_56

    sget-object v0, Lcom/android/common/util/FontManager;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_56

    goto :goto_57

    :cond_56
    const/4 v2, 0x0

    :cond_57
    :goto_57
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-super {p0}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ",Tag={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", alpha ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/TextView;->getAlpha()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(F)Ljava/lang/StringBuffer;

    const-string v1, ", LocationX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLocationOnScreen()[I

    move-result-object p0

    const/4 v1, 0x0

    aget p0, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateIconDisplay(I)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewExt;->setIconDisplay(I)V

    return-void
.end method

.method public updateRecoveryStatus()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mIsRecoveryStatus:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeExit:Z

    iput-boolean v0, p0, Lcom/android/launcher3/OplusBubbleTextView;->mOnlyOneTimeEnter:Z

    return-void
.end method
