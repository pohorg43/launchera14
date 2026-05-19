.class final Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lp7/e;"
    }
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lcom/android/launcher/Launcher;)V
    .registers 3

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iput-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lh4/j;Ll4/d;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lh4/j<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p2, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast p2, Ljava/lang/CharSequence;

    const-string v0, "NO_REQUEST"

    invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5c

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    invoke-static {p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->access$get_addRequestFlow$p(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;)Lp7/m;

    move-result-object p2

    invoke-static {}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->access$getINIT_REQUEST$cp()Lh4/j;

    move-result-object v0

    invoke-interface {p2, v0}, Lp7/m;->setValue(Ljava/lang/Object;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "request add, cardType = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", bundle = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lh4/j;->b:Ljava/lang/Object;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AreaWidgetEditViewModel"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    const-string v0, "launcher"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v1

    if-eqz v1, :cond_5c

    const/4 v2, 0x0

    new-instance v4, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;

    iget-object p2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->$launcher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    invoke-direct {v4, p2, p1, p0, v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;Lh4/j;Lcom/android/launcher/Launcher;Ll4/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lm7/h;->b(Lm7/j0;Ll4/f;ILkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lm7/s1;

    :cond_5c
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lh4/j;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel$1$1$1$1$1$1;->emit(Lh4/j;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
