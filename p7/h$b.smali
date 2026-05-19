.class public final Lp7/h$b;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lo7/j<",
        "+",
        "Ljava/lang/Object;",
        ">;",
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
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n*L\n1#1,405:1\n514#2,6:406\n530#2,4:412\n534#2:418\n1#3:416\n18#4:417\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1$3$2\n*L\n238#1:406,6\n239#1:412,4\n239#1:418\n242#1:417\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1$3$2"
    f = "Delay.kt"
    l = {
        0xf2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:I

.field public synthetic c:Ljava/lang/Object;

.field public final synthetic d:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic e:Lp7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lp7/e;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/Object;",
            ">;",
            "Lp7/e<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lp7/h$b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/h$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lp7/h$b;->e:Lp7/e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

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

    new-instance v0, Lp7/h$b;

    iget-object v1, p0, Lp7/h$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lp7/h$b;->e:Lp7/e;

    invoke-direct {v0, v1, p0, p2}, Lp7/h$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lp7/e;Ll4/d;)V

    iput-object p1, v0, Lp7/h$b;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    check-cast p1, Lo7/j;

    iget-object p1, p1, Lo7/j;->a:Ljava/lang/Object;

    check-cast p2, Ll4/d;

    new-instance v0, Lo7/j;

    invoke-direct {v0, p1}, Lo7/j;-><init>(Ljava/lang/Object;)V

    new-instance p1, Lp7/h$b;

    iget-object v1, p0, Lp7/h$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Lp7/h$b;->e:Lp7/e;

    invoke-direct {p1, v1, p0, p2}, Lp7/h$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lp7/e;Ll4/d;)V

    iput-object v0, p1, Lp7/h$b;->c:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {p1, p0}, Lp7/h$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lp7/h$b;->b:I

    const/4 v2, 0x1

    if-eqz v1, :cond_19

    if-ne v1, v2, :cond_11

    iget-object p0, p0, Lp7/h$b;->a:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_58

    :cond_11
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_19
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lp7/h$b;->c:Ljava/lang/Object;

    check-cast p1, Lo7/j;

    iget-object p1, p1, Lo7/j;->a:Ljava/lang/Object;

    iget-object v1, p0, Lp7/h$b;->d:Lkotlin/jvm/internal/Ref$ObjectRef;

    instance-of v3, p1, Lo7/j$b;

    if-nez v3, :cond_2a

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_2a
    iget-object v4, p0, Lp7/h$b;->e:Lp7/e;

    if-eqz v3, :cond_5f

    instance-of v3, p1, Lo7/j$a;

    const/4 v5, 0x0

    if-eqz v3, :cond_37

    move-object v3, p1

    check-cast v3, Lo7/j$a;

    goto :goto_38

    :cond_37
    move-object v3, v5

    :goto_38
    if-eqz v3, :cond_3d

    iget-object v3, v3, Lo7/j$a;->a:Ljava/lang/Throwable;

    goto :goto_3e

    :cond_3d
    move-object v3, v5

    :goto_3e
    if-nez v3, :cond_5e

    iget-object v3, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_59

    sget-object v6, Lq7/t;->a:Lr7/f0;

    if-ne v3, v6, :cond_49

    goto :goto_4a

    :cond_49
    move-object v5, v3

    :goto_4a
    iput-object p1, p0, Lp7/h$b;->c:Ljava/lang/Object;

    iput-object v1, p0, Lp7/h$b;->a:Ljava/lang/Object;

    iput v2, p0, Lp7/h$b;->b:I

    invoke-interface {v4, v5, p0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_57

    return-object v0

    :cond_57
    move-object p0, v1

    :goto_58
    move-object v1, p0

    :cond_59
    sget-object p0, Lq7/t;->b:Lr7/f0;

    iput-object p0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_5f

    :cond_5e
    throw v3

    :cond_5f
    :goto_5f
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
