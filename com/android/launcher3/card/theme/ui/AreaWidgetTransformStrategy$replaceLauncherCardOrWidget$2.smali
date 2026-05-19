.class final Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->replaceLauncherCardOrWidget(Ljava/lang/String;Landroid/content/Context;Ll4/d;)Ljava/lang/Object;
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
    c = "com.android.launcher3.card.theme.ui.AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2"
    f = "AreaWidgetTransformStrategy.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $createdFail:Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

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
.method public constructor <init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;Landroid/content/Context;Ll4/d;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/launcher3/card/theme/data/TransFromRequest;",
            ">;",
            "Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;",
            "Landroid/content/Context;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$createdFail:Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    iput-object p4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$context:Landroid/content/Context;

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

    new-instance p1, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;

    iget-object v2, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$createdFail:Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    iget-object v4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$context:Landroid/content/Context;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;-><init>(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;Landroid/content/Context;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->label:I

    if-nez v0, :cond_3b

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->this$0:Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;

    iget-object p1, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$request:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/card/theme/data/TransFromRequest;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/TransFromRequest;->getRequestId()I

    move-result v2

    new-instance p1, Lcom/android/launcher3/card/theme/data/ActionResult;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$createdFail:Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/ResultCode;->getCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/launcher3/card/theme/data/ActionResult;-><init>(IILjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$context:Landroid/content/Context;

    const/4 v6, 0x0

    iget-object p0, p0, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy$replaceLauncherCardOrWidget$2;->$createdFail:Lcom/android/launcher3/card/theme/data/ResultCode$WidgetCreatedFail;

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/ResultCode;->getCode()I

    move-result v9

    const/4 v10, -0x1

    const-string v5, ""

    const-string v7, ""

    const-string v8, ""

    invoke-static/range {v1 .. v10}, Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;->access$transferReplaceResultToThemeStore(Lcom/android/launcher3/card/theme/ui/AreaWidgetTransformStrategy;ILcom/android/launcher3/card/theme/data/ActionResult;Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;II)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
