.class public Lj4/c$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMapBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MapBuilder.kt\nkotlin/collections/builders/MapBuilder$Itr\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,697:1\n1#2:698\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lj4/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lj4/c<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Lj4/c;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj4/c<",
            "TK;TV;>;)V"
        }
    .end annotation

    const-string v0, "map"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/c$d;->a:Lj4/c;

    const/4 p1, -0x1

    iput p1, p0, Lj4/c$d;->c:I

    invoke-virtual {p0}, Lj4/c$d;->a()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    :goto_0
    iget v0, p0, Lj4/c$d;->b:I

    iget-object v1, p0, Lj4/c$d;->a:Lj4/c;

    iget v2, v1, Lj4/c;->f:I

    if-ge v0, v2, :cond_13

    iget-object v1, v1, Lj4/c;->c:[I

    aget v1, v1, v0

    if-gez v1, :cond_13

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj4/c$d;->b:I

    goto :goto_0

    :cond_13
    return-void
.end method

.method public final hasNext()Z
    .registers 2

    iget v0, p0, Lj4/c$d;->b:I

    iget-object p0, p0, Lj4/c$d;->a:Lj4/c;

    iget p0, p0, Lj4/c;->f:I

    if-ge v0, p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final remove()V
    .registers 4

    iget v0, p0, Lj4/c$d;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    if-eqz v0, :cond_19

    iget-object v0, p0, Lj4/c$d;->a:Lj4/c;

    invoke-virtual {v0}, Lj4/c;->d()V

    iget-object v0, p0, Lj4/c$d;->a:Lj4/c;

    iget v2, p0, Lj4/c$d;->c:I

    invoke-virtual {v0, v2}, Lj4/c;->o(I)V

    iput v1, p0, Lj4/c$d;->c:I

    return-void

    :cond_19
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Call next() before removing element from the iterator."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
