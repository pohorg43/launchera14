.class public final Lp7/h;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function3<",
        "Lm7/j0;",
        "Lp7/e<",
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
        "SMAP\nDelay.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n+ 2 Symbol.kt\nkotlinx/coroutines/internal/Symbol\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Select.kt\nkotlinx/coroutines/selects/SelectKt\n*L\n1#1,405:1\n18#2:406\n18#2:408\n1#3:407\n55#4,8:409\n*S KotlinDebug\n*F\n+ 1 Delay.kt\nkotlinx/coroutines/flow/FlowKt__DelayKt$debounceInternal$1\n*L\n218#1:406\n221#1:408\n228#1:409,8\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlinx.coroutines.flow.FlowKt__DelayKt$debounceInternal$1"
    f = "Delay.kt"
    l = {
        0xdd,
        0x1a0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public synthetic d:Ljava/lang/Object;

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Lp7/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lp7/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Lp7/d;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Object;",
            "Ljava/lang/Long;",
            ">;",
            "Lp7/d<",
            "Ljava/lang/Object;",
            ">;",
            "Ll4/d<",
            "-",
            "Lp7/h;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lp7/h;->f:Lkotlin/jvm/functions/Function1;

    iput-object p2, p0, Lp7/h;->g:Lp7/d;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p3}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    check-cast p1, Lm7/j0;

    check-cast p2, Lp7/e;

    check-cast p3, Ll4/d;

    new-instance v0, Lp7/h;

    iget-object v1, p0, Lp7/h;->f:Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lp7/h;->g:Lp7/d;

    invoke-direct {v0, v1, p0, p3}, Lp7/h;-><init>(Lkotlin/jvm/functions/Function1;Lp7/d;Ll4/d;)V

    iput-object p1, v0, Lp7/h;->d:Ljava/lang/Object;

    iput-object p2, v0, Lp7/h;->e:Ljava/lang/Object;

    sget-object p0, Lh4/z;->a:Lh4/z;

    invoke-virtual {v0, p0}, Lp7/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 23

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v2, v0, Lp7/h;->c:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_40

    if-eq v2, v4, :cond_2b

    if-ne v2, v5, :cond_23

    iget-object v2, v0, Lp7/h;->a:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lp7/h;->e:Ljava/lang/Object;

    check-cast v7, Lo7/s;

    iget-object v8, v0, Lp7/h;->d:Ljava/lang/Object;

    check-cast v8, Lp7/e;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move-object v9, v8

    move-object v8, v7

    :cond_21
    move-object v7, v2

    goto :goto_69

    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    iget-object v2, v0, Lp7/h;->b:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$LongRef;

    iget-object v7, v0, Lp7/h;->a:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v0, Lp7/h;->e:Ljava/lang/Object;

    check-cast v8, Lo7/s;

    iget-object v9, v0, Lp7/h;->d:Ljava/lang/Object;

    check-cast v9, Lp7/e;

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_ae

    :cond_40
    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v2, v0, Lp7/h;->d:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Lm7/j0;

    iget-object v2, v0, Lp7/h;->e:Ljava/lang/Object;

    check-cast v2, Lp7/e;

    new-instance v13, Lp7/h$c;

    iget-object v8, v0, Lp7/h;->g:Lp7/d;

    invoke-direct {v13, v8, v6}, Lp7/h$c;-><init>(Lp7/d;Ll4/d;)V

    sget-object v8, Ll4/h;->a:Ll4/h;

    const/4 v9, 0x0

    sget-object v10, Lo7/a;->a:Lo7/a;

    const/4 v11, 0x1

    const/4 v12, 0x0

    invoke-static/range {v7 .. v13}, Lo7/o;->b(Lm7/j0;Ll4/f;ILo7/a;ILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)Lo7/s;

    move-result-object v7

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object v9, v2

    move-object/from16 v20, v8

    move-object v8, v7

    move-object/from16 v7, v20

    :goto_69
    iget-object v2, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object v10, Lq7/t;->b:Lr7/f0;

    if-eq v2, v10, :cond_127

    new-instance v2, Lkotlin/jvm/internal/Ref$LongRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$LongRef;-><init>()V

    iget-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v10, :cond_bd

    iget-object v11, v0, Lp7/h;->f:Lkotlin/jvm/functions/Function1;

    sget-object v12, Lq7/t;->a:Lr7/f0;

    if-ne v10, v12, :cond_7f

    move-object v10, v6

    :cond_7f
    invoke-interface {v11, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    move-result-wide v10

    iput-wide v10, v2, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    const-wide/16 v13, 0x0

    cmp-long v10, v10, v13

    if-ltz v10, :cond_93

    move v11, v4

    goto :goto_94

    :cond_93
    move v11, v3

    :goto_94
    if-eqz v11, :cond_b1

    if-nez v10, :cond_bd

    iget-object v10, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-ne v10, v12, :cond_9d

    move-object v10, v6

    :cond_9d
    iput-object v9, v0, Lp7/h;->d:Ljava/lang/Object;

    iput-object v8, v0, Lp7/h;->e:Ljava/lang/Object;

    iput-object v7, v0, Lp7/h;->a:Ljava/lang/Object;

    iput-object v2, v0, Lp7/h;->b:Ljava/lang/Object;

    iput v4, v0, Lp7/h;->c:I

    invoke-interface {v9, v10, v0}, Lp7/e;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v1, :cond_ae

    return-object v1

    :cond_ae
    :goto_ae
    iput-object v6, v7, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_bd

    :cond_b1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Debounce timeout should not be negative"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_bd
    :goto_bd
    move-object/from16 v20, v7

    move-object v7, v2

    move-object/from16 v2, v20

    new-instance v10, Lu7/g;

    invoke-interface {v0}, Ll4/d;->getContext()Ll4/f;

    move-result-object v11

    invoke-direct {v10, v11}, Lu7/g;-><init>(Ll4/f;)V

    iget-object v11, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v11, :cond_fb

    iget-wide v11, v7, Lkotlin/jvm/internal/Ref$LongRef;->element:J

    new-instance v7, Lp7/h$a;

    invoke-direct {v7, v9, v2, v6}, Lp7/h$a;-><init>(Lp7/e;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    new-instance v14, Lu7/c;

    invoke-direct {v14, v11, v12}, Lu7/c;-><init>(J)V

    sget-object v11, Lu7/b;->a:Lu7/b;

    const-string v12, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = \'clauseObject\')] kotlin.Any, @[ParameterName(name = \'select\')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = \'param\')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }"

    invoke-static {v11, v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v12, 0x3

    invoke-static {v11, v12}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v11

    move-object v15, v11

    check-cast v15, Lkotlin/jvm/functions/Function3;

    const/16 v19, 0x0

    sget-object v16, Lu7/i;->a:Lkotlin/jvm/functions/Function3;

    new-instance v11, Lu7/g$a;

    sget-object v17, Lu7/i;->f:Lr7/f0;

    move-object v13, v11

    move-object/from16 v18, v7

    invoke-direct/range {v13 .. v19}, Lu7/g$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;Ljava/lang/Object;Ljava/lang/Object;Lkotlin/jvm/functions/Function3;)V

    invoke-virtual {v10, v11, v3}, Lu7/g;->l(Lu7/g$a;Z)V

    :cond_fb
    invoke-interface {v8}, Lo7/s;->v()Lu7/d;

    move-result-object v7

    new-instance v11, Lp7/h$b;

    invoke-direct {v11, v2, v9, v6}, Lp7/h$b;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lp7/e;Ll4/d;)V

    invoke-virtual {v10, v7, v11}, Lu7/g;->k(Lu7/d;Lkotlin/jvm/functions/Function2;)V

    iput-object v9, v0, Lp7/h;->d:Ljava/lang/Object;

    iput-object v8, v0, Lp7/h;->e:Ljava/lang/Object;

    iput-object v2, v0, Lp7/h;->a:Ljava/lang/Object;

    iput-object v6, v0, Lp7/h;->b:Ljava/lang/Object;

    iput v5, v0, Lp7/h;->c:I

    sget-object v7, Lu7/g;->f:Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lu7/g$a;

    if-eqz v7, :cond_120

    invoke-virtual {v10, v0}, Lu7/g;->h(Ll4/d;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_124

    :cond_120
    invoke-virtual {v10, v0}, Lu7/g;->i(Ll4/d;)Ljava/lang/Object;

    move-result-object v7

    :goto_124
    if-ne v7, v1, :cond_21

    return-object v1

    :cond_127
    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0
.end method
