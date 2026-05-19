.class public final Ll7/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll7/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Ll7/a;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/jvm/JvmInline;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n+ 2 _Strings.kt\nkotlin/text/StringsKt___StringsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1495:1\n38#1:1496\n38#1:1497\n38#1:1498\n38#1:1499\n38#1:1500\n683#1,2:1501\n700#1,2:1510\n163#2,6:1503\n1#3:1509\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/Duration\n*L\n39#1:1496\n40#1:1497\n458#1:1498\n478#1:1499\n662#1:1500\n979#1:1501,2\n1070#1:1510,2\n1021#1:1503,6\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Ll7/a$a;

.field public static final b:J

.field public static final c:J


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ll7/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll7/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ll7/a;->a:Ll7/a$a;

    sget v0, Ll7/b;->a:I

    const-wide v0, 0x7fffffffffffffffL

    sput-wide v0, Ll7/a;->b:J

    const-wide v0, -0x7ffffffffffffffdL  # -1.5E-323

    sput-wide v0, Ll7/a;->c:J

    return-void
.end method

.method public static final a(J)Z
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-gez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Ll7/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 p0, 0x0

    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_11

    invoke-static {p0, p1, p0, p1}, Lkotlin/jvm/internal/Intrinsics;->compare(JJ)I

    move-result p0

    goto :goto_1e

    :cond_11
    long-to-int v0, p0

    and-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v0

    invoke-static {p0, p1}, Ll7/a;->a(J)Z

    move-result p0

    if-eqz p0, :cond_1d

    neg-int p0, v0

    goto :goto_1e

    :cond_1d
    move p0, v0

    :goto_1e
    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    instance-of p0, p1, Ll7/a;

    const/4 v0, 0x0

    if-nez p0, :cond_6

    goto :goto_c

    :cond_6
    check-cast p1, Ll7/a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method public hashCode()I
    .registers 3

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->hashCode(J)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 1

    const-string p0, "0s"

    return-object p0
.end method
