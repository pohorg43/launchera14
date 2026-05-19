.class public final Lp7/h$a;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp7/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function1<",
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
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,405:1\n18#2:406\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$1\n*L\n232#1:406\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$1"
    f = "Delay.kt"
    l = {
        0xe8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lp7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic c:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lp7/e;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lp7/h$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/h$a;->b:Lp7/e;

    iput-object p2, p0, Lp7/h$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ll4/d;)Ll4/d;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance v0, Lp7/h$a;

    iget-object v1, p0, Lp7/h$a;->b:Lp7/e;

    iget-object p0, p0, Lp7/h$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p0, p1}, Lp7/h$a;-><init>(Lp7/e;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    check-cast p1, Ll4/d;

    new-instance v0, Lp7/h$a;

    iget-object v1, p0, Lp7/h$a;->b:Lp7/e;

    iget-object p0, p0, Lp7/h$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0, v1, p0, p1}, Lp7/h$a;-><init>(Lp7/e;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lp7/h$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lp7/h$a;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_16

    if-ne v1, v3, :cond_e

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_2d

    :cond_e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_16
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lp7/h$a;->b:Lp7/e;

    sget-object v1, Lq7/t;->a:Lr7/f0;

    iget-object v4, p0, Lp7/h$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v4, v4, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v4, v1, :cond_24

    move-object v4, v2

    :cond_24
    iput v3, p0, Lp7/h$a;->a:I

    invoke-interface {p1, v4, p0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2d

    return-object v0

    :cond_2d
    :goto_2d
    iget-object p0, p0, Lp7/h$a;->c:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object v2, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
