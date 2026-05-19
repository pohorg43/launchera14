.class public final Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lp7/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1;->collect(Lp7/e;Ll4/d;)Ljava/lang/Object;
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nEmitters.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 WindowFeatureUtil.kt\ncom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,222:1\n48#2:223\n49#3,4:224\n800#4,11:228\n*S KotlinDebug\n*F\n+ 1 WindowFeatureUtil.kt\ncom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1\n*L\n52#1:228,11\n*E\n"
    }
.end annotation


# instance fields
.field public final synthetic a:Lp7/e;


# direct methods
.method public constructor <init>(Lp7/e;)V
    .registers 2

    iput-object p1, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;->a:Lp7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
    .registers 9

    instance-of v0, p2, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;

    if-eqz v0, :cond_13

    move-object v0, p2

    check-cast v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;

    iget v1, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->b:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->b:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;

    invoke-direct {v0, p0, p2}, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;-><init>(Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;Ll4/d;)V

    :goto_18
    iget-object p2, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->a:Ljava/lang/Object;

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->b:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2f

    if-ne v2, v3, :cond_27

    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_63

    :cond_27
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2f
    invoke-static {p2}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2;->a:Lp7/e;

    check-cast p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-virtual {p1}, Landroidx/window/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_43
    :goto_43
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_55

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Landroidx/window/layout/FoldingFeature;

    if-eqz v5, :cond_43

    invoke-interface {p2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_43

    :cond_55
    new-instance v2, Lcom/coui/component/responsiveui/status/WindowFeature;

    invoke-direct {v2, p1, p2}, Lcom/coui/component/responsiveui/status/WindowFeature;-><init>(Ljava/util/List;Ljava/util/List;)V

    iput v3, v0, Lcom/coui/component/responsiveui/status/WindowFeatureUtil$trackWindowFeature$1$1$invokeSuspend$$inlined$map$1$2$1;->b:I

    invoke-interface {p0, v2, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_63

    return-object v1

    :cond_63
    :goto_63
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
