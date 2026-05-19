.class public abstract Lw4/c;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lw4/c$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRandom.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Random.kt\nkotlin/random/Random\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,383:1\n1#2:384\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lw4/c$a;

.field public static final b:Lw4/c;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lw4/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lw4/c$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lw4/c;->a:Lw4/c$a;

    sget-object v0, Lr4/a$a;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x22

    if-lt v0, v1, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    if-eqz v0, :cond_20

    new-instance v0, Lx4/a;

    invoke-direct {v0}, Lx4/a;-><init>()V

    goto :goto_25

    :cond_20
    new-instance v0, Lw4/b;

    invoke-direct {v0}, Lw4/b;-><init>()V

    :goto_25
    sput-object v0, Lw4/c;->b:Lw4/c;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract b()I
.end method

.method public c(II)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-le p2, p1, :cond_6

    move v2, v1

    goto :goto_7

    :cond_6
    move v2, v0

    :goto_7
    if-eqz v2, :cond_3f

    sub-int v2, p2, p1

    if-gtz v2, :cond_20

    const/high16 v3, -0x80000000

    if-ne v2, v3, :cond_12

    goto :goto_20

    :cond_12
    invoke-virtual {p0}, Lw4/c;->b()I

    move-result v2

    if-gt p1, v2, :cond_1c

    if-ge v2, p2, :cond_1c

    move v3, v1

    goto :goto_1d

    :cond_1c
    move v3, v0

    :goto_1d
    if-eqz v3, :cond_12

    return v2

    :cond_20
    :goto_20
    neg-int p2, v2

    and-int/2addr p2, v2

    if-ne p2, v2, :cond_2f

    invoke-static {v2}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x1f

    invoke-virtual {p0, p2}, Lw4/c;->a(I)I

    move-result p0

    goto :goto_3d

    :cond_2f
    invoke-virtual {p0}, Lw4/c;->b()I

    move-result p2

    ushr-int/2addr p2, v1

    rem-int v0, p2, v2

    sub-int/2addr p2, v0

    add-int/lit8 v3, v2, -0x1

    add-int/2addr v3, p2

    if-ltz v3, :cond_2f

    move p0, v0

    :goto_3d
    add-int/2addr p1, p0

    return p1

    :cond_3f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "from"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "until"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Random range is empty: ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")."

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
