.class final Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->emit(Lh4/j;Ll4/d;)Ljava/lang/Object;
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
    c = "com.android.launcher3.card.theme.data.AreaWidgetEditViewModel$1$1$1$1$1$1$1"
    f = "AreaWidgetEditViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $it:Lh4/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lh4/j;Lcom/android/launcher/Launcher;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;",
            "Lcom/android/launcher/Launcher;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$it:Lh4/j;

    iput-object p3, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
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

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$it:Lh4/j;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lh4/j;Lcom/android/launcher/Launcher;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->label:I

    if-nez v0, :cond_33

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$it:Lh4/j;

    iget-object v0, v0, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$it:Lh4/j;

    iget-object v1, v1, Lh4/j;->b:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->saveThemCardInfo(ILandroid/os/Bundle;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    const-string v1, "launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;->$it:Lh4/j;

    iget-object p0, p0, Lh4/j;->a:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->tryAddCardByThemeStore(Lcom/android/launcher/Launcher;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_33
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
