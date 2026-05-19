.class final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.launcher3.card.theme.ui.AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1"
    f = "AreaWidgetTransformStrategy.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $it:Lcom/android/launcher3/card/theme/data/ResultCode;

.field public final synthetic $request:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/card/theme/data/TransFromRequest;",
            ">;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/ResultCode;Landroid/content/Context;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/card/theme/data/TransFromRequest;",
            ">;",
            "Lcom/android/launcher3/card/theme/data/ResultCode;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$context:Landroid/content/Context;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 9
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

    new-instance p1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    iget-object v4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/ResultCode;Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->label:I

    if-nez v0, :cond_58

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance v3, Lcom/android/launcher3/card/theme/data/ActionResult;

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ResultCode;->getCode()I

    move-result p1

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/ResultCode;->getTargetItemId()I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {v4}, Lcom/android/launcher3/card/theme/data/ResultCode;->getTargetProviderName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p1, v0, v4}, Lcom/android/launcher3/card/theme/data/ActionResult;-><init>(IILjava/lang/String;)V

    iget-object v4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$context:Landroid/content/Context;

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ResultCode;->getCardName()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ResultCode;->getOriginItemInfoId()I

    move-result v6

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ResultCode;->getThemeInfo()Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ResultCode;->getOldCardName()Ljava/lang/String;

    move-result-object v8

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/ResultCode;->getCode()I

    move-result v9

    iget-object p0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$3$1;->$it:Lcom/android/launcher3/card/theme/data/ResultCode;

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/ResultCode;->getTargetItemInfoId()I

    move-result v10

    invoke-static/range {v1 .. v10}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->access$transferReplaceResultToThemeStore(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_58
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
