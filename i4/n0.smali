.class public final Li4/n0;
.super Li4/c;
.source ""

# interfaces
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li4/c<",
        "TT;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSlidingWindow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,207:1\n205#1:209\n205#1:210\n205#1:211\n1#2:208\n*S KotlinDebug\n*F\n+ 1 SlidingWindow.kt\nkotlin/collections/RingBuffer\n*L\n106#1:209\n176#1:210\n189#1:211\n*E\n"
    }
.end annotation


# instance fields
.field public final a:[Ljava/lang/Object;

.field public final b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>([Ljava/lang/Object;I)V
    .registers 6

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Li4/c;-><init>()V

    iput-object p1, p0, Li4/n0;->a:[Ljava/lang/Object;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_10

    move v2, v0

    goto :goto_11

    :cond_10
    move v2, v1

    :goto_11
    if-eqz v2, :cond_3a

    array-length v2, p1

    if-gt p2, v2, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    if-eqz v0, :cond_20

    array-length p1, p1

    iput p1, p0, Li4/n0;->b:I

    iput p2, p0, Li4/n0;->d:I

    return-void

    :cond_20
    const-string p0, "ring buffer filled size: "

    const-string v0, " cannot be larger than the buffer size: "

    invoke-static {p0, p2, v0}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    array-length p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3a
    const-string p0, "ring buffer filled size should not be negative but it is "

    invoke-static {p0, p2}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)V
    .registers 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-eqz v2, :cond_56

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v2

    if-gt p1, v2, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :goto_11
    if-eqz v0, :cond_39

    if-lez p1, :cond_38

    iget v0, p0, Li4/n0;->c:I

    add-int v2, v0, p1

    iget v3, p0, Li4/n0;->b:I

    rem-int/2addr v2, v3

    const/4 v4, 0x0

    if-le v0, v2, :cond_2a

    iget-object v5, p0, Li4/n0;->a:[Ljava/lang/Object;

    invoke-static {v5, v4, v0, v3}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    iget-object v0, p0, Li4/n0;->a:[Ljava/lang/Object;

    invoke-static {v0, v4, v1, v2}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    goto :goto_2f

    :cond_2a
    iget-object v1, p0, Li4/n0;->a:[Ljava/lang/Object;

    invoke-static {v1, v4, v0, v2}, Li4/j;->l([Ljava/lang/Object;Ljava/lang/Object;II)V

    :goto_2f
    iput v2, p0, Li4/n0;->c:I

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v0

    sub-int/2addr v0, p1

    iput v0, p0, Li4/n0;->d:I

    :cond_38
    return-void

    :cond_39
    const-string v0, "n shouldn\'t be greater than the buffer size: n = "

    const-string v1, ", size = "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Li4/a;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_56
    const-string p0, "n shouldn\'t be negative but it is "

    invoke-static {p0, p1}, Landroidx/appcompat/widget/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public get(I)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    sget-object v0, Li4/c;->Companion:Li4/c$a;

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Li4/c$a;->a(II)V

    iget-object v0, p0, Li4/n0;->a:[Ljava/lang/Object;

    iget v1, p0, Li4/n0;->c:I

    add-int/2addr v1, p1

    iget p0, p0, Li4/n0;->b:I

    rem-int/2addr v1, p0

    aget-object p0, v0, v1

    return-object p0
.end method

.method public getSize()I
    .registers 1

    iget p0, p0, Li4/n0;->d:I

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Li4/n0$a;

    invoke-direct {v0, p0}, Li4/n0$a;-><init>(Li4/n0;)V

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Li4/n0;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v0, "copyOf(this, newSize)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_19
    invoke-virtual {p0}, Li4/a;->size()I

    move-result v0

    iget v1, p0, Li4/n0;->c:I

    const/4 v2, 0x0

    move v3, v2

    :goto_21
    if-ge v3, v0, :cond_32

    iget v4, p0, Li4/n0;->b:I

    if-ge v1, v4, :cond_32

    iget-object v4, p0, Li4/n0;->a:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aput-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_21

    :cond_32
    :goto_32
    if-ge v3, v0, :cond_3f

    iget-object v1, p0, Li4/n0;->a:[Ljava/lang/Object;

    aget-object v1, v1, v2

    aput-object v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_32

    :cond_3f
    array-length v0, p1

    invoke-virtual {p0}, Li4/a;->size()I

    move-result v1

    if-le v0, v1, :cond_4d

    invoke-virtual {p0}, Li4/a;->size()I

    move-result p0

    const/4 v0, 0x0

    aput-object v0, p1, p0

    :cond_4d
    return-object p1
.end method
