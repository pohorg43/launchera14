.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->checkIsFinishBinding(Lcom/android/launcher/Launcher;Ll4/d;)Ljava/lang/Object;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAreaWidgetTransformViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2\n+ 2 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n*L\n1#1,247:1\n314#2,11:248\n*S KotlinDebug\n*F\n+ 1 AreaWidgetTransformViewModel.kt\ncom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2\n*L\n134#1:248,11\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.data.AreaWidgetTransformViewModel$checkIsFinishBinding$2"
    f = "AreaWidgetTransformViewModel.kt"
    l = {
        0xf8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $launcher:Lcom/android/launcher/Launcher;

.field public L$0:Ljava/lang/Object;

.field public L$1:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/Launcher;",
            "Ll4/d<",
            "-",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->$launcher:Lcom/android/launcher/Launcher;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method

.method public static synthetic a(Landroidx/lifecycle/Observer;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->invokeSuspend$lambda$3$lambda$2(Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method private static final invokeSuspend$lambda$3$lambda$2(Landroidx/lifecycle/Observer;)V
    .registers 2

    sget-object v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/LiveData;->removeObserver(Landroidx/lifecycle/Observer;)V

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

    new-instance p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->$launcher:Lcom/android/launcher/Launcher;

    invoke-direct {p1, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;-><init>(Lcom/android/launcher/Launcher;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1d

    if-ne v1, v2, :cond_15

    iget-object v0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->L$1:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher/Launcher;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_78

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1d
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getLauncherBindingState()Landroidx/lifecycle/MutableLiveData;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_35
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->$launcher:Lcom/android/launcher/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->L$1:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2;->label:I

    new-instance v3, Lm7/n;

    invoke-static {p0}, Lm4/d;->g(Ll4/d;)Ll4/d;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lm7/n;-><init>(Ll4/d;I)V

    invoke-virtual {v3}, Lm7/n;->w()V

    new-instance v2, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$1;

    invoke-direct {v2, v3}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$1;-><init>(Lm7/l;)V

    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroidx/lifecycle/Observer;

    sget-object v4, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v5, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;

    invoke-direct {v5, v1, v2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$2$1;-><init>(Lcom/android/launcher/Launcher;Landroidx/lifecycle/Observer;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    new-instance v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$3;

    invoke-direct {v1, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$checkIsFinishBinding$2$1$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-interface {v3, v1}, Lm7/l;->h(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v3}, Lm7/n;->u()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_74

    const-string v2, "frame"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_74
    if-ne v1, v0, :cond_77

    return-object v0

    :cond_77
    move-object p0, p1

    :goto_78
    iget-object p0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p0, Landroidx/lifecycle/Observer;

    if-eqz p0, :cond_88

    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/launcher3/card/theme/data/a;

    invoke-direct {v0, p0}, Lcom/android/launcher3/card/theme/data/a;-><init>(Landroidx/lifecycle/Observer;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_88
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
