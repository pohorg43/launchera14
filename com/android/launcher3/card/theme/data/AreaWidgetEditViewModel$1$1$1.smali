.class final Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;-><init>(Lcom/android/launcher/Launcher;)V
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
    c = "com.android.launcher3.card.theme.data.AreaWidgetEditViewModel$1$1$1"
    f = "AreaWidgetEditViewModel.kt"
    l = {
        0x40
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

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

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_39

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    invoke-static {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->access$getLauncherRef$p(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/Launcher;

    if-eqz p1, :cond_39

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    sget-object v3, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;

    const/4 v5, 0x0

    invoke-direct {v4, v1, p1, v5}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lcom/android/launcher/Launcher;Ll4/d;)V

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1;->label:I

    invoke-static {p1, v3, v4, p0}, Landroidx/lifecycle/RepeatOnLifecycleKt;->repeatOnLifecycle(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$State;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_39

    return-object v0

    :cond_39
    :goto_39
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
