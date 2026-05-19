.class public La2/d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La2/d$b;
    }
.end annotation


# static fields
.field public static l:I


# instance fields
.field public a:La2/e;

.field public final b:Ljava/lang/String;

.field public final c:La2/d$b;

.field public final d:La2/d$b;

.field public final e:La2/d$b;

.field public f:D

.field public g:D

.field public h:Z

.field public i:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "La2/g;",
            ">;"
        }
    .end annotation
.end field

.field public j:D

.field public final k:La2/i;


# direct methods
.method public constructor <init>(La2/i;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La2/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, La2/d$b;-><init>(La2/d$a;)V

    iput-object v0, p0, La2/d;->c:La2/d$b;

    new-instance v0, La2/d$b;

    invoke-direct {v0, v1}, La2/d$b;-><init>(La2/d$a;)V

    iput-object v0, p0, La2/d;->d:La2/d$b;

    new-instance v0, La2/d$b;

    invoke-direct {v0, v1}, La2/d$b;-><init>(La2/d$a;)V

    iput-object v0, p0, La2/d;->e:La2/d$b;

    const/4 v0, 0x1

    iput-boolean v0, p0, La2/d;->h:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, La2/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, La2/d;->j:D

    iput-object p1, p0, La2/d;->k:La2/i;

    const-string p1, "spring:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget v0, La2/d;->l:I

    add-int/lit8 v1, v0, 0x1

    sput v1, La2/d;->l:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, La2/d;->b:Ljava/lang/String;

    sget-object p1, La2/e;->c:La2/e;

    invoke-virtual {p0, p1}, La2/d;->f(La2/e;)La2/d;

    return-void
.end method


# virtual methods
.method public a(La2/g;)La2/d;
    .registers 3

    if-eqz p1, :cond_8

    iget-object v0, p0, La2/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newListener is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b()Z
    .registers 7

    iget-object v0, p0, La2/d;->c:La2/d$b;

    iget-wide v0, v0, La2/d$b;->b:D

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f747ae147ae147bL  # 0.005

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_2c

    iget-object v0, p0, La2/d;->c:La2/d$b;

    iget-wide v4, p0, La2/d;->g:D

    iget-wide v0, v0, La2/d$b;->a:D

    sub-double/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_2a

    iget-object p0, p0, La2/d;->a:La2/e;

    iget-wide v0, p0, La2/e;->b:D

    const-wide/16 v2, 0x0

    cmpl-double p0, v0, v2

    if-nez p0, :cond_2c

    :cond_2a
    const/4 p0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    return p0
.end method

.method public c()La2/d;
    .registers 5

    iget-object v0, p0, La2/d;->c:La2/d$b;

    iget-wide v1, v0, La2/d$b;->a:D

    iput-wide v1, p0, La2/d;->g:D

    iget-object v3, p0, La2/d;->e:La2/d$b;

    iput-wide v1, v3, La2/d$b;->a:D

    const-wide/16 v1, 0x0

    iput-wide v1, v0, La2/d$b;->b:D

    return-object p0
.end method

.method public d(D)La2/d;
    .registers 4

    iput-wide p1, p0, La2/d;->f:D

    iget-object v0, p0, La2/d;->c:La2/d$b;

    iput-wide p1, v0, La2/d$b;->a:D

    iget-object p1, p0, La2/d;->k:La2/i;

    iget-object p2, p0, La2/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, La2/i;->a(Ljava/lang/String;)V

    iget-object p1, p0, La2/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_13
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/g;

    invoke-interface {p2, p0}, La2/g;->onSpringUpdate(La2/d;)V

    goto :goto_13

    :cond_23
    invoke-virtual {p0}, La2/d;->c()La2/d;

    return-object p0
.end method

.method public e(D)La2/d;
    .registers 5

    iget-wide v0, p0, La2/d;->g:D

    cmpl-double v0, v0, p1

    if-nez v0, :cond_d

    invoke-virtual {p0}, La2/d;->b()Z

    move-result v0

    if-eqz v0, :cond_d

    return-object p0

    :cond_d
    iget-object v0, p0, La2/d;->c:La2/d$b;

    iget-wide v0, v0, La2/d$b;->a:D

    iput-wide v0, p0, La2/d;->f:D

    iput-wide p1, p0, La2/d;->g:D

    iget-object p1, p0, La2/d;->k:La2/i;

    iget-object p2, p0, La2/d;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, La2/i;->a(Ljava/lang/String;)V

    iget-object p1, p0, La2/d;->i:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_22
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, La2/g;

    invoke-interface {p2, p0}, La2/g;->onSpringEndStateChange(La2/d;)V

    goto :goto_22

    :cond_32
    return-object p0
.end method

.method public f(La2/e;)La2/d;
    .registers 2

    if-eqz p1, :cond_5

    iput-object p1, p0, La2/d;->a:La2/e;

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "springConfig is required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
