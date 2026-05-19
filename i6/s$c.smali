.class public Li6/s$c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Li6/o;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Li6/s;",
            ">;"
        }
    .end annotation
.end field

.field public b:Li6/o;


# direct methods
.method public constructor <init>(Li6/c;Li6/s$a;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    iput-object p2, p0, Li6/s$c;->a:Ljava/util/Stack;

    :goto_a
    instance-of p2, p1, Li6/s;

    if-eqz p2, :cond_18

    check-cast p1, Li6/s;

    iget-object p2, p0, Li6/s$c;->a:Ljava/util/Stack;

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Li6/s;->c:Li6/c;

    goto :goto_a

    :cond_18
    check-cast p1, Li6/o;

    iput-object p1, p0, Li6/s$c;->b:Li6/o;

    return-void
.end method


# virtual methods
.method public a()Li6/o;
    .registers 4

    iget-object v0, p0, Li6/s$c;->b:Li6/o;

    if-eqz v0, :cond_36

    :cond_4
    iget-object v1, p0, Li6/s$c;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_33

    :cond_e
    iget-object v1, p0, Li6/s$c;->a:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li6/s;

    iget-object v1, v1, Li6/s;->d:Li6/c;

    :goto_18
    instance-of v2, v1, Li6/s;

    if-eqz v2, :cond_26

    check-cast v1, Li6/s;

    iget-object v2, p0, Li6/s$c;->a:Ljava/util/Stack;

    invoke-virtual {v2, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v1, Li6/s;->c:Li6/c;

    goto :goto_18

    :cond_26
    check-cast v1, Li6/o;

    invoke-virtual {v1}, Li6/o;->size()I

    move-result v2

    if-nez v2, :cond_30

    const/4 v2, 0x1

    goto :goto_31

    :cond_30
    const/4 v2, 0x0

    :goto_31
    if-nez v2, :cond_4

    :goto_33
    iput-object v1, p0, Li6/s$c;->b:Li6/o;

    return-object v0

    :cond_36
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .registers 1

    iget-object p0, p0, Li6/s$c;->b:Li6/o;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Li6/s$c;->a()Li6/o;

    move-result-object p0

    return-object p0
.end method

.method public remove()V
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
