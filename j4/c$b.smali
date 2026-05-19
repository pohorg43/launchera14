.class public final Lj4/c$b;
.super Lj4/c$d;
.source ""

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMutableIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lj4/c$d<",
        "TK;TV;>;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;",
        "Lkotlin/jvm/internal/markers/KMutableIterator;"
    }
.end annotation


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

    invoke-direct {p0, p1}, Lj4/c$d;-><init>(Lj4/c;)V

    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lj4/c$d;->b:I

    iget-object v1, p0, Lj4/c$d;->a:Lj4/c;

    iget v2, v1, Lj4/c;->f:I

    if-ge v0, v2, :cond_17

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj4/c$d;->b:I

    iput v0, p0, Lj4/c$d;->c:I

    new-instance v2, Lj4/c$c;

    invoke-direct {v2, v1, v0}, Lj4/c$c;-><init>(Lj4/c;I)V

    invoke-virtual {p0}, Lj4/c$d;->a()V

    return-object v2

    :cond_17
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method
