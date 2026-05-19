.class public final Lh4/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lh4/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final e:Lh4/e;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Lh4/e;

    const/4 v1, 0x1

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lh4/e;-><init>(III)V

    sput-object v0, Lh4/e;->e:Lh4/e;

    return-void
.end method

.method public constructor <init>(III)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lh4/e;->a:I

    iput p2, p0, Lh4/e;->b:I

    iput p3, p0, Lh4/e;->c:I

    new-instance v0, Ly4/d;

    const/4 v1, 0x0

    const/16 v2, 0xff

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    invoke-virtual {v0, p1}, Ly4/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ly4/d;

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    invoke-virtual {v0, p2}, Ly4/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    new-instance v0, Ly4/d;

    invoke-direct {v0, v1, v2}, Ly4/d;-><init>(II)V

    invoke-virtual {v0, p3}, Ly4/d;->d(I)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v1, 0x1

    :cond_2e
    if-eqz v1, :cond_39

    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    iput p1, p0, Lh4/e;->d:I

    return-void

    :cond_39
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Version components are out of range: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public a(Lh4/e;)I
    .registers 3

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, Lh4/e;->d:I

    iget p1, p1, Lh4/e;->d:I

    sub-int/2addr p0, p1

    return p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lh4/e;

    invoke-virtual {p0, p1}, Lh4/e;->a(Lh4/e;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lh4/e;

    if-eqz v1, :cond_b

    check-cast p1, Lh4/e;

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    const/4 v1, 0x0

    if-nez p1, :cond_10

    return v1

    :cond_10
    iget p0, p0, Lh4/e;->d:I

    iget p1, p1, Lh4/e;->d:I

    if-ne p0, p1, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0
.end method

.method public hashCode()I
    .registers 1

    iget p0, p0, Lh4/e;->d:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lh4/e;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, Lh4/e;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Lh4/e;->c:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
