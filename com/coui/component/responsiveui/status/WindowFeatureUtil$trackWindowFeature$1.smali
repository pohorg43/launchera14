.class final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil;->trackWindowFeature(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;)V
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
    c = "com.coui.component.responsiveui.status.WindowFeatureUtil$trackWindowFeature$1"
    f = "WindowFeatureUtil.kt"
    l = {
        0x2f
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Landroidx/activity/ComponentActivity;

.field public final synthetic c:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/activity/ComponentActivity;",
            "Ljava/util/function/Consumer<",
            "Lcom/coui/component/responsiveui/status/WindowFeature;",
            ">;",
            "Ll4/d<",
            "-",
            "Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->b:Landroidx/activity/ComponentActivity;

    iput-object p2, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->c:Ljava/util/function/Consumer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 4
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

    new-instance p1, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;

    iget-object v0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->b:Landroidx/activity/ComponentActivity;

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->c:Ljava/util/function/Consumer;

    invoke-direct {p1, v0, p0, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;-><init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_38

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->b:Landroidx/activity/ComponentActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    const-string v1, "activity.lifecycle"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v3, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;

    iget-object v4, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->b:Landroidx/activity/ComponentActivity;

    iget-object v5, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->c:Ljava/util/function/Consumer;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1;-><init>(Landroidx/activity/ComponentActivity;Ljava/util/function/Consumer;Ll4/d;)V

    iput v2, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1;->a:I

    invoke-static {p1, v1, v3, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/Lifecycle;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_38

    return-object v0

    :cond_38
    :goto_38
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
