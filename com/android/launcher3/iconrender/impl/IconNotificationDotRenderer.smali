.class public Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;
.super Lcom/android/launcher3/iconrender/AbstractIconRenderer;
.source ""

# interfaces
.implements Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/iconrender/AbstractIconRenderer<",
        "Lcom/android/launcher3/icons/DotRenderer$DrawParams;",
        ">;",
        "Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DOT_ALPHA_PROPERTY:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property<",
            "Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static final ICON_SCALE_ON_TASKBAR:F = 0.89f

.field private static final MAX_ALPHA:I = 0xff

.field private static final MAX_SCALE:F = 1.0f

.field private static final MIN_SCALE:F = 0.0f

.field private static final PRESS_ANIMATION_DOT_DURATION:J = 0x64L

.field private static final PRIORITY:I = 0x7fffffff

.field private static final TAG:Ljava/lang/String; = "OplusIconNotificationDotRenderer"


# instance fields
.field private mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

.field private mDotAlphaAnim:Landroid/animation/Animator;

.field private mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mSelectIconDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$1;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v2, "dotAlpha"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$1;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->DOT_ALPHA_PROPERTY:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/AbstractIconRenderer;-><init>(Landroid/content/Context;Lcom/android/launcher3/iconrender/RenderManager;)V

    const-class p1, Lcom/android/launcher3/iconrender/impl/IIconNotificationDotExport;

    invoke-virtual {p2, p1, p0}, Lcom/android/launcher3/iconrender/RenderManager;->registerExport(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->lambda$applyBadgeNumberState$1(Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;)Lcom/android/launcher3/iconrender/RenderManager;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Landroid/animation/Animator;)Landroid/animation/Animator;
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method private varargs animateDotScale([F)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p0, p1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->animateDotScale([F)V

    return-void
.end method

.method private applyBadgeNumberState(Lcom/android/launcher3/model/data/ItemInfo;IIZ)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v1

    iget-object v2, v0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p2, v5, :cond_19

    iget v6, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    cmpl-float v6, v6, v3

    if-lez v6, :cond_19

    move v6, v5

    goto :goto_1a

    :cond_19
    move v6, v4

    :goto_1a
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result v7

    if-eqz v7, :cond_24

    move v7, v5

    goto :goto_25

    :cond_24
    move v7, v4

    :goto_25
    if-eqz v7, :cond_2a

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_2b

    :cond_2a
    move v8, v3

    :goto_2b
    if-nez v6, :cond_3a

    if-eqz v7, :cond_30

    goto :goto_3a

    :cond_30
    if-eq p2, p3, :cond_6f

    iput v3, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    goto :goto_6f

    :cond_3a
    :goto_3a
    if-eqz p4, :cond_4e

    xor-int p2, v6, v7

    if-eqz p2, :cond_4e

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result p2

    if-eqz p2, :cond_4e

    new-array p2, v5, [F

    aput v8, p2, v4

    invoke-direct {p0, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_6f

    :cond_4e
    iget-object p2, v0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Landroid/animation/Animator;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_63

    iget-object p2, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    new-instance p3, Lcom/android/launcher3/iconrender/impl/b;

    invoke-direct {p3, p0, v1, v8, v5}, Lcom/android/launcher3/iconrender/impl/b;-><init>(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;FI)V

    invoke-interface {p2, p3}, Lcom/android/launcher3/IBubbleTextViewExt;->setCallBackForDotScale(Ljava/lang/Runnable;)V

    goto :goto_6f

    :cond_63
    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->cancelDotScaleAnim()V

    iput v8, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p2}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :cond_6f
    :goto_6f
    iget-object p2, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz p2, :cond_98

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result p2

    if-eqz p2, :cond_93

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p2

    if-eqz p2, :cond_93

    invoke-virtual {v2}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result p2

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_98

    :cond_93
    iget-object p0, p1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_98
    :goto_98
    return-void
.end method

.method private applyColorDotBadgeState(Lcom/android/launcher3/model/data/ItemInfo;IIZ)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget-object v5, v0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v5}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v6

    iget-object v7, v5, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    iget-boolean v8, v5, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v12, 0x2

    if-ne v2, v12, :cond_25

    iget v12, v6, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    cmpl-float v12, v12, v10

    if-lez v12, :cond_25

    move v12, v9

    goto :goto_26

    :cond_25
    const/4 v12, 0x0

    :goto_26
    if-eqz v7, :cond_30

    invoke-virtual {v7}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v13

    if-eqz v13, :cond_30

    move v13, v9

    goto :goto_31

    :cond_30
    const/4 v13, 0x0

    :goto_31
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v14

    if-eqz v14, :cond_5e

    const-string v14, "applyColorDotBadgeState: oldBadgeType: "

    const-string v15, ", newBadgeType: "

    const-string v11, ", wasDotted: "

    invoke-static {v14, v2, v15, v3, v11}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v14, ", isDotted: "

    const-string v15, ", animate = "

    invoke-static {v11, v12, v14, v13, v15}, Lcom/android/launcher/m0;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v14, ", mForceHideDot = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "Badge"

    const-string v14, "OplusIconNotificationDotRenderer"

    invoke-static {v11, v14, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    if-eqz v13, :cond_63

    const/high16 v8, 0x3f800000  # 1.0f

    goto :goto_64

    :cond_63
    move v8, v10

    :goto_64
    if-nez v12, :cond_73

    if-eqz v13, :cond_69

    goto :goto_73

    :cond_69
    if-eq v2, v3, :cond_aa

    iput v10, v6, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object v2, v0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    goto :goto_aa

    :cond_73
    :goto_73
    if-eqz v4, :cond_88

    xor-int v2, v12, v13

    if-eqz v2, :cond_88

    invoke-virtual {v5}, Landroid/widget/TextView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_88

    new-array v2, v9, [F

    const/4 v3, 0x0

    aput v8, v2, v3

    invoke-direct {v0, v2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_aa

    :cond_88
    iget-object v2, v5, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    if-eqz v2, :cond_9e

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_9e

    iget-object v2, v5, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    new-instance v3, Lcom/android/launcher3/iconrender/impl/b;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v6, v8, v4}, Lcom/android/launcher3/iconrender/impl/b;-><init>(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;FI)V

    invoke-interface {v2, v3}, Lcom/android/launcher3/IBubbleTextViewExt;->setCallBackForDotScale(Ljava/lang/Runnable;)V

    goto :goto_aa

    :cond_9e
    iget-object v2, v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->cancelDotScaleAnim()V

    iput v8, v6, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object v2, v0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :cond_aa
    :goto_aa
    iget-object v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d3

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-virtual {v7}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v2

    if-eqz v2, :cond_ce

    invoke-virtual {v7}, Lcom/android/launcher3/dot/DotInfo;->getNotificationCount()I

    move-result v2

    iget-object v0, v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    iget-object v1, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getAppLabelPluralString(Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_d3

    :cond_ce
    iget-object v0, v1, Lcom/android/launcher3/model/data/ItemInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_d3
    :goto_d3
    return-void
.end method

.method private applyColorDotStateForShortcut(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz v1, :cond_24

    return-void

    :cond_24
    iget-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_35

    move v1, v4

    goto :goto_39

    :cond_35
    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v1

    :goto_39
    invoke-interface {v2, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v6, :cond_59

    iget-object v6, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v6}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_59

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->mDotRendererTaskbar:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    goto :goto_61

    :cond_59
    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    :goto_61
    if-nez v5, :cond_65

    move v2, v4

    goto :goto_69

    :cond_65
    invoke-virtual {v5}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v2

    :goto_69
    const/high16 v6, 0x437f0000  # 255.0f

    iput v6, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    const-string v7, "OplusIconNotificationDotRenderer"

    const-string v8, "Badge"

    if-eqz v6, :cond_b7

    const-string v6, "applyColorDotState -- this: "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/user:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", oldBadgeType = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mDotInfo = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", newBadgeType = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current dot scale = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    const/4 v5, 0x1

    if-eqz v2, :cond_dc

    if-eq v2, v5, :cond_d8

    const/4 v0, 0x2

    if-eq v2, v0, :cond_d4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyColorDotStates -- illegal badge type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v7, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fa

    :cond_d4
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->applyColorDotBadgeState(Lcom/android/launcher3/model/data/ItemInfo;IIZ)V

    goto :goto_fa

    :cond_d8
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->applyBadgeNumberState(Lcom/android/launcher3/model/data/ItemInfo;IIZ)V

    goto :goto_fa

    :cond_dc
    iget-object p1, v0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    const/4 p2, 0x0

    if-nez p1, :cond_ea

    iget p1, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_e8

    goto :goto_ea

    :cond_e8
    move p1, v4

    goto :goto_eb

    :cond_ea
    :goto_ea
    move p1, v5

    :goto_eb
    if-eqz p1, :cond_f5

    new-array p1, v5, [F

    aput p2, p1, v4

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_fa

    :cond_f5
    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :goto_fa
    return-void
.end method

.method private applyColorDotStateInner(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 13

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/launcher3/OplusAppFilter;->isHideDot(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v1, :cond_24

    move v1, v4

    goto :goto_28

    :cond_24
    invoke-virtual {v1}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v1

    :goto_28
    invoke-interface {v2, p1}, Lcom/android/launcher3/views/ActivityContext;->getDotInfoForItem(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/dot/DotInfo;

    move-result-object v5

    iput-object v5, v0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    instance-of v6, v6, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v6, :cond_48

    iget-object v6, v0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v6}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v6

    const/4 v7, 0x5

    if-ne v6, v7, :cond_48

    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->mDotRendererTaskbar:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    goto :goto_50

    :cond_48
    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    :goto_50
    if-nez v5, :cond_54

    move v2, v4

    goto :goto_58

    :cond_54
    invoke-virtual {v5}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v2

    :goto_58
    const/high16 v6, 0x437f0000  # 255.0f

    iput v6, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    const-string v7, "OplusIconNotificationDotRenderer"

    const-string v8, "Badge"

    if-eqz v6, :cond_a6

    const-string v6, "applyColorDotState -- this: "

    invoke-static {v6}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "/user:"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", oldBadgeType = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", mDotInfo = "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", newBadgeType = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", current dot scale = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v7, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_a6
    const/4 v5, 0x1

    if-eqz v2, :cond_cb

    if-eq v2, v5, :cond_c7

    const/4 v0, 0x2

    if-eq v2, v0, :cond_c3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyColorDotStates -- illegal badge type: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, v7, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e9

    :cond_c3
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->applyColorDotBadgeState(Lcom/android/launcher3/model/data/ItemInfo;IIZ)V

    goto :goto_e9

    :cond_c7
    invoke-direct {p0, p1, v1, v2, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->applyBadgeNumberState(Lcom/android/launcher3/model/data/ItemInfo;IIZ)V

    goto :goto_e9

    :cond_cb
    iget-object p1, v0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    const/4 p2, 0x0

    if-nez p1, :cond_d9

    iget p1, v3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_d7

    goto :goto_d9

    :cond_d7
    move p1, v4

    goto :goto_da

    :cond_d9
    :goto_d9
    move p1, v5

    :goto_da
    if-eqz p1, :cond_e4

    new-array p1, v5, [F

    aput p2, p1, v4

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_e9

    :cond_e4
    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :goto_e9
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->lambda$applyColorDotBadgeState$0(Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V

    return-void
.end method

.method private cancelDotAlphaAnim()V
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    :cond_7
    return-void
.end method

.method private clearDotAlphaAnima()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    :cond_a
    return-void
.end method

.method private dontShowDotInfo()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {p0}, Lcom/android/launcher3/IBubbleTextViewExt;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_20

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->TOGGLE_BAR:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_1f

    sget-object v1, Lcom/android/launcher3/states/OplusBaseLauncherState;->PAGE_PREVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    if-eqz p0, :cond_20

    :cond_1f
    const/4 v0, 0x1

    :cond_20
    return v0
.end method

.method private drawDotIfNecessary(Landroid/graphics/Canvas;)V
    .registers 12

    const-string v0, "OplusIconNotificationDotRenderer"

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    if-nez v1, :cond_7

    return-void

    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_28

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->isTaskbarView(Landroid/view/View;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1f} :catch_22

    if-eqz v1, :cond_28

    return-void

    :catch_22
    move-exception v1

    const-string v2, "getParent == null"

    invoke-static {v0, v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_28
    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mSelectIconDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    const-class v2, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/iconrender/RenderManager;->findExportImpl(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    if-eqz v2, :cond_40

    check-cast v1, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/impl/SelectStateIconRenderer;->getParams()Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mSelectIconDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    :cond_40
    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mSelectIconDrawParams:Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;

    if-eqz v1, :cond_4b

    iget v1, v1, Lcom/android/launcher/SwitchStateRenderer$SelectIconDrawParams;->alpha:I

    const/16 v2, 0xff

    if-lt v1, v2, :cond_4b

    return-void

    :cond_4b
    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    iget-boolean v2, v1, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-eqz v2, :cond_56

    return-void

    :cond_56
    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getActivity()Lcom/android/launcher3/views/ActivityContext;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v3, :cond_80

    iget-object v3, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v3}, Lcom/android/launcher3/IBubbleTextViewExt;->getIconDisplay()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_80

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    invoke-virtual {v2}, Lcom/android/launcher3/taskbar/BaseTaskbarContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->mDotRendererTaskbar:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    goto :goto_88

    :cond_80
    invoke-interface {v2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/DeviceProfile;->mDotRendererWorkSpace:Lcom/android/launcher3/icons/OplusDotRenderer;

    iput-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    :goto_88
    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v2

    iget-object v3, v1, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    iget-object v4, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v4

    if-nez v4, :cond_f0

    instance-of v4, v1, Lcom/android/launcher3/OplusBubbleTextView;

    if-eqz v4, :cond_f0

    iget-object v4, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v4}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->isSpiritAnimEnable()Z

    move-result v4

    if-eqz v4, :cond_f0

    iget-object v4, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v4}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->canDrawShadow()Z

    move-result v4

    if-eqz v4, :cond_f0

    iget-object v4, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    invoke-interface {v4}, Lcom/android/launcher3/icons/anim/IIconSpiritAnimator;->getCurrentIconArea()Landroid/graphics/RectF;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v5}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/BubbleTextView;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iget-object v6, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    iget v7, v4, Landroid/graphics/RectF;->left:F

    float-to-int v7, v7

    iget v8, v4, Landroid/graphics/RectF;->top:F

    float-to-int v8, v8

    iget v9, v4, Landroid/graphics/RectF;->right:F

    float-to-int v9, v9

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-virtual {v6, v7, v8, v9, v4}, Landroid/graphics/Rect;->set(IIII)V

    instance-of v4, v5, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    if-eqz v4, :cond_dc

    check-cast v5, Lcom/oplus/iconctrl/IAppsFancyDrawable;

    invoke-interface {v5}, Lcom/oplus/iconctrl/IAppsFancyDrawable;->getScaleX()F

    move-result v0

    iput v0, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    goto :goto_f7

    :cond_dc
    instance-of v4, v5, Lcom/oplus/icons/OplusFastBitmapDrawable;

    if-eqz v4, :cond_e9

    check-cast v5, Lcom/android/launcher3/icons/FastBitmapDrawable;

    invoke-virtual {v5}, Lcom/android/launcher3/icons/FastBitmapDrawable;->getScale()F

    move-result v0

    iput v0, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    goto :goto_f7

    :cond_e9
    const-string/jumbo v4, "no need scale!!"

    invoke-static {v0, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f7

    :cond_f0
    iget-object v0, v1, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object v4, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->iconBounds:Landroid/graphics/Rect;

    invoke-interface {v0, v4}, Lcom/android/launcher3/IBubbleTextViewExt;->getRealIconBounds(Landroid/graphics/Rect;)V

    :goto_f7
    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v4, 0x4

    const/4 v5, 0x0

    if-ne v0, v4, :cond_114

    iput v5, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object v0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz v0, :cond_10e

    invoke-virtual {v0, p1, v2}, Lcom/android/launcher3/icons/OplusDotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    :cond_10e
    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void

    :cond_114
    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollX()I

    move-result v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getScrollY()I

    move-result v4

    int-to-float v6, v0

    int-to-float v7, v4

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    if-nez v3, :cond_12d

    iput v5, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz p0, :cond_12c

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/icons/OplusDotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    :cond_12c
    return-void

    :cond_12d
    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->getBadgeType()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result v7

    if-eqz v7, :cond_143

    iget v7, v2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    cmpl-float v5, v7, v5

    if-lez v5, :cond_143

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/icons/OplusDotRenderer;->draw(Landroid/graphics/Canvas;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)V

    goto :goto_19a

    :cond_143
    const/4 v5, 0x1

    if-ne v6, v5, :cond_19a

    iget-object v5, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    instance-of v5, v5, Lcom/android/launcher3/icons/OplusDotRenderer;

    if-eqz v5, :cond_19a

    iget-object v5, v1, Lcom/android/launcher3/BubbleTextView;->mActivity:Lcom/android/launcher3/views/ActivityContext;

    instance-of v5, v5, Lcom/android/launcher3/taskbar/TaskbarActivityContext;

    if-eqz v5, :cond_166

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWrapper()Lcom/android/launcher3/IBubbleTextViewWrapper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getDisplay()I

    move-result v1

    const/4 v5, 0x2

    if-ne v1, v5, :cond_166

    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    const v5, 0x3f63d70a  # 0.89f

    invoke-virtual {v1, v5}, Lcom/android/launcher3/icons/OplusDotRenderer;->setNumberDotScale(F)V

    goto :goto_16d

    :cond_166
    iget-object v1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    const/high16 v5, 0x3f800000  # 1.0f

    invoke-virtual {v1, v5}, Lcom/android/launcher3/icons/OplusDotRenderer;->setNumberDotScale(F)V

    :goto_16d
    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-eqz v1, :cond_18f

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    sget-object v5, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_18f

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v1

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/launcher3/icons/OplusDotRenderer;->drawNumber(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;Ljava/lang/Boolean;)V

    goto :goto_19a

    :cond_18f
    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotRenderer:Lcom/android/launcher3/icons/OplusDotRenderer;

    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->getNumberCount()I

    move-result v1

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v1, v2, v3}, Lcom/android/launcher3/icons/OplusDotRenderer;->drawNumber(Landroid/graphics/Canvas;ILcom/android/launcher3/icons/DotRenderer$DrawParams;Ljava/lang/Boolean;)V

    :cond_19a
    :goto_19a
    neg-int p0, v0

    int-to-float p0, p0

    neg-int v0, v4

    int-to-float v0, v0

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method private isDotAnimRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/BubbleTextView;->mDotScaleAnim:Landroid/animation/Animator;

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    if-eqz p0, :cond_12

    invoke-virtual {p0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-nez p0, :cond_1a

    :cond_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1a
    const/4 p0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 p0, 0x0

    :goto_1d
    return p0
.end method

.method private isTaskbarView(Landroid/view/View;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;

    if-nez p1, :cond_18

    invoke-interface {p0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p0, p0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContainerView;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_1a

    if-eqz p0, :cond_22

    :cond_18
    const/4 p0, 0x1

    return p0

    :catch_1a
    move-exception p0

    const-string p1, "OplusIconNotificationDotRenderer"

    const-string v0, "Failed to get parent layout"

    invoke-static {p1, v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_22
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$applyBadgeNumberState$1(Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V
    .registers 3

    iput p2, p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void
.end method

.method private synthetic lambda$applyColorDotBadgeState$0(Lcom/android/launcher3/icons/DotRenderer$DrawParams;F)V
    .registers 3

    iput p2, p1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    return-void
.end method


# virtual methods
.method public acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)Z
    .registers 5

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p1}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getIsIconVisible()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    iget-boolean p1, p2, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    if-eqz p1, :cond_14

    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->isDotAnimRunning()Z

    move-result p0

    if-eqz p0, :cond_22

    :cond_14
    invoke-virtual {p2}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result p0

    if-nez p0, :cond_23

    iget p0, p3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    const/4 p1, 0x0

    cmpl-float p0, p0, p1

    if-lez p0, :cond_22

    goto :goto_23

    :cond_22
    return v0

    :cond_23
    :goto_23
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Ljava/lang/Object;)Z
    .registers 4

    check-cast p3, Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->acceptDraw(Lcom/android/launcher3/iconrender/RenderManager;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/icons/DotRenderer$DrawParams;)Z

    move-result p0

    return p0
.end method

.method public varargs animateDotAlpha([F)V
    .registers 4

    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->dontShowDotInfo()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->cancelDotAlphaAnim()V

    sget-object v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->DOT_ALPHA_PROPERTY:Landroid/util/Property;

    invoke-static {p0, v0, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    iget-object p1, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    new-instance v0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer$2;-><init>(Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;)V

    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mDotAlphaAnim:Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    return-void
.end method

.method public applyColorDotState(Lcom/android/launcher3/model/data/ItemInfo;Z)V
    .registers 5

    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz v0, :cond_13

    return-void

    :cond_13
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1c

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->applyColorDotStateForShortcut(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    goto :goto_1f

    :cond_1c
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->applyColorDotStateInner(Lcom/android/launcher3/model/data/ItemInfo;Z)V

    :goto_1f
    return-void
.end method

.method public forceHideDot(ZZ)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    iget-boolean v1, v0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    iget-object v2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {v2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->getIsIconVisible()Z

    move-result v2

    iget-object v3, v0, Lcom/android/launcher3/BubbleTextView;->mDotInfo:Lcom/android/launcher3/dot/DotInfo;

    const-string v4, "mForceHideDot = "

    const-string v5, ", forceHideDot = "

    const-string v6, ", mIsIconVisible = "

    invoke-static {v4, v1, v5, p1, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", text = "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "Badge"

    const-string v5, "OplusIconNotificationDotRenderer"

    invoke-static {v4, v5, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, p1, :cond_37

    return-void

    :cond_37
    iput-boolean p1, v0, Lcom/android/launcher3/BubbleTextView;->mForceHideDot:Z

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000  # 1.0f

    if-eqz p1, :cond_40

    move v6, v1

    goto :goto_41

    :cond_40
    move v6, v2

    :goto_41
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "endScale = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a8

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->hasDot()Z

    move-result p2

    if-nez p2, :cond_63

    const-string p0, "ERROR!! bubbletextview\'s Dotinfo is null"

    invoke-static {v4, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_63
    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v4, 0x2

    if-eqz p1, :cond_88

    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result p1

    if-eqz p1, :cond_78

    new-array p1, v4, [F

    aput v2, p1, v0

    aput v6, p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_bd

    :cond_78
    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p1

    if-eqz p1, :cond_bd

    new-array p1, v4, [F

    aput v2, p1, v0

    aput v6, p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_bd

    :cond_88
    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->canShowDot()Z

    move-result p1

    if-eqz p1, :cond_98

    new-array p1, v4, [F

    aput v1, p1, v0

    aput v6, p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_bd

    :cond_98
    invoke-virtual {v3}, Lcom/android/launcher3/dot/DotInfo;->canShowBadgeNumber()Z

    move-result p1

    if-eqz p1, :cond_bd

    new-array p1, v4, [F

    aput v1, p1, v0

    aput v6, p1, p2

    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->animateDotScale([F)V

    goto :goto_bd

    :cond_a8
    iget-object p2, p0, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->mBubbleTextViewWrapper:Lcom/android/launcher3/IBubbleTextViewWrapper;

    invoke-interface {p2}, Lcom/android/launcher3/IBubbleTextViewWrapper;->cancelDotScaleAnim()V

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p2

    if-eqz p1, :cond_b6

    iput v1, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    goto :goto_b8

    :cond_b6
    iput v2, p2, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    :goto_b8
    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->requestInvalidate()V

    :cond_bd
    :goto_bd
    return-void
.end method

.method public getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/BubbleTextView;->mDotParams:Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    return-object p0
.end method

.method public bridge synthetic getParams()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p0

    return-object p0
.end method

.method public handleOnTouchEvent(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-eq p1, v0, :cond_b

    goto :goto_3a

    :cond_b
    iget-object p1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez p1, :cond_3a

    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->clearDotAlphaAnima()V

    goto :goto_3a

    :cond_1b
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v0, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/launcher3/icons/touch/ValidTouchAreaController;->isEventInValidTouchArea(Lcom/android/launcher3/BubbleTextView;Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_37

    iget-object p1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/BubbleTextView;->mLayoutHorizontal:Z

    if-eqz p1, :cond_3a

    :cond_37
    invoke-direct {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->clearDotAlphaAnima()V

    :cond_3a
    :goto_3a
    const/4 p0, 0x0

    return p0
.end method

.method public priority()I
    .registers 1

    const p0, 0x7fffffff

    return p0
.end method

.method public renderAfterIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 6

    sget-object p2, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v0

    if-eqz v0, :cond_43

    sget-object v0, Lcom/android/common/util/RenderNodeHelper;->INSTANCE:Lcom/android/common/util/RenderNodeHelper;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v2}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/common/util/RenderNodeHelper;->beginRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)Landroid/graphics/Canvas;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/common/util/RenderNodeHelper;->endRecording(Landroid/graphics/Canvas;Landroid/view/View;Landroid/graphics/RenderNode;)V

    goto :goto_46

    :cond_43
    invoke-direct {p0, p1}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->drawDotIfNecessary(Landroid/graphics/Canvas;)V

    :goto_46
    return-void
.end method

.method public renderAsBitmapCover()Landroid/graphics/drawable/Drawable;
    .registers 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public renderBeforeIconDrawn(Landroid/graphics/Canvas;Lcom/android/launcher3/iconrender/RenderManager;)V
    .registers 3

    return-void
.end method

.method public resetPressAnimState()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    const/high16 v1, 0x437f0000  # 255.0f

    iput v1, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object p0

    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    return-void
.end method

.method public updateDotaAlphaWhenFolderUnfold(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->scale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_16

    return-void

    :cond_16
    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/impl/IconNotificationDotRenderer;->getParams()Lcom/android/launcher3/icons/DotRenderer$DrawParams;

    move-result-object v1

    int-to-float v0, v0

    iput v0, v1, Lcom/android/launcher3/icons/DotRenderer$DrawParams;->alpha:F

    sget-object v0, Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;->DRAW_DOT:Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {v1}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->getMultiNodeEnable(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object p0, p0, Lcom/android/launcher3/iconrender/AbstractRenderer;->mRenderManager:Lcom/android/launcher3/iconrender/RenderManager;

    invoke-virtual {p0}, Lcom/android/launcher3/iconrender/RenderManager;->getHostView()Lcom/android/launcher3/BubbleTextView;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/BubbleTextView;->getRenDerNode(Lcom/android/launcher3/BubbleTextView$MULTI_NODE_TYPE;)Landroid/graphics/RenderNode;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/oplus/animation/OplusAsyncAnimatorUtils;->setAlpha(Landroid/graphics/RenderNode;F)Z

    :cond_44
    return-void
.end method
