.class public final Li4/h;
.super Li4/d;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Li4/d<",
        "TE;>;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nArrayDeque.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n+ 3 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n*L\n1#1,583:1\n467#1,51:586\n467#1,51:637\n37#2,2:584\n26#3:688\n*S KotlinDebug\n*F\n+ 1 ArrayDeque.kt\nkotlin/collections/ArrayDeque\n*L\n462#1:586,51\n464#1:637,51\n47#1:584,2\n562#1:688\n*E\n"
    }
.end annotation


# static fields
.field public static final d:[Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:[Ljava/lang/Object;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Li4/h;->d:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Li4/d;-><init>()V

    sget-object v0, Li4/h;->d:[Ljava/lang/Object;

    iput-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    return-void
.end method

.method public static final n(II)I
    .registers 4

    shr-int/lit8 v0, p0, 0x1

    add-int/2addr p0, v0

    sub-int v0, p0, p1

    if-gez v0, :cond_8

    move p0, p1

    :cond_8
    const v0, 0x7ffffff7

    sub-int v1, p0, v0

    if-lez v1, :cond_16

    if-le p1, v0, :cond_15

    const p0, 0x7fffffff

    goto :goto_16

    :cond_15
    move p0, v0

    :cond_16
    :goto_16
    return p0
.end method


# virtual methods
.method public a()I
    .registers 1

    iget p0, p0, Li4/h;->c:I

    return p0
.end method

.method public add(ILjava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->b(II)V

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    if-ne p1, v0, :cond_13

    invoke-virtual {p0, p2}, Li4/h;->h(Ljava/lang/Object;)V

    return-void

    :cond_13
    if-nez p1, :cond_19

    invoke-virtual {p0, p2}, Li4/h;->e(Ljava/lang/Object;)V

    return-void

    :cond_19
    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li4/h;->k(I)V

    iget v0, p0, Li4/h;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v2

    add-int/2addr v2, v1

    shr-int/2addr v2, v1

    const/4 v3, 0x0

    if-ge p1, v2, :cond_6a

    invoke-virtual {p0, v0}, Li4/h;->j(I)I

    move-result p1

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0, v0}, Li4/h;->j(I)I

    move-result v0

    iget v2, p0, Li4/h;->a:I

    if-lt p1, v2, :cond_4e

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v4, v3, v2

    aput-object v4, v3, v0

    add-int/lit8 v4, v2, 0x1

    add-int/lit8 v5, p1, 0x1

    invoke-static {v3, v3, v2, v4, v5}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_63

    :cond_4e
    iget-object v4, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v5, v2, -0x1

    array-length v6, v4

    invoke-static {v4, v4, v5, v2, v6}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v4, v2

    sub-int/2addr v4, v1

    aget-object v5, v2, v3

    aput-object v5, v2, v4

    add-int/lit8 v4, p1, 0x1

    invoke-static {v2, v2, v3, v1, v4}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_63
    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    aput-object p2, v2, p1

    iput v0, p0, Li4/h;->a:I

    goto :goto_97

    :cond_6a
    iget p1, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v2

    add-int/2addr p1, v2

    invoke-virtual {p0, p1}, Li4/h;->o(I)I

    move-result p1

    if-ge v0, p1, :cond_7f

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v2, v3, v0, p1}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_93

    :cond_7f
    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v2, v2, v1, v3, p1}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v2, p1

    sub-int/2addr v2, v1

    aget-object v2, p1, v2

    aput-object v2, p1, v3

    add-int/lit8 v2, v0, 0x1

    array-length v3, p1

    sub-int/2addr v3, v1

    invoke-static {p1, p1, v2, v0, v3}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_93
    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    aput-object p2, p1, v0

    :goto_97
    invoke-virtual {p0}, Li4/h;->a()I

    move-result p1

    add-int/2addr p1, v1

    iput p1, p0, Li4/h;->c:I

    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-virtual {p0, p1}, Li4/h;->h(Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->b(II)V

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    return v1

    :cond_16
    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    if-ne p1, v0, :cond_21

    invoke-virtual {p0, p2}, Li4/h;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :cond_21
    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Li4/h;->k(I)V

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v2, p0, Li4/h;->a:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Li4/h;->o(I)I

    move-result v2

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    shr-int/2addr v4, v5

    if-ge p1, v4, :cond_9d

    iget p1, p0, Li4/h;->a:I

    sub-int v0, p1, v3

    if-lt v2, p1, :cond_76

    if-ltz v0, :cond_5a

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v1, v1, v0, p1, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_92

    :cond_5a
    iget-object v4, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v6, v4

    add-int/2addr v0, v6

    sub-int v6, v2, p1

    array-length v7, v4

    sub-int/2addr v7, v0

    if-lt v7, v6, :cond_68

    invoke-static {v4, v4, v0, p1, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_92

    :cond_68
    add-int v6, p1, v7

    invoke-static {v4, v4, v0, p1, v6}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v4, p0, Li4/h;->a:I

    add-int/2addr v4, v7

    invoke-static {p1, p1, v1, v4, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_92

    :cond_76
    iget-object v4, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v6, v4

    invoke-static {v4, v4, v0, p1, v6}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    if-lt v3, v2, :cond_86

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_92

    :cond_86
    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v4, p1

    sub-int/2addr v4, v3

    invoke-static {p1, p1, v4, v1, v3}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {p1, p1, v1, v3, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_92
    iput v0, p0, Li4/h;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Li4/h;->m(I)I

    move-result p1

    invoke-virtual {p0, p1, p2}, Li4/h;->i(ILjava/util/Collection;)V

    goto :goto_e2

    :cond_9d
    add-int p1, v2, v3

    if-ge v2, v0, :cond_c1

    add-int/2addr v3, v0

    iget-object v4, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v6, v4

    if-gt v3, v6, :cond_ab

    invoke-static {v4, v4, p1, v2, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_df

    :cond_ab
    array-length v6, v4

    if-lt p1, v6, :cond_b4

    array-length v1, v4

    sub-int/2addr p1, v1

    invoke-static {v4, v4, p1, v2, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_df

    :cond_b4
    array-length v6, v4

    sub-int/2addr v3, v6

    sub-int v3, v0, v3

    invoke-static {v4, v4, v1, v3, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v0, v0, p1, v2, v3}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_df

    :cond_c1
    iget-object v4, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v4, v4, v3, v1, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v4, v0

    if-lt p1, v4, :cond_d2

    array-length v1, v0

    sub-int/2addr p1, v1

    array-length v1, v0

    invoke-static {v0, v0, p1, v2, v1}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_df

    :cond_d2
    array-length v4, v0

    sub-int/2addr v4, v3

    array-length v6, v0

    invoke-static {v0, v0, v1, v4, v6}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v1, v0

    sub-int/2addr v1, v3

    invoke-static {v0, v0, p1, v2, v1}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_df
    invoke-virtual {p0, v2, p2}, Li4/h;->i(ILjava/util/Collection;)V

    :goto_e2
    return v5
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 p0, 0x0

    return p0

    :cond_d
    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Li4/h;->k(I)V

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Li4/h;->i(ILjava/util/Collection;)V

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .registers 7

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v1, p0, Li4/h;->a:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v1, v0, :cond_17

    iget-object v4, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v4, v3, v1, v0}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_2c

    :cond_17
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v4, p0, Li4/h;->a:I

    array-length v5, v1

    invoke-static {v1, v3, v4, v5}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v1, v3, v2, v0}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    :cond_2c
    :goto_2c
    iput v2, p0, Li4/h;->a:I

    iput v2, p0, Li4/h;->c:I

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 2

    invoke-virtual {p0, p1}, Li4/h;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 p1, -0x1

    if-eq p0, p1, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public d(I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->a(II)V

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result v0

    if-ne p1, v0, :cond_14

    invoke-virtual {p0}, Li4/h;->q()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_14
    if-nez p1, :cond_1b

    invoke-virtual {p0}, Li4/h;->p()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1b
    iget v0, p0, Li4/h;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v2

    const/4 v3, 0x1

    shr-int/2addr v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ge p1, v2, :cond_5f

    iget p1, p0, Li4/h;->a:I

    if-lt v0, p1, :cond_3c

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    invoke-static {v2, v2, v5, p1, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_52

    :cond_3c
    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {p1, p1, v3, v5, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v0, p1

    sub-int/2addr v0, v3

    aget-object v0, p1, v0

    aput-object v0, p1, v5

    iget v0, p0, Li4/h;->a:I

    add-int/lit8 v2, v0, 0x1

    array-length v5, p1

    sub-int/2addr v5, v3

    invoke-static {p1, p1, v2, v0, v5}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_52
    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v0, p0, Li4/h;->a:I

    aput-object v4, p1, v0

    invoke-virtual {p0, v0}, Li4/h;->l(I)I

    move-result p1

    iput p1, p0, Li4/h;->a:I

    goto :goto_8f

    :cond_5f
    iget p1, p0, Li4/h;->a:I

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result v2

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Li4/h;->o(I)I

    move-result p1

    if-gt v0, p1, :cond_76

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, p1, 0x1

    invoke-static {v2, v2, v0, v5, v6}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_8b

    :cond_76
    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    array-length v7, v2

    invoke-static {v2, v2, v0, v6, v7}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v2, v0

    sub-int/2addr v2, v3

    aget-object v6, v0, v5

    aput-object v6, v0, v2

    add-int/lit8 v2, p1, 0x1

    invoke-static {v0, v0, v5, v3, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :goto_8b
    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    aput-object v4, v0, p1

    :goto_8f
    invoke-virtual {p0}, Li4/h;->a()I

    move-result p1

    sub-int/2addr p1, v3

    iput p1, p0, Li4/h;->c:I

    return-object v1
.end method

.method public final e(Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Li4/h;->k(I)V

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0, v0}, Li4/h;->j(I)I

    move-result v0

    iput v0, p0, Li4/h;->a:I

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    aput-object p1, v1, v0

    invoke-virtual {p0}, Li4/h;->a()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li4/h;->c:I

    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->a(II)V

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v1, p0, Li4/h;->a:I

    add-int/2addr v1, p1

    invoke-virtual {p0, v1}, Li4/h;->o(I)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final h(Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Li4/h;->k(I)V

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v1, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Li4/h;->o(I)I

    move-result v1

    aput-object p1, v0, v1

    invoke-virtual {p0}, Li4/h;->a()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Li4/h;->c:I

    return-void
.end method

.method public final i(ILjava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v1, v1

    :goto_7
    if-ge p1, v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_1a
    const/4 p1, 0x0

    iget v1, p0, Li4/h;->a:I

    :goto_1d
    if-ge p1, v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1d

    :cond_30
    iget p1, p0, Li4/h;->c:I

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p2

    add-int/2addr p2, p1

    iput p2, p0, Li4/h;->c:I

    return-void
.end method

.method public indexOf(Ljava/lang/Object;)I
    .registers 6

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v1, p0, Li4/h;->a:I

    if-ge v1, v0, :cond_22

    :goto_f
    if-ge v1, v0, :cond_50

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget p0, p0, Li4/h;->a:I

    :goto_1d
    sub-int/2addr v1, p0

    return v1

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_22
    if-lt v1, v0, :cond_50

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v2, v2

    :goto_27
    if-ge v1, v2, :cond_39

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    iget p0, p0, Li4/h;->a:I

    goto :goto_1d

    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_39
    const/4 v1, 0x0

    :goto_3a
    if-ge v1, v0, :cond_50

    iget-object v2, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4d

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v1, p1

    iget p0, p0, Li4/h;->a:I

    goto :goto_1d

    :cond_4d
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_50
    const/4 p0, -0x1

    return p0
.end method

.method public isEmpty()Z
    .registers 1

    invoke-virtual {p0}, Li4/h;->a()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final j(I)I
    .registers 2

    if-nez p1, :cond_9

    iget-object p0, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {p0}, Li4/k;->A([Ljava/lang/Object;)I

    move-result p0

    goto :goto_b

    :cond_9
    add-int/lit8 p0, p1, -0x1

    :goto_b
    return p0
.end method

.method public final k(I)V
    .registers 6

    if-ltz p1, :cond_34

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-gt p1, v1, :cond_8

    return-void

    :cond_8
    sget-object v1, Li4/h;->d:[Ljava/lang/Object;

    if-ne v0, v1, :cond_16

    const/16 v0, 0xa

    if-ge p1, v0, :cond_11

    move p1, v0

    :cond_11
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    return-void

    :cond_16
    array-length v0, v0

    invoke-static {v0, p1}, Li4/h;->n(II)I

    move-result p1

    new-array p1, p1, [Ljava/lang/Object;

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v1, p0, Li4/h;->a:I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, p1, v3, v1, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v1, v0

    iget v2, p0, Li4/h;->a:I

    sub-int/2addr v1, v2

    invoke-static {v0, p1, v1, v3, v2}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iput v3, p0, Li4/h;->a:I

    iput-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    return-void

    :cond_34
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Deque is too big."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(I)I
    .registers 2

    iget-object p0, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {p0}, Li4/k;->A([Ljava/lang/Object;)I

    move-result p0

    if-ne p1, p0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    :cond_a
    add-int/lit8 p0, p1, 0x1

    :goto_c
    return p0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .registers 6

    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v1, p0, Li4/h;->a:I

    const/4 v2, -0x1

    if-ge v1, v0, :cond_27

    add-int/lit8 v0, v0, -0x1

    if-gt v1, v0, :cond_5d

    :goto_14
    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    iget p0, p0, Li4/h;->a:I

    :goto_20
    sub-int/2addr v0, p0

    return v0

    :cond_22
    if-eq v0, v1, :cond_5d

    add-int/lit8 v0, v0, -0x1

    goto :goto_14

    :cond_27
    if-le v1, v0, :cond_5d

    add-int/lit8 v0, v0, -0x1

    :goto_2b
    if-ge v2, v0, :cond_41

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length p1, p1

    add-int/2addr v0, p1

    iget p0, p0, Li4/h;->a:I

    goto :goto_20

    :cond_3e
    add-int/lit8 v0, v0, -0x1

    goto :goto_2b

    :cond_41
    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v0}, Li4/k;->A([Ljava/lang/Object;)I

    move-result v0

    iget v1, p0, Li4/h;->a:I

    if-gt v1, v0, :cond_5d

    :goto_4b
    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v3, v3, v0

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    iget p0, p0, Li4/h;->a:I

    goto :goto_20

    :cond_58
    if-eq v0, v1, :cond_5d

    add-int/lit8 v0, v0, -0x1

    goto :goto_4b

    :cond_5d
    return v2
.end method

.method public final m(I)I
    .registers 2

    if-gez p1, :cond_6

    iget-object p0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length p0, p0

    add-int/2addr p1, p0

    :cond_6
    return p1
.end method

.method public final o(I)I
    .registers 3

    iget-object p0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v0, p0

    if-lt p1, v0, :cond_7

    array-length p0, p0

    sub-int/2addr p1, p0

    :cond_7
    return p1
.end method

.method public final p()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Li4/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v1, p0, Li4/h;->a:I

    aget-object v2, v0, v1

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {p0, v1}, Li4/h;->l(I)I

    move-result v0

    iput v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li4/h;->c:I

    return-object v2

    :cond_1e
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final q()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    invoke-virtual {p0}, Li4/h;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_21

    iget v0, p0, Li4/h;->a:I

    invoke-static {p0}, Li4/o;->e(Ljava/util/List;)I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Li4/h;->o(I)I

    move-result v0

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v2, v1, v0

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li4/h;->c:I

    return-object v2

    :cond_21
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "ArrayDeque is empty."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    invoke-virtual {p0, p1}, Li4/h;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    invoke-virtual {p0, p1}, Li4/h;->d(I)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li4/h;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_96

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_19

    goto/16 :goto_96

    :cond_19
    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v3, p0, Li4/h;->a:I

    const/4 v4, 0x0

    if-ge v3, v0, :cond_49

    move v5, v3

    :goto_2a
    if-ge v3, v0, :cond_43

    iget-object v6, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v2

    if-eqz v7, :cond_3f

    iget-object v7, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_40

    :cond_3f
    move v1, v2

    :goto_40
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_43
    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {p1, v4, v5, v0}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_8b

    :cond_49
    iget-object v5, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v5, v5

    move v7, v1

    move v6, v3

    :goto_4e
    if-ge v3, v5, :cond_69

    iget-object v8, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v9, v8, v3

    aput-object v4, v8, v3

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v2

    if-eqz v8, :cond_65

    iget-object v8, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_66

    :cond_65
    move v7, v2

    :goto_66
    add-int/lit8 v3, v3, 0x1

    goto :goto_4e

    :cond_69
    invoke-virtual {p0, v6}, Li4/h;->o(I)I

    move-result v3

    move v5, v3

    :goto_6e
    if-ge v1, v0, :cond_8a

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v6, v3, v1

    aput-object v4, v3, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    if-eqz v3, :cond_86

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aput-object v6, v3, v5

    invoke-virtual {p0, v5}, Li4/h;->l(I)I

    move-result v5

    goto :goto_87

    :cond_86
    move v7, v2

    :goto_87
    add-int/lit8 v1, v1, 0x1

    goto :goto_6e

    :cond_8a
    move v1, v7

    :goto_8b
    if-eqz v1, :cond_96

    iget p1, p0, Li4/h;->a:I

    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Li4/h;->m(I)I

    move-result p1

    iput p1, p0, Li4/h;->c:I

    :cond_96
    :goto_96
    return v1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Li4/h;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_93

    iget-object v0, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v0, v0

    const/4 v2, 0x1

    if-nez v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    if-eqz v0, :cond_19

    goto/16 :goto_93

    :cond_19
    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v3

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v3, p0, Li4/h;->a:I

    const/4 v4, 0x0

    if-ge v3, v0, :cond_48

    move v5, v3

    :goto_2a
    if-ge v3, v0, :cond_42

    iget-object v6, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3e

    iget-object v7, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v8, v5, 0x1

    aput-object v6, v7, v5

    move v5, v8

    goto :goto_3f

    :cond_3e
    move v1, v2

    :goto_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_2a

    :cond_42
    iget-object p1, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {p1, v4, v5, v0}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_88

    :cond_48
    iget-object v5, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v5, v5

    move v7, v1

    move v6, v3

    :goto_4d
    if-ge v3, v5, :cond_67

    iget-object v8, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v9, v8, v3

    aput-object v4, v8, v3

    invoke-interface {p1, v9}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_63

    iget-object v8, p0, Li4/h;->b:[Ljava/lang/Object;

    add-int/lit8 v10, v6, 0x1

    aput-object v9, v8, v6

    move v6, v10

    goto :goto_64

    :cond_63
    move v7, v2

    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_4d

    :cond_67
    invoke-virtual {p0, v6}, Li4/h;->o(I)I

    move-result v3

    move v5, v3

    :goto_6c
    if-ge v1, v0, :cond_87

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v6, v3, v1

    aput-object v4, v3, v1

    invoke-interface {p1, v6}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    aput-object v6, v3, v5

    invoke-virtual {p0, v5}, Li4/h;->l(I)I

    move-result v5

    goto :goto_84

    :cond_83
    move v7, v2

    :goto_84
    add-int/lit8 v1, v1, 0x1

    goto :goto_6c

    :cond_87
    move v1, v7

    :goto_88
    if-eqz v1, :cond_93

    iget p1, p0, Li4/h;->a:I

    sub-int/2addr v5, p1

    invoke-virtual {p0, v5}, Li4/h;->m(I)I

    move-result p1

    iput p1, p0, Li4/h;->c:I

    :cond_93
    :goto_93
    return v1
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->a(II)V

    iget v0, p0, Li4/h;->a:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result p1

    iget-object p0, p0, Li4/h;->b:[Ljava/lang/Object;

    aget-object v0, p0, p1

    aput-object p2, p0, p1

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Li4/h;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    const-string v0, "array"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    if-lt v0, v1, :cond_d

    goto :goto_29

    :cond_d
    invoke-virtual {p0}, Li4/h;->a()I

    move-result v0

    const-string v1, "reference"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.arrayOfNulls>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, [Ljava/lang/Object;

    :goto_29
    iget v0, p0, Li4/h;->a:I

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Li4/h;->o(I)I

    move-result v0

    iget v1, p0, Li4/h;->a:I

    const/4 v2, 0x0

    if-ge v1, v0, :cond_3f

    iget-object v3, p0, Li4/h;->b:[Ljava/lang/Object;

    invoke-static {v3, p1, v2, v1, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    goto :goto_58

    :cond_3f
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_58

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    iget v3, p0, Li4/h;->a:I

    array-length v4, v1

    invoke-static {v1, p1, v2, v3, v4}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    iget-object v1, p0, Li4/h;->b:[Ljava/lang/Object;

    array-length v3, v1

    iget v4, p0, Li4/h;->a:I

    sub-int/2addr v3, v4

    invoke-static {v1, p1, v3, v2, v0}, Li4/j;->h([Ljava/lang/Object;[Ljava/lang/Object;III)[Ljava/lang/Object;

    :cond_58
    :goto_58
    array-length v0, p1

    invoke-virtual {p0}, Li4/h;->a()I

    move-result v1

    if-le v0, v1, :cond_66

    invoke-virtual {p0}, Li4/h;->a()I

    move-result p0

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_66
    return-object p1
.end method
