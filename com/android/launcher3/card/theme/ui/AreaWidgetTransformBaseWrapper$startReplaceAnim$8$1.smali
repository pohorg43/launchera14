.class final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper;->startReplaceAnim(ZLandroid/view/View;Landroid/view/View;Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/card/theme/data/TargetDescription;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.ui.AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1"
    f = "AreaWidgetTransformBaseWrapper.kt"
    l = {
        0x88
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $info:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic $onFinished:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $originInfo:Lcom/android/launcher3/model/data/ItemInfo;

.field public final synthetic $targetDescription:Lcom/android/launcher3/card/theme/data/TargetDescription;

.field public final synthetic $targetItemId:Lkotlin/jvm/internal/Ref$IntRef;

.field public final synthetic $targetProviderName:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public label:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function2;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/TargetDescription;Ll4/d;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/card/theme/data/TargetDescription;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$onFinished:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetItemId:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p5, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetProviderName:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p6, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetDescription:Lcom/android/launcher3/card/theme/data/TargetDescription;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$onFinished:Lkotlin/jvm/functions/Function2;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetItemId:Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v5, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetProviderName:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetDescription:Lcom/android/launcher3/card/theme/data/TargetDescription;

    move-object v0, p1

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;-><init>(Lkotlin/jvm/functions/Function2;Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher3/model/data/ItemInfo;Lkotlin/jvm/internal/Ref$IntRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/TargetDescription;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 21

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    if-ne v2, v3, :cond_10

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_8e

    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$onFinished:Lkotlin/jvm/functions/Function2;

    if-eqz v2, :cond_8e

    new-instance v15, Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;

    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    iget v5, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    if-eqz v4, :cond_2c

    iget v4, v4, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    goto :goto_2d

    :cond_2c
    const/4 v4, 0x0

    :goto_2d
    move v6, v4

    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetItemId:Lkotlin/jvm/internal/Ref$IntRef;

    iget v7, v4, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetProviderName:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v8, v4

    check-cast v8, Ljava/lang/String;

    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$targetDescription:Lcom/android/launcher3/card/theme/data/TargetDescription;

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/TargetDescription;->getForThemeInfo()Ljava/lang/String;

    move-result-object v10

    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$info:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v9, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v11, 0x0

    if-eqz v9, :cond_49

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_4a

    :cond_49
    move-object v4, v11

    :goto_4a
    if-eqz v4, :cond_51

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v4

    goto :goto_52

    :cond_51
    move-object v4, v11

    :goto_52
    const-string v9, ""

    if-nez v4, :cond_58

    move-object v12, v9

    goto :goto_59

    :cond_58
    move-object v12, v4

    :goto_59
    iget-object v4, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->$originInfo:Lcom/android/launcher3/model/data/ItemInfo;

    instance-of v13, v4, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz v13, :cond_62

    check-cast v4, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_63

    :cond_62
    move-object v4, v11

    :goto_63
    if-eqz v4, :cond_69

    invoke-virtual {v4}, Lcom/android/launcher3/card/LauncherCardInfo;->createCardName()Ljava/lang/String;

    move-result-object v11

    :cond_69
    if-nez v11, :cond_6d

    move-object v13, v9

    goto :goto_6e

    :cond_6d
    move-object v13, v11

    :goto_6e
    const/4 v14, 0x0

    const/16 v16, 0x100

    const/16 v17, 0x0

    const-string/jumbo v9, "transform success with anim"

    move-object v4, v15

    move-object v11, v12

    move-object v12, v13

    move v13, v14

    move/from16 v14, v16

    move-object/from16 v18, v15

    move-object/from16 v15, v17

    invoke-direct/range {v4 .. v15}, Lcom/android/launcher3/card/theme/data/ResultCode$SUCCESS;-><init>(IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput v3, v0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformBaseWrapper$startReplaceAnim$8$1;->label:I

    move-object/from16 v3, v18

    invoke-interface {v2, v3, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_8e

    return-object v1

    :cond_8e
    :goto_8e
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
