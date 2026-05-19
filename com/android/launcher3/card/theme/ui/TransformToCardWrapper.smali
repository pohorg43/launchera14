.class public final Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;
.super Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "TransformToCardWrapper"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;->Companion:Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 32
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

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v0, p5

    move-object/from16 v4, p6

    instance-of v5, v4, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;

    if-eqz v5, :cond_1d

    move-object v5, v4

    check-cast v5, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;

    iget v6, v5, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;

    invoke-direct {v5, v1, v4}, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;-><init>(Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;Ll4/d;)V

    :goto_22
    move-object v14, v5

    iget-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->result:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    const-string v7, "TransformToCardWrapper, create failed"

    const-string v8, ""

    const-string/jumbo v9, "targetInfo.createCardName()"

    const-string v10, "launcher"

    const-string v11, "TransformToCardWrapper"

    packed-switch v6, :pswitch_data_30e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3f  #0x6
    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_30a

    :pswitch_44  #0x5
    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_28b

    :pswitch_49  #0x4
    iget-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    iget-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher/Launcher;

    iget-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v15, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;

    :try_start_6d
    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_70} :catch_78

    move-object v4, v7

    :goto_71
    move-object/from16 v24, v15

    move-object v15, v6

    move-object/from16 v6, v24

    goto/16 :goto_220

    :catch_78
    move-exception v0

    goto/16 :goto_2fc

    :pswitch_7b  #0x3
    iget-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/card/LauncherCardView;

    iget-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/OplusCellLayout;

    iget-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher/Launcher;

    iget-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/functions/Function2;

    iget-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v15, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper;

    :try_start_9f
    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_a2} :catch_78

    goto/16 :goto_1eb

    :pswitch_a4  #0x2
    iget-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_1b4

    :pswitch_b1  #0x1
    iget-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_154

    :pswitch_be  #0x0
    invoke-static {v4}, Lh4/l;->b(Ljava/lang/Object;)V

    instance-of v4, v2, Landroid/view/View;

    if-nez v4, :cond_cc

    instance-of v4, v3, Lcom/android/launcher3/card/LauncherCardInfo;

    if-nez v4, :cond_cc

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_cc
    const-string/jumbo v4, "null cannot be cast to non-null type android.view.View"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v4, v2

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v6

    if-eqz v6, :cond_30a

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v12, v4, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v12, :cond_ea

    check-cast v4, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_eb

    :cond_ea
    const/4 v4, 0x0

    :goto_eb
    if-nez v4, :cond_f0

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_f0
    invoke-static {v4, v3}, Lcom/android/launcher3/card/theme/util/ThemeCardUtils;->keepPositionConsistentBetween(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string/jumbo v12, "null cannot be cast to non-null type com.android.launcher3.card.LauncherCardInfo"

    invoke-static {v3, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v12, v3

    check-cast v12, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v13

    const-string v15, "launcher.workspace"

    invoke-static {v13, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v13}, Lcom/android/launcher3/card/CardCreator;->inflateCardViewWithInfo(Lcom/android/launcher3/card/LauncherCardInfo;Lcom/android/launcher3/OplusWorkspace;)Lcom/android/launcher3/card/LauncherCardView;

    move-result-object v13

    if-nez v13, :cond_161

    const-string v1, "invokeTransformAction: CardCreatedFail1"

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_156

    new-instance v1, Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getForThemeInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v9, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v9, :cond_126

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_127

    :cond_126
    const/4 v4, 0x0

    :goto_127
    if-eqz v4, :cond_12e

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v4

    goto :goto_12f

    :cond_12e
    const/4 v4, 0x0

    :goto_12f
    if-nez v4, :cond_134

    move-object/from16 v19, v8

    goto :goto_136

    :cond_134
    move-object/from16 v19, v4

    :goto_136
    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    const-string v16, "TransformToCardWrapper, create failed"

    move-object v15, v1

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v22}, Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v0, v1, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_152

    return-object v5

    :cond_152
    move-object v1, v3

    move-object v0, v6

    :goto_154
    move-object v6, v0

    goto :goto_157

    :cond_156
    move-object v1, v3

    :goto_157
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_161
    const/4 v15, 0x4

    invoke-virtual {v13, v15}, Lcom/android/launcher3/card/LauncherCardView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->getIAreaWidgetParentCellLayout(Lcom/android/launcher3/card/IAreaWidget;)Lcom/android/launcher3/OplusCellLayout;

    move-result-object v15

    if-nez v15, :cond_1c1

    const-string v1, "invokeTransformAction: CardCreatedFail2"

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1b6

    new-instance v1, Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;

    invoke-virtual/range {p4 .. p4}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getForThemeInfo()Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v12}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v9, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v9, :cond_186

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_187

    :cond_186
    const/4 v4, 0x0

    :goto_187
    if-eqz v4, :cond_18e

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v4

    goto :goto_18f

    :cond_18e
    const/4 v4, 0x0

    :goto_18f
    if-nez v4, :cond_194

    move-object/from16 v19, v8

    goto :goto_196

    :cond_194
    move-object/from16 v19, v4

    :goto_196
    const/16 v20, 0x0

    const/16 v21, 0x10

    const/16 v22, 0x0

    const-string v16, "TransformToCardWrapper, create failed"

    move-object v15, v1

    move-object/from16 v18, v2

    invoke-direct/range {v15 .. v22}, Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    const/4 v2, 0x2

    iput v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v0, v1, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_1b2

    return-object v5

    :cond_1b2
    move-object v1, v3

    move-object v0, v6

    :goto_1b4
    move-object v6, v0

    goto :goto_1b7

    :cond_1b6
    move-object v1, v3

    :goto_1b7
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    invoke-virtual {v0, v1, v7}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_1c1
    :try_start_1c1
    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    move-object/from16 v7, p4

    iput-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v15, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    const/4 v12, 0x3

    iput v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    const-wide/16 v0, 0x28a

    invoke-static {v0, v1, v14}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1de
    .catch Ljava/lang/Exception; {:try_start_1c1 .. :try_end_1de} :catch_2f5

    if-ne v0, v5, :cond_1e1

    return-object v5

    :cond_1e1
    move-object v12, v3

    move-object v0, v4

    move-object v3, v6

    move-object v1, v13

    move-object/from16 v6, p5

    move-object v13, v2

    move-object v2, v15

    move-object/from16 v15, p0

    :goto_1eb
    :try_start_1eb
    move-object v4, v13

    check-cast v4, Landroid/view/View;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v15, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    move-object/from16 v16, v0

    const/4 v0, 0x4

    iput v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    move-object/from16 p0, v15

    move-object/from16 p1, v4

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move-object/from16 p4, v12

    move-object/from16 p5, v14

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->prepareForBind(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ll4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_218
    .catch Ljava/lang/Exception; {:try_start_1eb .. :try_end_218} :catch_78

    if-ne v0, v5, :cond_21b

    return-object v5

    :cond_21b
    move-object v4, v7

    move-object/from16 v0, v16

    goto/16 :goto_71

    :goto_220
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 p3, v8

    const v8, 0x7f0a064d

    invoke-virtual {v1, v8, v7}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v7

    invoke-interface {v7, v1, v12}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v7

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 p6, v9

    const v9, 0x7f0a064d

    invoke-virtual {v1, v9, v8}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "complete addInScreen targetView:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", targetInfo:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", success:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v11, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_28e

    const/4 v7, 0x1

    move-object v9, v13

    check-cast v9, Landroid/view/View;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    const/4 v2, 0x5

    iput v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    move-object v8, v1

    move-object v10, v3

    move-object v11, v0

    move-object v12, v4

    move-object v13, v15

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_28b

    return-object v5

    :cond_28b
    :goto_28b
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_28e
    check-cast v13, Landroid/view/View;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6, v13, v2, v3, v12}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    const-string v1, "invokeTransformAction: CardCreatedFail3"

    invoke-static {v11, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v15, :cond_30a

    new-instance v1, Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;

    const-string v2, "TransformToCardWrapper, replace failed, addInScreen:"

    invoke-static {v2, v7}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getForThemeInfo()Ljava/lang/String;

    move-result-object v18

    check-cast v12, Lcom/android/launcher3/card/LauncherCardInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v3, p6

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v3, v0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v3, :cond_2bb

    check-cast v0, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_2bc

    :cond_2bb
    const/4 v0, 0x0

    :goto_2bc
    if-eqz v0, :cond_2c3

    invoke-virtual {v0}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v0

    goto :goto_2c4

    :cond_2c3
    const/4 v0, 0x0

    :goto_2c4
    if-nez v0, :cond_2c9

    move-object/from16 v20, p3

    goto :goto_2cb

    :cond_2c9
    move-object/from16 v20, v0

    :goto_2cb
    const/16 v21, 0x0

    const/16 v22, 0x10

    const/16 v23, 0x0

    move-object/from16 v16, v1

    move-object/from16 v19, v2

    invoke-direct/range {v16 .. v23}, Lcom/android/launcher3/card/theme/data/ResultCode$CardCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x6

    iput v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToCardWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v15, v1, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_30a

    return-object v5

    :catch_2f5
    move-exception v0

    move-object v13, v2

    move-object v12, v3

    move-object v3, v6

    move-object v2, v15

    move-object/from16 v15, p0

    :goto_2fc
    const-string/jumbo v1, "prepareForBind exception:"

    invoke-static {v1, v0, v11}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    check-cast v13, Landroid/view/View;

    invoke-static {v3, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v15, v13, v2, v3, v12}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_30a
    :goto_30a
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    nop

    :pswitch_data_30e
    .packed-switch 0x0
        :pswitch_be  #00000000
        :pswitch_b1  #00000001
        :pswitch_a4  #00000002
        :pswitch_7b  #00000003
        :pswitch_49  #00000004
        :pswitch_44  #00000005
        :pswitch_3f  #00000006
    .end packed-switch
.end method
