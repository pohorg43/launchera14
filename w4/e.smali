.class public final Lw4/e;
.super Lw4/c;
.source ""

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nXorWowRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 XorWowRandom.kt\nkotlin/random/XorWowRandom\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(II)V
    .registers 6

    not-int v0, p1

    shl-int/lit8 v1, p1, 0xa

    ushr-int/lit8 v2, p2, 0x4

    xor-int/2addr v1, v2

    invoke-direct {p0}, Lw4/c;-><init>()V

    iput p1, p0, Lw4/e;->c:I

    iput p2, p0, Lw4/e;->d:I

    const/4 v2, 0x0

    iput v2, p0, Lw4/e;->e:I

    iput v2, p0, Lw4/e;->f:I

    iput v0, p0, Lw4/e;->g:I

    iput v1, p0, Lw4/e;->h:I

    or-int/2addr p1, p2

    or-int/2addr p1, v2

    or-int/2addr p1, v2

    or-int/2addr p1, v0

    if-eqz p1, :cond_1e

    const/4 p1, 0x1

    goto :goto_1f

    :cond_1e
    move p1, v2

    :goto_1f
    if-eqz p1, :cond_2c

    const/16 p1, 0x40

    :goto_23
    if-ge v2, p1, :cond_2b

    invoke-virtual {p0}, Lw4/e;->b()I

    add-int/lit8 v2, v2, 0x1

    goto :goto_23

    :cond_2b
    return-void

    :cond_2c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Initial state must have at least one non-zero element."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public a(I)I
    .registers 3

    invoke-virtual {p0}, Lw4/e;->b()I

    move-result p0

    rsub-int/lit8 v0, p1, 0x20

    ushr-int/2addr p0, v0

    neg-int p1, p1

    shr-int/lit8 p1, p1, 0x1f

    and-int/2addr p0, p1

    return p0
.end method

.method public b()I
    .registers 4

    iget v0, p0, Lw4/e;->c:I

    ushr-int/lit8 v1, v0, 0x2

    xor-int/2addr v0, v1

    iget v1, p0, Lw4/e;->d:I

    iput v1, p0, Lw4/e;->c:I

    iget v1, p0, Lw4/e;->e:I

    iput v1, p0, Lw4/e;->d:I

    iget v1, p0, Lw4/e;->f:I

    iput v1, p0, Lw4/e;->e:I

    iget v1, p0, Lw4/e;->g:I

    iput v1, p0, Lw4/e;->f:I

    shl-int/lit8 v2, v0, 0x1

    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    shl-int/lit8 v1, v1, 0x4

    xor-int/2addr v0, v1

    iput v0, p0, Lw4/e;->g:I

    iget v1, p0, Lw4/e;->h:I

    const v2, 0x587c5

    add-int/2addr v1, v2

    iput v1, p0, Lw4/e;->h:I

    add-int/2addr v0, v1

    return v0
.end method
