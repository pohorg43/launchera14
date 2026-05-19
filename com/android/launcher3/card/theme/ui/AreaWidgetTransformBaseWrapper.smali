.class public Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAreaWidgetTransformBaseWrapper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaWidgetTransformBaseWrapper.kt\ncom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper\n+ 2 Animator.kt\nandroidx/core/animation/AnimatorKt\n*L\n1#1,229:1\n31#2:230\n94#2,14:231\n42#2:245\n94#2,14:246\n*S KotlinDebug\n*F\n+ 1 AreaWidgetTransformBaseWrapper.kt\ncom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper\n*L\n132#1:230\n132#1:231,14\n150#1:245\n150#1:246,14\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;

.field public static final MIN_ALPHA:F = 0.0f

.field public static final MIN_SCALE:F = 0.7f


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .registers 4

    if-nez p2, :cond_16

    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_2b

    :cond_16
    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    const v0, 0x3f333333  # 0.7f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_2b
    new-instance p1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string p1, "if (!isReverse) {\n      …eInterpolator()\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_45

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_4a

    :cond_45
    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_4a
    return-object p0
.end method

.method private final createTitleTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;
    .registers 4

    if-nez p2, :cond_12

    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    goto :goto_20

    :cond_12
    new-instance p0, Lcom/android/launcher3/anim/PropertyListBuilder;

    invoke-direct {p0}, Lcom/android/launcher3/anim/PropertyListBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/anim/PropertyListBuilder;->alpha(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->build(Landroid/view/View;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    :goto_20
    new-instance p1, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;

    invoke-direct {p1}, Lcom/coui/appcompat/animation/COUIMoveEaseInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string p1, "if (!isReverse) {\n      …eInterpolator()\n        }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_3a

    const-wide/16 p1, 0x64

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    const-wide/16 p1, 0x190

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_3f

    :cond_3a
    const-wide/16 p1, 0x12c

    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_3f
    return-object p0
.end method

.method public static synthetic invokeTransformAction$suspendImpl(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;",
            "Lcom/android/launcher3/card/IAreaWidget;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Z",
            "Lcom/android/launcher3/card/theme/data/TargetDescription;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method


# virtual methods
.method public final getIAreaWidgetParentCellLayout(Lcom/android/launcher3/card/IAreaWidget;)Lcom/android/launcher3/OplusCellLayout;
    .registers 3

    const-string p0, "iAreaWidget"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, Landroid/view/View;

    const/4 v0, 0x0

    if-eqz p0, :cond_d

    check-cast p1, Landroid/view/View;

    goto :goto_e

    :cond_d
    move-object p1, v0

    :goto_e
    if-eqz p1, :cond_2b

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    instance-of p1, p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    if-eqz p1, :cond_1b

    check-cast p0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    goto :goto_1c

    :cond_1b
    move-object p0, v0

    :goto_1c
    if-eqz p0, :cond_23

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    goto :goto_24

    :cond_23
    move-object p0, v0

    :goto_24
    instance-of p1, p0, Lcom/android/launcher3/OplusCellLayout;

    if-eqz p1, :cond_2b

    check-cast p0, Lcom/android/launcher3/OplusCellLayout;

    move-object v0, p0

    :cond_2b
    return-object v0
.end method

.method public invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/IAreaWidget;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Z",
            "Lcom/android/launcher3/card/theme/data/TargetDescription;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-static/range {p0 .. p6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->invokeTransformAction$suspendImpl(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final prepareForBind(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/OplusCellLayout;",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p2, p1}, Lcom/android/launcher3/OplusCellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    sget-object p0, Lm7/y0;->d:Lm7/f0;

    new-instance p1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$prepareForBind$2;

    const/4 p2, 0x0

    invoke-direct {p1, p3, p4, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$prepareForBind$2;-><init>(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ll4/d;)V

    invoke-static {p0, p1, p5}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lm4/a;->a:Lm4/a;

    if-ne p0, p1, :cond_14

    return-object p0

    :cond_14
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public final resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    const-string/jumbo p0, "view"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cl"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "launcher"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "targetInfo"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lcom/android/launcher3/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    invoke-virtual {p3}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object p0

    const-string/jumbo p1, "resetAfterBindFailed"

    invoke-virtual {p0, p4, p1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    return-void
.end method

.method public final startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 34
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Lcom/android/launcher/Launcher;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher3/card/theme/data/TargetDescription;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "-",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;+",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v4, p0

    move-object/from16 v11, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v6, p7

    instance-of v0, v11, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v0, :cond_195

    instance-of v0, v2, Lcom/android/launcher3/card/IAreaWidget;

    if-nez v0, :cond_14

    goto/16 :goto_195

    :cond_14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/android/launcher3/model/data/ItemInfo;

    const/4 v5, 0x0

    if-eqz v1, :cond_21

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    move-object v7, v0

    goto :goto_22

    :cond_21
    move-object v7, v5

    :goto_22
    new-instance v8, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    new-instance v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v9}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v0, ""

    iput-object v0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    instance-of v1, v7, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_3c

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v10, v10, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    iput v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    goto :goto_47

    :cond_3c
    instance-of v10, v7, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v10, :cond_47

    move-object v10, v7

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget v10, v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    iput v10, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_47
    :goto_47
    if-eqz v7, :cond_54

    invoke-virtual {v7}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    if-eqz v10, :cond_54

    invoke-virtual {v10}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_55

    :cond_54
    move-object v10, v5

    :goto_55
    if-nez v10, :cond_5b

    iget-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    :cond_5b
    iput-object v10, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v12, 0x0

    if-eqz p1, :cond_12a

    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, v11, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/4 v5, 0x4

    const/4 v14, 0x0

    const v15, 0x3f333333  # 0.7f

    if-eqz v1, :cond_8a

    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v1, v14}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setAlpha(F)V

    invoke-virtual {v1, v15}, Landroid/appwidget/AppWidgetHostView;->setScaleX(F)V

    invoke-virtual {v1, v15}, Landroid/appwidget/AppWidgetHostView;->setScaleY(F)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setVisibility(I)V

    invoke-direct {v4, v1, v12}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bd

    :cond_8a
    instance-of v1, v11, Lcom/android/launcher3/card/TitleCardView;

    if-eqz v1, :cond_bd

    move-object v1, v11

    check-cast v1, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_aa

    invoke-virtual {v10, v14}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v10, v15}, Landroid/view/View;->setScaleX(F)V

    invoke-virtual {v10, v15}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual {v10, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v4, v10, v12}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v10

    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_aa
    invoke-virtual {v1}, Lcom/android/launcher3/card/TitleCardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-eqz v1, :cond_bd

    invoke-virtual {v1, v14}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {v4, v1, v12}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createTitleTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_bd
    :goto_bd
    instance-of v1, v2, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    const/high16 v5, 0x3f800000  # 1.0f

    if-eqz v1, :cond_d5

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setAlpha(F)V

    invoke-virtual {v1, v12}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setVisibility(I)V

    const/4 v10, 0x1

    invoke-direct {v4, v1, v10}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_103

    :cond_d5
    const/4 v10, 0x1

    instance-of v1, v2, Lcom/android/launcher3/card/TitleCardView;

    if-eqz v1, :cond_103

    move-object v1, v2

    check-cast v1, Lcom/android/launcher3/card/TitleCardView;

    invoke-virtual {v1}, Lcom/android/launcher3/card/EngineCardView;->getSmartView()Landroid/view/View;

    move-result-object v14

    if-eqz v14, :cond_f0

    invoke-virtual {v14, v5}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v14, v12}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {v4, v14, v10}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createContentTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f0
    invoke-virtual {v1}, Lcom/android/launcher3/card/TitleCardView;->getCardName()Lcom/android/launcher3/BubbleTextView;

    move-result-object v1

    if-eqz v1, :cond_103

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setAlpha(F)V

    invoke-virtual {v1, v12}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-direct {v4, v1, v10}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->createTitleTransformAnimation(Landroid/view/View;Z)Landroid/animation/ValueAnimator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_103
    :goto_103
    invoke-virtual {v13, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    new-instance v12, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;

    move-object v0, v12

    move-object/from16 v1, p4

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p7

    move-object/from16 v10, p6

    invoke-direct/range {v0 .. v10}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnEnd$1;-><init>(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;Landroid/view/View;Lkotlin/jvm/functions/Function2;Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/TargetDescription;)V

    invoke-virtual {v13, v12}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnStart$1;

    invoke-direct {v0, v11}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$$inlined$doOnStart$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v13, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_192

    :cond_12a
    const-string/jumbo v4, "transform theme area widget without anim"

    move-object/from16 v10, p4

    const/4 v11, 0x1

    invoke-virtual {v10, v2, v3, v11, v4}, Lcom/android/launcher3/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZLjava/lang/String;)Z

    if-eqz v6, :cond_192

    new-instance v2, Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;

    iget v14, v3, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    if-eqz v7, :cond_13d

    iget v12, v7, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    :cond_13d
    move v15, v12

    iget v4, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v8, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object/from16 v17, v8

    check-cast v17, Ljava/lang/String;

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getForThemeInfo()Ljava/lang/String;

    move-result-object v19

    if-eqz v1, :cond_14f

    check-cast v7, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_150

    :cond_14f
    move-object v7, v5

    :goto_150
    if-eqz v7, :cond_157

    invoke-virtual {v7}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v1

    goto :goto_158

    :cond_157
    move-object v1, v5

    :goto_158
    if-nez v1, :cond_15d

    move-object/from16 v20, v0

    goto :goto_15f

    :cond_15d
    move-object/from16 v20, v1

    :goto_15f
    instance-of v1, v3, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v1, :cond_167

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_168

    :cond_167
    move-object v1, v5

    :goto_168
    if-eqz v1, :cond_16e

    invoke-virtual {v1}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v5

    :cond_16e
    if-nez v5, :cond_173

    move-object/from16 v21, v0

    goto :goto_175

    :cond_173
    move-object/from16 v21, v5

    :goto_175
    const/16 v22, 0x0

    const/16 v23, 0x100

    const/16 v24, 0x0

    const-string/jumbo v18, "transform success without anim"

    move-object v13, v2

    move/from16 v16, v4

    invoke-direct/range {v13 .. v24}, Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v0, p8

    invoke-interface {v6, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lm4/a;->a:Lm4/a;

    if-ne v0, v1, :cond_18f

    return-object v0

    :cond_18f
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_192
    :goto_192
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_195
    :goto_195
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
