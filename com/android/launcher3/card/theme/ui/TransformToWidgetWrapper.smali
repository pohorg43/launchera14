.class public final Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;
.super Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;

.field private static final TAG:Ljava/lang/String; = "TransformToWidgetWrapper"


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;->Companion:Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$Companion;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeTransformAction(Lcom/android/launcher3/card/IAreaWidget;Lcom/android/launcher3/model/data/ItemInfo;ZLcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
    .registers 30
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

    move-object/from16 v4, p5

    move-object/from16 v0, p6

    instance-of v5, v0, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;

    if-eqz v5, :cond_1d

    move-object v5, v0

    check-cast v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;

    iget v6, v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    const/high16 v7, -0x80000000

    and-int v8, v6, v7

    if-eqz v8, :cond_1d

    sub-int/2addr v6, v7

    iput v6, v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    goto :goto_22

    :cond_1d
    new-instance v5, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;

    invoke-direct {v5, v1, v0}, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;-><init>(Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;Ll4/d;)V

    :goto_22
    move-object v14, v5

    iget-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->result:Ljava/lang/Object;

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    const/4 v7, 0x4

    const-string v8, "TransformToWidgetWrapper"

    const-string v9, "launcher"

    packed-switch v6, :pswitch_data_2f0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_39  #0x6
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_240

    :pswitch_3e  #0x5, 0x7
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_2e9

    :pswitch_43  #0x4
    iget-boolean v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    iget-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iget-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    iget-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher/Launcher;

    iget-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iget-object v10, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v11, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    :try_start_69
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_aa

    move-object v0, v10

    move-object v10, v6

    move-object v6, v13

    move-object v13, v7

    :goto_70
    move v7, v1

    goto/16 :goto_1d9

    :goto_73
    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_292

    :pswitch_7a  #0x3
    iget-boolean v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    iget-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    iget-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/OplusCellLayout;

    iget-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher/Launcher;

    iget-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/functions/Function2;

    iget-object v10, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/card/theme/data/TargetDescription;

    iget-object v11, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/card/IAreaWidget;

    iget-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper;

    :try_start_a0
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_a0 .. :try_end_a3} :catch_aa

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    goto/16 :goto_1a2

    :catch_aa
    move-exception v0

    goto :goto_73

    :pswitch_ac  #0x2
    iget-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_161

    :pswitch_b9  #0x1
    iget-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher/Launcher;

    iget-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_125

    :pswitch_c5  #0x0
    invoke-static {v0}, Lh4/l;->b(Ljava/lang/Object;)V

    instance-of v0, v2, Landroid/view/View;

    if-eqz v0, :cond_2ec

    instance-of v0, v3, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-nez v0, :cond_d2

    goto/16 :goto_2ec

    :cond_d2
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher/Launcher;->getLauncherOrNull(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v6

    if-eqz v6, :cond_2e9

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v10, v0, Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v10, :cond_ea

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    goto :goto_eb

    :cond_ea
    const/4 v0, 0x0

    :goto_eb
    if-nez v0, :cond_f0

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_f0
    move-object v10, v3

    check-cast v10, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    invoke-virtual {v6, v10}, Lcom/android/launcher/Launcher;->inflateAppWidget(Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;)Landroid/view/View;

    move-result-object v10

    instance-of v11, v10, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    if-eqz v11, :cond_fe

    check-cast v10, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;

    goto :goto_ff

    :cond_fe
    const/4 v10, 0x0

    :goto_ff
    if-nez v10, :cond_134

    if-eqz v4, :cond_127

    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    const-string v16, "TransformToWidgetWrapper, create failed"

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v4, v0, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_123

    return-object v5

    :cond_123
    move-object v2, v3

    move-object v1, v6

    :goto_125
    move-object v6, v1

    goto :goto_128

    :cond_127
    move-object v2, v3

    :goto_128
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    const-string v1, "TransformToWidgetWrapper, create failed"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_134
    invoke-virtual {v10, v7}, Lcom/android/launcher3/widget/CustomLauncherAppWidgetHostView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->getIAreaWidgetParentCellLayout(Lcom/android/launcher3/card/IAreaWidget;)Lcom/android/launcher3/OplusCellLayout;

    move-result-object v7

    if-nez v7, :cond_170

    if-eqz v4, :cond_163

    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v21, 0x0

    const-string v16, "TransformToWidgetWrapper, can not find cell layout"

    move-object v15, v0

    invoke-direct/range {v15 .. v21}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v4, v0, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_15f

    return-object v5

    :cond_15f
    move-object v2, v3

    move-object v1, v6

    :goto_161
    move-object v6, v1

    goto :goto_164

    :cond_163
    move-object v2, v3

    :goto_164
    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getModelWriter()Lcom/android/launcher3/model/OplusModelWriter;

    move-result-object v0

    const-string v1, "TransformToWidgetWrapper, can not find cell layout"

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/model/ModelWriter;->deleteItemFromDatabase(Lcom/android/launcher3/model/data/ItemInfo;Ljava/lang/String;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_170
    :try_start_170
    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    move-object/from16 v11, p4

    iput-object v11, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v10, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    move/from16 v12, p3

    iput-boolean v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    const/4 v13, 0x3

    iput v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    move-object/from16 p6, v0

    const-wide/16 v0, 0x28a

    invoke-static {v0, v1, v14}, Lm7/s0;->a(JLl4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_193
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_193} :catch_28d

    if-ne v0, v5, :cond_196

    return-object v5

    :cond_196
    move-object/from16 v13, p0

    move v1, v12

    move-object v12, v2

    move-object/from16 v2, p6

    move-object/from16 v22, v11

    move-object v11, v3

    move-object v3, v10

    move-object/from16 v10, v22

    :goto_1a2
    :try_start_1a2
    move-object v0, v12

    check-cast v0, Landroid/view/View;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v13, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v12, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v11, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v10, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v6, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v7, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v3, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v2, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    iput-boolean v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->Z$0:Z

    const/4 v15, 0x4

    iput v15, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    move-object/from16 p0, v13

    move-object/from16 p1, v0

    move-object/from16 p2, v7

    move-object/from16 p3, v6

    move-object/from16 p4, v11

    move-object/from16 p5, v14

    invoke-virtual/range {p0 .. p5}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->prepareForBind(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Ll4/d;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1cf
    .catch Ljava/lang/Exception; {:try_start_1a2 .. :try_end_1cf} :catch_28b

    if-ne v0, v5, :cond_1d2

    return-object v5

    :cond_1d2
    move-object v0, v10

    move-object v10, v6

    move-object v6, v13

    move-object v13, v4

    move-object v4, v7

    goto/16 :goto_70

    :goto_1d9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const v15, 0x7f0a064d

    invoke-virtual {v3, v15, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(ILjava/lang/Object;)V

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v1

    invoke-interface {v1, v3, v11}, Lcom/android/launcher3/WorkspaceLayoutManager;->addInScreen(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result v1

    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object/from16 v16, v4

    const v4, 0x7f0a064d

    invoke-virtual {v3, v4, v15}, Landroid/appwidget/AppWidgetHostView;->setTag(ILjava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "complete addInScreen -- targetInfo:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", originInfo: "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v15, ", success:"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_243

    move-object v1, v12

    check-cast v1, Landroid/view/View;

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    move-object v8, v3

    move-object v9, v1

    move-object v11, v2

    move-object v12, v0

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_240

    return-object v5

    :cond_240
    :goto_240
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_243
    check-cast v12, Landroid/view/View;

    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v4, v16

    invoke-virtual {v6, v12, v4, v10, v11}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz v13, :cond_2e9

    new-instance v0, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    const-string v2, "TransformToWidgetWrapper, replace failed, addInScreen: "

    invoke-static {v2, v1}, Lcom/android/launcher/mode/a;->a(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v4

    move/from16 p5, v6

    move-object/from16 p6, v7

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v1, 0x0

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    const/4 v1, 0x7

    iput v1, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v13, v0, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_2e9

    return-object v5

    :catch_28b
    move-exception v0

    goto :goto_292

    :catch_28d
    move-exception v0

    move-object/from16 v13, p0

    move-object v12, v2

    move-object v11, v3

    :goto_292
    const-string/jumbo v1, "prepareForBind exception:"

    invoke-static {v1, v0, v8}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    check-cast v12, Landroid/view/View;

    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v7, v6, v11}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->resetAfterBindFailed(Landroid/view/View;Lcom/android/launcher3/OplusCellLayout;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V

    if-eqz v4, :cond_2e9

    new-instance v1, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TransformToWidgetWrapper, prepareForBind exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xe

    const/4 v8, 0x0

    move-object/from16 p0, v1

    move-object/from16 p1, v0

    move-object/from16 p2, v2

    move-object/from16 p3, v3

    move/from16 p4, v6

    move/from16 p5, v7

    move-object/from16 p6, v8

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$0:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$1:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$2:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$3:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$4:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$5:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$6:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$7:Ljava/lang/Object;

    iput-object v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->L$8:Ljava/lang/Object;

    const/4 v0, 0x5

    iput v0, v14, Lcom/android/launcher3/card/theme/ui/TransformToWidgetWrapper$invokeTransformAction$1;->label:I

    invoke-interface {v4, v1, v14}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_2e9

    return-object v5

    :cond_2e9
    :goto_2e9
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_2ec
    :goto_2ec
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    nop

    :pswitch_data_2f0
    .packed-switch 0x0
        :pswitch_c5  #00000000
        :pswitch_b9  #00000001
        :pswitch_ac  #00000002
        :pswitch_7a  #00000003
        :pswitch_43  #00000004
        :pswitch_3e  #00000005
        :pswitch_39  #00000006
        :pswitch_3e  #00000007
    .end packed-switch
.end method
