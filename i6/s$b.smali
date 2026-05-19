.class public Li6/s$b;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Li6/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Li6/s$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Li6/s$b;->a:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final a(Li6/c;)V
    .registers 6

    invoke-virtual {p1}, Li6/c;->j()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-virtual {p1}, Li6/c;->size()I

    move-result v0

    sget-object v1, Li6/s;->h:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_17

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_17
    add-int/lit8 v2, v0, 0x1

    aget v2, v1, v2

    iget-object v3, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_a5

    iget-object v3, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Li6/c;

    invoke-virtual {v3}, Li6/c;->size()I

    move-result v3

    if-lt v3, v2, :cond_33

    goto/16 :goto_a5

    :cond_33
    aget v0, v1, v0

    iget-object v1, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/c;

    :goto_3d
    iget-object v2, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_62

    iget-object v2, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/c;

    invoke-virtual {v2}, Li6/c;->size()I

    move-result v2

    if-ge v2, v0, :cond_62

    iget-object v2, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Li6/c;

    new-instance v3, Li6/s;

    invoke-direct {v3, v2, v1}, Li6/s;-><init>(Li6/c;Li6/c;)V

    move-object v1, v3

    goto :goto_3d

    :cond_62
    new-instance v0, Li6/s;

    invoke-direct {v0, v1, p1}, Li6/s;-><init>(Li6/c;Li6/c;)V

    :goto_67
    iget-object p1, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_9f

    iget p1, v0, Li6/s;->b:I

    sget-object v1, Li6/s;->h:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_7e

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_7e
    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    iget-object v1, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/c;

    invoke-virtual {v1}, Li6/c;->size()I

    move-result v1

    if-ge v1, p1, :cond_9f

    iget-object p1, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Li6/c;

    new-instance v1, Li6/s;

    invoke-direct {v1, p1, v0}, Li6/s;-><init>(Li6/c;Li6/c;)V

    move-object v0, v1

    goto :goto_67

    :cond_9f
    iget-object p0, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p0, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    :cond_a5
    :goto_a5
    iget-object p0, p0, Li6/s$b;->a:Ljava/util/Stack;

    invoke-virtual {p0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_bb

    :cond_ab
    instance-of v0, p1, Li6/s;

    if-eqz v0, :cond_bc

    check-cast p1, Li6/s;

    iget-object v0, p1, Li6/s;->c:Li6/c;

    invoke-virtual {p0, v0}, Li6/s$b;->a(Li6/c;)V

    iget-object p1, p1, Li6/s;->d:Li6/c;

    invoke-virtual {p0, p1}, Li6/s$b;->a(Li6/c;)V

    :goto_bb
    return-void

    :cond_bc
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x31

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v0, v1, p1}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
