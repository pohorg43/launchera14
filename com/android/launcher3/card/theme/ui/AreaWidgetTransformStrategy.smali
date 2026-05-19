.class public final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAreaWidgetTransformStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaWidgetTransformStrategy.kt\ncom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy\n+ 2 _Sequences.kt\nkotlin/sequences/SequencesKt___SequencesKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,325:1\n1313#2,2:326\n1#3:328\n*S KotlinDebug\n*F\n+ 1 AreaWidgetTransformStrategy.kt\ncom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy\n*L\n180#1:326,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;

.field private static final TAG:Ljava/lang/String; = "AreaWidgetReplaceStrategy"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->Companion:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->findItemByReplaceActions$lambda$3$lambda$2$lambda$1(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$prepareWidgetInfoWithInvalidLocation(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Ljava/lang/String;Landroid/view/View;Ll4/d;)Ljava/lang/Object;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$selectStrategyAndStartTransform(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/TargetDescription;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->selectStrategyAndStartTransform(Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/TargetDescription;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transferReplaceResultToThemeStore(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 10

    invoke-direct/range {p0 .. p9}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->transferReplaceResultToThemeStore(ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private final findItemByReplaceActions(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/launcher3/card/theme/data/ReplaceAction;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    new-instance p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-static {p2}, Li4/v;->x(Ljava/lang/Iterable;)Lj7/h;

    move-result-object p2

    sget-object v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;->INSTANCE:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$findItemByReplaceActions$1$1;

    invoke-static {p2, v0}, Lj7/p;->p(Lj7/h;Lkotlin/jvm/functions/Function1;)Lj7/h;

    move-result-object p2

    check-cast p2, Lj7/s;

    iget-object v0, p2, Lj7/s;->a:Lj7/h;

    invoke-interface {v0}, Lj7/h;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object v1, p2, Lj7/s;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/theme/data/SrcDescription;

    new-instance v2, Lcom/android/launcher/w;

    invoke-direct {v2, v1, p0}, Lcom/android/launcher/w;-><init>(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {p1, v2}, Lcom/android/launcher3/Workspace;->mapOverItems(Lcom/android/launcher3/util/LauncherBindableItemsContainer$ItemOperator;)V

    goto :goto_23

    :cond_3e
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    return-object p0
.end method

.method private static final findItemByReplaceActions$lambda$3$lambda$2$lambda$1(Lcom/android/launcher3/card/theme/data/SrcDescription;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)Z
    .registers 8

    const-string v0, "$it"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$originView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getItemInfoId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_21

    :cond_1f
    :goto_1f
    move v2, v3

    goto :goto_81

    :cond_21
    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appwidget"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5e

    instance-of v0, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_5e

    check-cast p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object p2, p2, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getProviderName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1f

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_81

    :cond_5e
    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    instance-of v0, p2, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v0, :cond_1f

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardType:I

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getCardType()Ljava/lang/Integer;

    move-result-object p0

    if-nez p0, :cond_79

    goto :goto_1f

    :cond_79
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p2, p0, :cond_1f

    iput-object p3, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :goto_81
    return v2
.end method

.method private final prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Ll4/d;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const-string v0, "MODEL_EXECUTOR"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lm7/k1;

    invoke-direct {v0, p0}, Lm7/k1;-><init>(Ljava/util/concurrent/Executor;)V

    new-instance p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;

    const/4 v1, 0x0

    invoke-direct {p0, p2, p1, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$prepareWidgetInfoWithInvalidLocation$2;-><init>(Landroid/view/View;Ljava/lang/String;Ll4/d;)V

    invoke-static {v0, p0, p3}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final selectStrategyAndStartTransform(Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/TargetDescription;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/IAreaWidget;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/card/theme/data/TargetDescription;",
            "Ljava/lang/String;",
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

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p6

    instance-of v3, v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;

    if-eqz v3, :cond_17

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;

    iget v4, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_17

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    goto :goto_1c

    :cond_17
    new-instance v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;

    invoke-direct {v3, p0, v2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Ll4/d;)V

    :goto_1c
    iget-object v2, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->result:Ljava/lang/Object;

    sget-object v4, Lm4/a;->a:Lm4/a;

    iget v5, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_55

    if-eq v5, v8, :cond_40

    if-eq v5, v7, :cond_3b

    if-ne v5, v6, :cond_33

    invoke-static {v2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_187

    :cond_33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3b
    invoke-static {v2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_143

    :cond_40
    iget-object v0, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$2:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function2;

    iget-object v1, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v5, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/card/IAreaWidget;

    invoke-static {v2}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v10, v0

    move-object v13, v5

    move-object v5, v1

    move-object v1, v13

    goto/16 :goto_119

    :cond_55
    invoke-static {v2}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    const-string v10, "getDefault()"

    invoke-static {v5, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v11, p2

    invoke-virtual {v11, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v11, "this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x23

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v12

    invoke-static {v12, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_18e

    :goto_9a
    move-object/from16 v5, p3

    move-object/from16 v10, p5

    goto/16 :goto_121

    :sswitch_a0
    const-string v5, "card#appwidget"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    goto :goto_9a

    :sswitch_a9
    const-string v5, "appwidget#card"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    goto :goto_9a

    :sswitch_b2
    const-string v5, "card#card"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_bb

    goto :goto_9a

    :cond_bb
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->prepareCardInfoWithInvalidLocation(I)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object v0

    instance-of v2, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v2, :cond_c9

    move-object v5, v0

    goto :goto_ca

    :cond_c9
    move-object v5, v9

    :goto_ca
    if-nez v5, :cond_cd

    goto :goto_d7

    :cond_cd
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getEditable()I

    move-result v10

    if-ne v10, v8, :cond_d4

    goto :goto_d5

    :cond_d4
    const/4 v8, 0x0

    :goto_d5
    iput-boolean v8, v5, Lcom/android/launcher3/card/LauncherCardInfo;->isEditable:Z

    :goto_d7
    if-eqz v2, :cond_db

    move-object v2, v0

    goto :goto_dc

    :cond_db
    move-object v2, v9

    :goto_dc
    if-nez v2, :cond_df

    goto :goto_e5

    :cond_df
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getTitle()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    :goto_e5
    new-instance v2, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;

    invoke-direct {v2}, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;-><init>()V

    move-object/from16 v5, p3

    move-object/from16 v10, p5

    move-object v13, v2

    move-object v2, v0

    move-object v0, v13

    goto :goto_123

    :sswitch_f2
    const-string v5, "appwidget#appwidget"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_fb

    goto :goto_9a

    :cond_fb
    const-string/jumbo v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    iput-object v1, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    move-object/from16 v5, p3

    iput-object v5, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    move-object/from16 v10, p5

    iput-object v10, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$2:Ljava/lang/Object;

    iput v8, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    move-object/from16 v8, p4

    invoke-direct {p0, v8, v2, v3}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->prepareWidgetInfoWithInvalidLocation(Ljava/lang/String;Landroid/view/View;Ll4/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_119

    return-object v4

    :cond_119
    :goto_119
    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    new-instance v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    invoke-direct {v0}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;-><init>()V

    goto :goto_123

    :goto_121
    move-object v0, v9

    move-object v2, v0

    :goto_123
    if-eqz v0, :cond_146

    if-eqz v2, :cond_146

    const/4 v6, 0x1

    iput-object v9, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$2:Ljava/lang/Object;

    iput v7, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    move-object p0, v0

    move-object p1, v1

    move-object/from16 p2, v2

    move/from16 p3, v6

    move-object/from16 p4, v5

    move-object/from16 p5, v10

    move-object/from16 p6, v3

    invoke-virtual/range {p0 .. p6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_143

    return-object v4

    :cond_143
    :goto_143
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_146
    if-eqz v10, :cond_18a

    new-instance v1, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not find transform strategy or targetInfo, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xe

    const/4 v11, 0x0

    move-object p0, v1

    move-object p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v5

    move/from16 p4, v7

    move/from16 p5, v8

    move-object/from16 p6, v11

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v9, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$0:Ljava/lang/Object;

    iput-object v9, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$1:Ljava/lang/Object;

    iput-object v9, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->L$2:Ljava/lang/Object;

    iput v6, v3, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$selectStrategyAndStartTransform$1;->label:I

    invoke-interface {v10, v1, v3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_187

    return-object v4

    :cond_187
    :goto_187
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_18a
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    nop

    :sswitch_data_18e
    .sparse-switch
        -0x643123b9 -> :sswitch_f2
        -0x11f05f5d -> :sswitch_b2
        0x11bab92e -> :sswitch_a9
        0x4b1955f2 -> :sswitch_a0
    .end sparse-switch
.end method

.method private final transferReplaceResultToThemeStore(ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V
    .registers 12

    const-string p0, "AreaWidgetReplaceStrategy"

    :try_start_2
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/card/theme/data/TransformResponse;

    invoke-static {p2}, Li4/o;->f(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p1, p2}, Lcom/android/launcher3/card/theme/data/TransformResponse;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "transferReplaceResultToThemeStore arg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "transferReplaceResultToThemeStore: cardName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "cardName"

    invoke-virtual {p2, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p4, "oldItemInfoId"

    invoke-virtual {p2, p4, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz p6, :cond_5d

    const-string p4, "forThemeInfo"

    invoke-virtual {p2, p4, p6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5d
    const-string/jumbo p4, "oldCardName"

    invoke-virtual {p2, p4, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "itemInfoId"

    invoke-virtual {p2, p4, p9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p4, "result"

    invoke-virtual {p2, p4, p8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p5, "transferReplaceResultToThemeStore: bundle="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string/jumbo p4, "partner_theme"

    invoke-virtual {p3, p4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p4
    :try_end_8e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8e} :catch_c5

    const-string/jumbo p5, "onCardSwitchResult"

    const/4 p6, 0x0

    if-eqz p4, :cond_a8

    :try_start_94
    const-string/jumbo p3, "transferReplaceResultToThemeStore authority: partner_theme"

    invoke-static {p0, p3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4, p5, p1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_9d
    .catchall {:try_start_94 .. :try_end_9d} :catchall_a1

    :try_start_9d
    invoke-static {p4, p6}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_a0
    .catch Ljava/lang/Exception; {:try_start_9d .. :try_end_a0} :catch_c5

    goto :goto_cc

    :catchall_a1
    move-exception p1

    :try_start_a2
    throw p1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception p2

    :try_start_a4
    invoke-static {p4, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2

    :cond_a8
    const-string/jumbo p4, "partner_theme.basic"

    invoke-virtual {p3, p4}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object p3
    :try_end_af
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_af} :catch_c5

    if-eqz p3, :cond_cc

    :try_start_b1
    const-string/jumbo p4, "transferReplaceResultToThemeStore authority: partner_theme.basic"

    invoke-static {p0, p4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5, p1, p2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_be

    :try_start_ba
    invoke-static {p3, p6}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V
    :try_end_bd
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_bd} :catch_c5

    goto :goto_cc

    :catchall_be
    move-exception p1

    :try_start_bf
    throw p1
    :try_end_c0
    .catchall {:try_start_bf .. :try_end_c0} :catchall_c0

    :catchall_c0
    move-exception p2

    :try_start_c1
    invoke-static {p3, p1}, Lt4/a;->a(Ljava/lang/AutoCloseable;Ljava/lang/Throwable;)V

    throw p2
    :try_end_c5
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c5} :catch_c5

    :catch_c5
    move-exception p1

    const-string/jumbo p2, "transferReplaceResultToThemeStore:"

    invoke-static {p2, p1, p0}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_cc
    :goto_cc
    return-void
.end method


# virtual methods
.method public final jumpToThemeStore(Landroid/content/Context;Lcom/android/launcher3/card/theme/data/ExtraDataForStartThemeStore;)V
    .registers 7

    const-string p0, "jumpToThemeStore, extra: "

    const-string v0, "AreaWidgetReplaceStrategy"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "extra"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oplus.themestore.action.widgetcard_switch"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_data_for_start_theme_store"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_28
    const-string v2, "com.heytap.themestore"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_44
    .catchall {:try_start_28 .. :try_end_44} :catchall_45

    goto :goto_4a

    :catchall_45
    move-exception v2

    invoke-static {v2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v2

    :goto_4a
    instance-of v3, v2, Lh4/k$a;

    if-eqz v3, :cond_4f

    const/4 v2, 0x0

    :cond_4f
    check-cast v2, Ljava/lang/Boolean;

    if-nez v2, :cond_81

    :try_start_53
    const-string v2, "com.oplus.themestore"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_6f
    .catchall {:try_start_53 .. :try_end_6f} :catchall_70

    goto :goto_75

    :catchall_70
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_75
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_7c

    goto :goto_81

    :cond_7c
    const-string p1, "jumpToThemeStore failed, e: "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_81
    :goto_81
    return-void
.end method

.method public final prepareCardInfoWithInvalidLocation(I)Lcom/android/launcher3/card/LauncherCardInfo;
    .registers 3

    const-string/jumbo p0, "tryAddCardByStore, cardType = "

    const-string v0, "AreaWidgetReplaceStrategy"

    invoke-static {p0, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    sget-object p0, Lcom/oplus/card/manager/domain/CardManager;->Companion:Lcom/oplus/card/manager/domain/CardManager$Companion;

    invoke-virtual {p0}, Lcom/oplus/card/manager/domain/CardManager$Companion;->getInstance()Lcom/oplus/card/manager/domain/CardManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/card/manager/domain/CardManager;->getCardConfigInfo(I)Lcom/oplus/card/config/domain/model/CardConfigInfo;

    move-result-object p0

    if-nez p0, :cond_1c

    const-string/jumbo p0, "tryAddCardByStore failed, cardType = "

    invoke-static {p0, p1, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1c
    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->initSpans()V

    invoke-static {p0}, Lcom/android/launcher3/card/LauncherCardInfo;->newFromCardConfigInfo(Lcom/oplus/card/config/domain/model/CardConfigInfo;)Lcom/android/launcher3/card/LauncherCardInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/oplus/card/config/domain/model/CardConfigInfo;->getIdentification()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "theme_card"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/launcher3/card/LauncherCardInfo;->isThemeCard:Z

    :cond_33
    return-object p1
.end method

.method public final replaceLauncherCardOrWidget(Ljava/lang/String;Landroid/content/Context;Ll4/d;)Ljava/lang/Object;
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v5, p2

    move-object/from16 v1, p3

    instance-of v2, v1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;

    if-eqz v2, :cond_19

    move-object v2, v1

    check-cast v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;

    iget v3, v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_19

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    goto :goto_1e

    :cond_19
    new-instance v2, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Ll4/d;)V

    :goto_1e
    move-object v8, v2

    iget-object v1, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->result:Ljava/lang/Object;

    sget-object v9, Lm4/a;->a:Lm4/a;

    iget v2, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    const/4 v10, 0x3

    const/4 v3, 0x2

    const/4 v7, 0x1

    const-string/jumbo v11, "replaceLauncherCardOrWidget finally: "

    const v12, 0x7f0a064d

    const-string v13, "AreaWidgetReplaceStrategy"

    if-eqz v2, :cond_76

    if-eq v2, v7, :cond_61

    if-eq v2, v3, :cond_50

    if-ne v2, v10, :cond_48

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :try_start_42
    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_45} :catch_73
    .catchall {:try_start_42 .. :try_end_45} :catchall_70

    const/4 v0, 0x0

    goto/16 :goto_267

    :cond_48
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_50
    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :try_start_5a
    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5d} :catch_73
    .catchall {:try_start_5a .. :try_end_5d} :catchall_70

    const/4 v0, 0x0

    move-object v1, v0

    goto/16 :goto_257

    :cond_61
    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v0, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    :try_start_6b
    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_6e
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6e} :catch_73
    .catchall {:try_start_6b .. :try_end_6e} :catchall_70

    goto/16 :goto_130

    :catchall_70
    move-exception v0

    goto/16 :goto_159

    :catch_73
    move-exception v0

    goto/16 :goto_15d

    :cond_76
    invoke-static {v1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance v14, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v14}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    :try_start_7e
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    const-class v2, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    move-object/from16 v4, p1

    invoke-virtual {v1, v4, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getReplaceActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_7e .. :try_end_97} :catch_2a5
    .catchall {:try_start_7e .. :try_end_97} :catchall_2a0

    if-eq v2, v7, :cond_c9

    :try_start_99
    const-string/jumbo v0, "replaceLauncherCardOrWidget, multi request actions is not support"

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_a1
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_a1} :catch_c5
    .catchall {:try_start_99 .. :try_end_a1} :catchall_c1

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-eqz v2, :cond_b5

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_b6

    :cond_b5
    const/4 v3, 0x0

    :goto_b6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catchall_c1
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1ee

    :catch_c5
    move-exception v0

    const/4 v1, 0x0

    goto/16 :goto_1f2

    :cond_c9
    :try_start_c9
    invoke-direct {v0, v5, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->findItemByReplaceActions(Landroid/content/Context;Ljava/util/List;)Landroid/view/View;

    move-result-object v15
    :try_end_cd
    .catch Ljava/lang/Exception; {:try_start_c9 .. :try_end_cd} :catch_2a5
    .catchall {:try_start_c9 .. :try_end_cd} :catchall_2a0

    :try_start_cd
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceLauncherCardOrWidget originView: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " request: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ec
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_ec} :catch_298
    .catchall {:try_start_cd .. :try_end_ec} :catchall_296

    if-nez v15, :cond_167

    :try_start_ee
    new-instance v4, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const-string/jumbo v17, "replaceLauncherCardOrWidget failed for originView is null"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0xe

    const/16 v22, 0x0

    move-object/from16 v16, v4

    invoke-direct/range {v16 .. v22}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/ResultCode;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x7f12011d

    invoke-static {v5, v1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    sget-object v10, Lm7/y0;->b:Lm7/f0;

    new-instance v6, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;

    const/16 v16, 0x0

    move-object v1, v6

    move-object/from16 v2, p0

    move-object v3, v14

    move-object/from16 v5, p2

    move-object v0, v6

    move-object/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;Landroid/content/Context;Ll4/d;)V

    iput-object v15, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    iput-object v14, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    iput v7, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    invoke-static {v10, v0, v8}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_12b
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_12b} :catch_164
    .catchall {:try_start_ee .. :try_end_12b} :catchall_161

    if-ne v0, v9, :cond_12e

    return-object v9

    :cond_12e
    move-object v2, v14

    move-object v3, v15

    :goto_130
    :try_start_130
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_132
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_132} :catch_73
    .catchall {:try_start_130 .. :try_end_132} :catchall_70

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-eqz v2, :cond_146

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_147

    :cond_146
    const/4 v4, 0x0

    :goto_147
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_158

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v3, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_158
    return-object v0

    :goto_159
    move-object v14, v2

    move-object v1, v3

    goto/16 :goto_1ee

    :goto_15d
    move-object v14, v2

    move-object v1, v3

    goto/16 :goto_1f2

    :catchall_161
    move-exception v0

    goto/16 :goto_1ed

    :catch_164
    move-exception v0

    goto/16 :goto_1f1

    :cond_167
    :try_start_167
    invoke-virtual {v15, v12}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v2, Ljava/lang/Boolean;
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_167 .. :try_end_16d} :catch_298
    .catchall {:try_start_167 .. :try_end_16d} :catchall_296

    if-eqz v4, :cond_172

    :try_start_16f
    check-cast v2, Ljava/lang/Boolean;

    goto :goto_173

    :cond_172
    const/4 v2, 0x0

    :goto_173
    const/4 v4, 0x0

    if-eqz v2, :cond_17b

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    goto :goto_17c

    :cond_17b
    move v2, v4

    :goto_17c
    if-eqz v2, :cond_1ab

    const-string/jumbo v0, "replaceLauncherCardOrWidget Repeat for same src"

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_186
    .catch Ljava/lang/Exception; {:try_start_16f .. :try_end_186} :catch_164
    .catchall {:try_start_16f .. :try_end_186} :catchall_161

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-eqz v2, :cond_19a

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    goto :goto_19b

    :cond_19a
    const/4 v3, 0x0

    :goto_19b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v15, v12, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-object v0

    :cond_1ab
    :try_start_1ab
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v15, v12, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    instance-of v2, v15, Lcom/android/launcher3/card/IAreaWidget;

    if-eqz v2, :cond_254

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/card/theme/data/ReplaceAction;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "appwidget"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1c8
    .catch Ljava/lang/Exception; {:try_start_1ab .. :try_end_1c8} :catch_298
    .catchall {:try_start_1ab .. :try_end_1c8} :catchall_296

    if-eqz v2, :cond_1d3

    :try_start_1ca
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getProviderName()Ljava/lang/String;

    move-result-object v2
    :try_end_1d2
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1d2} :catch_164
    .catchall {:try_start_1ca .. :try_end_1d2} :catchall_161

    goto :goto_1eb

    :cond_1d3
    :try_start_1d3
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getType()Ljava/lang/String;

    move-result-object v2

    const-string v4, "card"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2
    :try_end_1e1
    .catch Ljava/lang/Exception; {:try_start_1d3 .. :try_end_1e1} :catch_298
    .catchall {:try_start_1d3 .. :try_end_1e1} :catchall_296

    if-eqz v2, :cond_1f5

    :try_start_1e3
    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getCardType()Ljava/lang/String;

    move-result-object v2
    :try_end_1eb
    .catch Ljava/lang/Exception; {:try_start_1e3 .. :try_end_1eb} :catch_164
    .catchall {:try_start_1e3 .. :try_end_1eb} :catchall_161

    :goto_1eb
    move-object v6, v2

    goto :goto_1f7

    :goto_1ed
    move-object v1, v15

    :goto_1ee
    const/4 v2, 0x0

    goto/16 :goto_2eb

    :goto_1f1
    move-object v1, v15

    :goto_1f2
    const/4 v2, 0x0

    goto/16 :goto_2a9

    :cond_1f5
    const/4 v2, 0x0

    goto :goto_1eb

    :goto_1f7
    if-eqz v6, :cond_254

    :try_start_1f9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceLauncherCardOrWidget replace src: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", keyinfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/card/IAreaWidget;

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getSrc()Lcom/android/launcher3/card/theme/data/SrcDescription;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/SrcDescription;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/android/launcher3/card/theme/data/ReplaceAction;->getTarget()Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-result-object v7

    new-instance v12, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3;
    :try_end_227
    .catch Ljava/lang/Exception; {:try_start_1f9 .. :try_end_227} :catch_298
    .catchall {:try_start_1f9 .. :try_end_227} :catchall_296

    const/4 v1, 0x0

    :try_start_228
    invoke-direct {v12, v14, v5, v0, v1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Ll4/d;)V

    iput-object v15, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    iput-object v14, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    iput v3, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I
    :try_end_231
    .catch Ljava/lang/Exception; {:try_start_228 .. :try_end_231} :catch_24e
    .catchall {:try_start_228 .. :try_end_231} :catchall_248

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    move-object v3, v4

    move-object v4, v7

    move-object v5, v6

    move-object v6, v12

    move-object v7, v8

    :try_start_23a
    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->selectStrategyAndStartTransform(Lcom/android/launcher3/card/IAreaWidget;Ljava/lang/String;Lcom/android/launcher3/card/theme/data/TargetDescription;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_23e
    .catch Ljava/lang/Exception; {:try_start_23a .. :try_end_23e} :catch_246
    .catchall {:try_start_23a .. :try_end_23e} :catchall_244

    if-ne v0, v9, :cond_241

    return-object v9

    :cond_241
    move-object/from16 v1, v16

    goto :goto_255

    :catchall_244
    move-exception v0

    goto :goto_24b

    :catch_246
    move-exception v0

    goto :goto_251

    :catchall_248
    move-exception v0

    move-object/from16 v16, v1

    :goto_24b
    move-object/from16 v1, v16

    goto :goto_29b

    :catch_24e
    move-exception v0

    move-object/from16 v16, v1

    :goto_251
    move-object/from16 v1, v16

    goto :goto_29e

    :cond_254
    const/4 v1, 0x0

    :goto_255
    move-object v2, v14

    move-object v3, v15

    :goto_257
    const-wide/16 v4, 0x2bc

    :try_start_259
    iput-object v3, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$0:Ljava/lang/Object;

    iput-object v2, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->L$1:Ljava/lang/Object;

    iput v10, v8, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$1;->label:I

    invoke-static {v4, v5, v8}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_263
    .catch Ljava/lang/Exception; {:try_start_259 .. :try_end_263} :catch_291
    .catchall {:try_start_259 .. :try_end_263} :catchall_28b

    if-ne v0, v9, :cond_266

    return-object v9

    :cond_266
    move-object v0, v1

    :goto_267
    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-eqz v2, :cond_27b

    invoke-virtual {v2}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v0

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v0}, Ljava/lang/Integer;-><init>(I)V

    move-object v0, v2

    :cond_27b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2e7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_2e1

    :catchall_28b
    move-exception v0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v3

    goto/16 :goto_2eb

    :catch_291
    move-exception v0

    move-object v14, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_2a9

    :catchall_296
    move-exception v0

    goto :goto_29a

    :catch_298
    move-exception v0

    goto :goto_29d

    :goto_29a
    const/4 v1, 0x0

    :goto_29b
    move-object v2, v1

    goto :goto_2a3

    :goto_29d
    const/4 v1, 0x0

    :goto_29e
    move-object v2, v1

    goto :goto_2a8

    :catchall_2a0
    move-exception v0

    const/4 v15, 0x0

    move-object v2, v15

    :goto_2a3
    move-object v1, v15

    goto :goto_2eb

    :catch_2a5
    move-exception v0

    const/4 v15, 0x0

    move-object v2, v15

    :goto_2a8
    move-object v1, v15

    :goto_2a9
    :try_start_2a9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "replaceLauncherCardOrWidget request Parse failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2be
    .catchall {:try_start_2a9 .. :try_end_2be} :catchall_2ea

    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-eqz v3, :cond_2d2

    invoke-virtual {v3}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v3

    :cond_2d2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_2e7

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v3, v1

    :goto_2e1
    const v1, 0x7f0a064d

    invoke-virtual {v3, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_2e7
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :catchall_2ea
    move-exception v0

    :goto_2eb
    invoke-static {v11}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    if-eqz v4, :cond_2ff

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v2}, Ljava/lang/Integer;-><init>(I)V

    move-object v2, v4

    :cond_2ff
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_313

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const v3, 0x7f0a064d

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_313
    throw v0
.end method
