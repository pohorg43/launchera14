.class public final Lz4/t;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lz4/t$a;,
        Lz4/t$b;
    }
.end annotation


# static fields
.field public static final c:Lz4/t$a;

.field public static final d:Lz4/t;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# instance fields
.field public final a:Lz4/u;

.field public final b:Lz4/r;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lz4/t$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lz4/t$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lz4/t;->c:Lz4/t$a;

    new-instance v0, Lz4/t;

    invoke-direct {v0, v1, v1}, Lz4/t;-><init>(Lz4/u;Lz4/r;)V

    sput-object v0, Lz4/t;->d:Lz4/t;

    return-void
.end method

.method public constructor <init>(Lz4/u;Lz4/r;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz4/t;->a:Lz4/u;

    iput-object p2, p0, Lz4/t;->b:Lz4/r;

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_d

    move v1, p0

    goto :goto_e

    :cond_d
    move v1, v0

    :goto_e
    if-nez p2, :cond_12

    move p2, p0

    goto :goto_13

    :cond_12
    move p2, v0

    :goto_13
    if-ne v1, p2, :cond_16

    goto :goto_17

    :cond_16
    move p0, v0

    :goto_17
    if-nez p0, :cond_3e

    if-nez p1, :cond_1e

    const-string p0, "Star projection must have no type specified."

    goto :goto_34

    :cond_1e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "The projection variance "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " requires type to be specified."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_34
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lz4/t;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lz4/t;

    iget-object v1, p0, Lz4/t;->a:Lz4/u;

    iget-object v3, p1, Lz4/t;->a:Lz4/u;

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget-object p0, p0, Lz4/t;->b:Lz4/r;

    iget-object p1, p1, Lz4/t;->b:Lz4/r;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    return v2

    :cond_1e
    return v0
.end method

.method public hashCode()I
    .registers 3

    iget-object v0, p0, Lz4/t;->a:Lz4/u;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lz4/t;->b:Lz4/r;

    if-nez p0, :cond_12

    goto :goto_16

    :cond_12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_16
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lz4/t;->a:Lz4/u;

    const/4 v1, -0x1

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_f

    :cond_7
    sget-object v2, Lz4/t$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    :goto_f
    if-eq v0, v1, :cond_47

    const/4 v1, 0x1

    if-eq v0, v1, :cond_40

    const/4 v1, 0x2

    if-eq v0, v1, :cond_30

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2a

    const-string v0, "out "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lz4/t;->b:Lz4/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_2a
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0

    :cond_30
    const-string v0, "in "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lz4/t;->b:Lz4/r;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_40
    iget-object p0, p0, Lz4/t;->b:Lz4/r;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_49

    :cond_47
    const-string p0, "*"

    :goto_49
    return-object p0
.end method
