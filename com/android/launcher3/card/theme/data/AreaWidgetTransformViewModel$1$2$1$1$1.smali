.class final Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.android.launcher3.card.theme.data.AreaWidgetTransformViewModel$1$2$1$1$1"
    f = "AreaWidgetTransformViewModel.kt"
    l = {
        0x65
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

.field public synthetic L$0:Ljava/lang/Object;

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
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-direct {v0, p0, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;-><init>(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;Ll4/d;)V

    iput-object p1, v0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->invoke(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object p0, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3c

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;

    sget-object v1, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->setThemeCardWhiteList(Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;)V

    iget-object v1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->$this_runCatching:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "getAppContext()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$1$2$1$1$1;->label:I

    invoke-virtual {v1, v3, p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->initTargetWidgetInfos(Landroid/content/Context;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3b

    return-object v0

    :cond_3b
    move-object p0, p1

    :goto_3c
    const-string p1, "collect Latest white List, supportSizes:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$ThemeCardWhiteList;->getSupportSizes()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", targetWidgetInfosOfWhiteList:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel;->Companion:Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;

    invoke-virtual {p0}, Lcom/android/launcher3/card/theme/data/AreaWidgetTransformViewModel$Companion;->getTargetWidgetInfosOfWhiteList()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AreaWidgetTransformViewModel"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
