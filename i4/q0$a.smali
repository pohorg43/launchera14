.class public final Li4/q0$a;
.super Ln4/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Li4/q0;->b(Ljava/util/Iterator;IIZZ)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lj7/j<",
        "-",
        "Ljava/util/List<",
        "+TT;>;>;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "kotlin.collections.SlidingWindowKt$windowedIterator$1"
    f = "SlidingWindow.kt"
    l = {
        0x22,
        0x28,
        0x31,
        0x37,
        0x3a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public d:I

.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:I

.field public final synthetic g:I

.field public final synthetic h:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic i:Z

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(IILjava/util/Iterator;ZZLl4/d;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Iterator<",
            "+TT;>;ZZ",
            "Ll4/d<",
            "-",
            "Li4/q0$a;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Li4/q0$a;->f:I

    iput p2, p0, Li4/q0$a;->g:I

    iput-object p3, p0, Li4/q0$a;->h:Ljava/util/Iterator;

    iput-boolean p4, p0, Li4/q0$a;->i:Z

    iput-boolean p5, p0, Li4/q0$a;->j:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Ln4/i;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 11
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

    new-instance v7, Li4/q0$a;

    iget v1, p0, Li4/q0$a;->f:I

    iget v2, p0, Li4/q0$a;->g:I

    iget-object v3, p0, Li4/q0$a;->h:Ljava/util/Iterator;

    iget-boolean v4, p0, Li4/q0$a;->i:Z

    iget-boolean v5, p0, Li4/q0$a;->j:Z

    move-object v0, v7

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Li4/q0$a;-><init>(IILjava/util/Iterator;ZZLl4/d;)V

    iput-object p1, v7, Li4/q0$a;->e:Ljava/lang/Object;

    return-object v7
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lj7/j;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Li4/q0$a;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Li4/q0$a;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Li4/q0$a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Li4/q0$a;->d:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x4

    const/4 v7, 0x5

    const/4 v8, 0x1

    if-eqz v1, :cond_56

    if-eq v1, v8, :cond_43

    if-eq v1, v4, :cond_3e

    if-eq v1, v5, :cond_2d

    if-eq v1, v6, :cond_20

    if-ne v1, v7, :cond_18

    goto :goto_3e

    :cond_18
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_20
    iget-object v1, p0, Li4/q0$a;->a:Ljava/lang/Object;

    check-cast v1, Li4/n0;

    iget-object v3, p0, Li4/q0$a;->e:Ljava/lang/Object;

    check-cast v3, Lj7/j;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_19e

    :cond_2d
    iget-object v1, p0, Li4/q0$a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/util/Iterator;

    iget-object v4, p0, Li4/q0$a;->a:Ljava/lang/Object;

    check-cast v4, Li4/n0;

    iget-object v9, p0, Li4/q0$a;->e:Ljava/lang/Object;

    check-cast v9, Lj7/j;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_167

    :cond_3e
    :goto_3e
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto/16 :goto_1ba

    :cond_43
    iget v1, p0, Li4/q0$a;->c:I

    iget-object v3, p0, Li4/q0$a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/util/Iterator;

    iget-object v5, p0, Li4/q0$a;->a:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Li4/q0$a;->e:Ljava/lang/Object;

    check-cast v6, Lj7/j;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    move v10, v1

    goto :goto_a0

    :cond_56
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Li4/q0$a;->e:Ljava/lang/Object;

    check-cast p1, Lj7/j;

    iget v1, p0, Li4/q0$a;->f:I

    const/16 v9, 0x400

    if-le v1, v9, :cond_64

    goto :goto_65

    :cond_64
    move v9, v1

    :goto_65
    iget v10, p0, Li4/q0$a;->g:I

    sub-int/2addr v10, v1

    if-ltz v10, :cond_d4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v9}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v5, p0, Li4/q0$a;->h:Ljava/util/Iterator;

    move-object v6, p1

    move p1, v3

    move-object v3, v5

    move-object v5, v1

    :cond_75
    :goto_75
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-lez p1, :cond_84

    add-int/lit8 p1, p1, -0x1

    goto :goto_75

    :cond_84
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v7, p0, Li4/q0$a;->f:I

    if-ne v1, v7, :cond_75

    iput-object v6, p0, Li4/q0$a;->e:Ljava/lang/Object;

    iput-object v5, p0, Li4/q0$a;->a:Ljava/lang/Object;

    iput-object v3, p0, Li4/q0$a;->b:Ljava/lang/Object;

    iput v10, p0, Li4/q0$a;->c:I

    iput v8, p0, Li4/q0$a;->d:I

    invoke-virtual {v6, v5, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a0

    return-object v0

    :cond_a0
    :goto_a0
    iget-boolean p1, p0, Li4/q0$a;->i:Z

    if-eqz p1, :cond_a8

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    goto :goto_b0

    :cond_a8
    new-instance p1, Ljava/util/ArrayList;

    iget v1, p0, Li4/q0$a;->f:I

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v5, p1

    :goto_b0
    move p1, v10

    goto :goto_75

    :cond_b2
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v8

    if-eqz p1, :cond_1ba

    iget-boolean p1, p0, Li4/q0$a;->j:Z

    if-nez p1, :cond_c5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget v1, p0, Li4/q0$a;->f:I

    if-ne p1, v1, :cond_1ba

    :cond_c5
    iput-object v2, p0, Li4/q0$a;->e:Ljava/lang/Object;

    iput-object v2, p0, Li4/q0$a;->a:Ljava/lang/Object;

    iput-object v2, p0, Li4/q0$a;->b:Ljava/lang/Object;

    iput v4, p0, Li4/q0$a;->d:I

    invoke-virtual {v6, v5, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1ba

    return-object v0

    :cond_d4
    new-instance v1, Li4/n0;

    new-array v4, v9, [Ljava/lang/Object;

    invoke-direct {v1, v4, v3}, Li4/n0;-><init>([Ljava/lang/Object;I)V

    iget-object v4, p0, Li4/q0$a;->h:Ljava/util/Iterator;

    move-object v9, p1

    move-object v13, v4

    move-object v4, v1

    move-object v1, v13

    :cond_e1
    :goto_e1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_176

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v4}, Li4/a;->size()I

    move-result v10

    iget v11, v4, Li4/n0;->b:I

    if-ne v10, v11, :cond_f5

    move v10, v8

    goto :goto_f6

    :cond_f5
    move v10, v3

    :goto_f6
    if-nez v10, :cond_16e

    iget-object v10, v4, Li4/n0;->a:[Ljava/lang/Object;

    iget v11, v4, Li4/n0;->c:I

    invoke-virtual {v4}, Li4/a;->size()I

    move-result v12

    add-int/2addr v12, v11

    iget v11, v4, Li4/n0;->b:I

    rem-int/2addr v12, v11

    aput-object p1, v10, v12

    invoke-virtual {v4}, Li4/a;->size()I

    move-result p1

    add-int/2addr p1, v8

    iput p1, v4, Li4/n0;->d:I

    invoke-virtual {v4}, Li4/a;->size()I

    move-result p1

    iget v10, v4, Li4/n0;->b:I

    if-ne p1, v10, :cond_117

    move p1, v8

    goto :goto_118

    :cond_117
    move p1, v3

    :goto_118
    if-eqz p1, :cond_e1

    invoke-virtual {v4}, Li4/a;->size()I

    move-result p1

    iget v10, p0, Li4/q0$a;->f:I

    if-ge p1, v10, :cond_14d

    iget p1, v4, Li4/n0;->b:I

    shr-int/lit8 v11, p1, 0x1

    add-int/2addr p1, v11

    add-int/2addr p1, v8

    if-le p1, v10, :cond_12b

    goto :goto_12c

    :cond_12b
    move v10, p1

    :goto_12c
    iget p1, v4, Li4/n0;->c:I

    if-nez p1, :cond_13c

    iget-object p1, v4, Li4/n0;->a:[Ljava/lang/Object;

    invoke-static {p1, v10}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v10, "copyOf(this, newSize)"

    invoke-static {p1, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_142

    :cond_13c
    new-array p1, v10, [Ljava/lang/Object;

    invoke-virtual {v4, p1}, Li4/n0;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    :goto_142
    new-instance v10, Li4/n0;

    invoke-virtual {v4}, Li4/a;->size()I

    move-result v4

    invoke-direct {v10, p1, v4}, Li4/n0;-><init>([Ljava/lang/Object;I)V

    move-object v4, v10

    goto :goto_e1

    :cond_14d
    iget-boolean p1, p0, Li4/q0$a;->i:Z

    if-eqz p1, :cond_153

    move-object p1, v4

    goto :goto_158

    :cond_153
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_158
    iput-object v9, p0, Li4/q0$a;->e:Ljava/lang/Object;

    iput-object v4, p0, Li4/q0$a;->a:Ljava/lang/Object;

    iput-object v1, p0, Li4/q0$a;->b:Ljava/lang/Object;

    iput v5, p0, Li4/q0$a;->d:I

    invoke-virtual {v9, p1, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_167

    return-object v0

    :cond_167
    :goto_167
    iget p1, p0, Li4/q0$a;->g:I

    invoke-virtual {v4, p1}, Li4/n0;->a(I)V

    goto/16 :goto_e1

    :cond_16e
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "ring buffer is full"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_176
    iget-boolean p1, p0, Li4/q0$a;->j:Z

    if-eqz p1, :cond_1ba

    move-object v1, v4

    move-object v3, v9

    :goto_17c
    invoke-virtual {v1}, Li4/a;->size()I

    move-result p1

    iget v4, p0, Li4/q0$a;->g:I

    if-le p1, v4, :cond_1a4

    iget-boolean p1, p0, Li4/q0$a;->i:Z

    if-eqz p1, :cond_18a

    move-object p1, v1

    goto :goto_18f

    :cond_18a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_18f
    iput-object v3, p0, Li4/q0$a;->e:Ljava/lang/Object;

    iput-object v1, p0, Li4/q0$a;->a:Ljava/lang/Object;

    iput-object v2, p0, Li4/q0$a;->b:Ljava/lang/Object;

    iput v6, p0, Li4/q0$a;->d:I

    invoke-virtual {v3, p1, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_19e

    return-object v0

    :cond_19e
    :goto_19e
    iget p1, p0, Li4/q0$a;->g:I

    invoke-virtual {v1, p1}, Li4/n0;->a(I)V

    goto :goto_17c

    :cond_1a4
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v8

    if-eqz p1, :cond_1ba

    iput-object v2, p0, Li4/q0$a;->e:Ljava/lang/Object;

    iput-object v2, p0, Li4/q0$a;->a:Ljava/lang/Object;

    iput-object v2, p0, Li4/q0$a;->b:Ljava/lang/Object;

    iput v7, p0, Li4/q0$a;->d:I

    invoke-virtual {v3, v1, p0}, Lj7/j;->a(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_1ba

    return-object v0

    :cond_1ba
    :goto_1ba
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
