.class public Li6/s$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Li6/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Li6/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "d"
.end annotation


# instance fields
.field public final a:Li6/s$c;

.field public b:Li6/c$a;

.field public c:I


# direct methods
.method public constructor <init>(Li6/s;Li6/s$a;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p2, Li6/s$c;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Li6/s$c;-><init>(Li6/c;Li6/s$a;)V

    iput-object p2, p0, Li6/s$d;->a:Li6/s$c;

    invoke-virtual {p2}, Li6/s$c;->a()Li6/o;

    move-result-object p2

    invoke-virtual {p2}, Li6/o;->l()Li6/c$a;

    move-result-object p2

    iput-object p2, p0, Li6/s$d;->b:Li6/c$a;

    iget p1, p1, Li6/s;->b:I

    iput p1, p0, Li6/s$d;->c:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .registers 1

    iget p0, p0, Li6/s$d;->c:I

    if-lez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public next()Ljava/lang/Object;
    .registers 1

    invoke-virtual {p0}, Li6/s$d;->nextByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public nextByte()B
    .registers 2

    iget-object v0, p0, Li6/s$d;->b:Li6/c$a;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Li6/s$d;->a:Li6/s$c;

    invoke-virtual {v0}, Li6/s$c;->a()Li6/o;

    move-result-object v0

    invoke-virtual {v0}, Li6/o;->l()Li6/c$a;

    move-result-object v0

    iput-object v0, p0, Li6/s$d;->b:Li6/c$a;

    :cond_14
    iget v0, p0, Li6/s$d;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Li6/s$d;->c:I

    iget-object p0, p0, Li6/s$d;->b:Li6/c$a;

    invoke-interface {p0}, Li6/c$a;->nextByte()B

    move-result p0

    return p0
.end method

.method public remove()V
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
