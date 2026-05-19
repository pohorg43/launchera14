.class final Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.android.launcher3.card.theme.data.AreaWidgetEditViewModel$1$1$1$1$1"
    f = "AreaWidgetEditViewModel.kt"
    l = {
        0x41
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lcom/android/launcher/Launcher;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;",
            "Lcom/android/launcher/Launcher;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

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

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lcom/android/launcher/Launcher;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-eq v1, v2, :cond_11

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_30

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    invoke-static {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->access$get_addRequestFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;)Lp7/m;

    move-result-object p1

    new-instance v1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;

    iget-object v3, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iget-object v4, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {v1, v3, v4}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lcom/android/launcher/Launcher;)V

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->label:I

    invoke-interface {p1, v1, p0}, Lp7/o;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_30

    return-object v0

    :cond_30
    :goto_30
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0
.end method
