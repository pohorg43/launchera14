.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.launcher3.card.theme.data.AreaWidgetTransformViewModel$1$2$1$1"
    f = "AreaWidgetTransformViewModel.kt"
    l = {
        0x63
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_5a

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-static {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->access$get_themeCardWhiteListFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;)Lp7/d;

    move-result-object v5

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->label:I

    sget v1, Lp7/j;->a:I

    new-instance v4, Lp7/i;

    invoke-direct {v4, p1, v3}, Lp7/i;-><init>(Lkotlin/jvm/functions/Function2;Ll4/d;)V

    new-instance p1, Lq7/k;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x1c

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lq7/k;-><init>(Lkotlin/jvm/functions/Function3;Lp7/d;Ll4/f;ILo7/a;I)V

    sget-object v9, Lo7/a;->a:Lo7/a;

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v6, p1

    move-object v7, v1

    move v8, v2

    invoke-static/range {v6 .. v11}, Lq7/q$a;->a(Lq7/q;Ll4/f;ILo7/a;ILjava/lang/Object;)Lp7/d;

    move-result-object p1

    sget-object v1, Lq7/s;->a:Lq7/s;

    invoke-interface {p1, v1, p0}, Lp7/d;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_50

    goto :goto_52

    :cond_50
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_52
    if-ne p0, v0, :cond_55

    goto :goto_57

    :cond_55
    sget-object p0, Lh4/z;->a:Lh4/z;

    :goto_57
    if-ne p0, v0, :cond_5a

    return-object v0

    :cond_5a
    :goto_5a
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
