.class public final Lm7/w;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CompletedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,672:1\n1#2:673\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final b:Lm7/j;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final c:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final d:Ljava/lang/Object;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field

.field public final e:Ljava/lang/Throwable;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lm7/j;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Throwable;",
            "Lh4/z;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/w;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm7/w;->b:Lm7/j;

    iput-object p3, p0, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lm7/w;->d:Ljava/lang/Object;

    iput-object p5, p0, Lm7/w;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)V
    .registers 9

    and-int/lit8 v0, p6, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    move-object p2, v1

    :cond_6
    and-int/lit8 v0, p6, 0x4

    if-eqz v0, :cond_b

    move-object p3, v1

    :cond_b
    and-int/lit8 v0, p6, 0x8

    if-eqz v0, :cond_10

    move-object p4, v1

    :cond_10
    and-int/lit8 p6, p6, 0x10

    if-eqz p6, :cond_15

    move-object p5, v1

    :cond_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm7/w;->a:Ljava/lang/Object;

    iput-object p2, p0, Lm7/w;->b:Lm7/j;

    iput-object p3, p0, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lm7/w;->d:Ljava/lang/Object;

    iput-object p5, p0, Lm7/w;->e:Ljava/lang/Throwable;

    return-void
.end method

.method public static a(Lm7/w;Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;I)Lm7/w;
    .registers 13

    and-int/lit8 p1, p6, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_9

    iget-object p1, p0, Lm7/w;->a:Ljava/lang/Object;

    move-object v1, p1

    goto :goto_a

    :cond_9
    move-object v1, p3

    :goto_a
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_10

    iget-object p2, p0, Lm7/w;->b:Lm7/j;

    :cond_10
    move-object v2, p2

    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_19

    iget-object p1, p0, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    move-object v3, p1

    goto :goto_1a

    :cond_19
    move-object v3, p3

    :goto_1a
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_20

    iget-object p3, p0, Lm7/w;->d:Ljava/lang/Object;

    :cond_20
    move-object v4, p3

    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_27

    iget-object p5, p0, Lm7/w;->e:Ljava/lang/Throwable;

    :cond_27
    move-object v5, p5

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lm7/w;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lm7/w;-><init>(Ljava/lang/Object;Lm7/j;Lkotlin/jvm/functions/Function1;Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lm7/w;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lm7/w;

    iget-object v1, p0, Lm7/w;->a:Ljava/lang/Object;

    iget-object v3, p1, Lm7/w;->a:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget-object v1, p0, Lm7/w;->b:Lm7/j;

    iget-object v3, p1, Lm7/w;->b:Lm7/j;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_22

    return v2

    :cond_22
    iget-object v1, p0, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d

    return v2

    :cond_2d
    iget-object v1, p0, Lm7/w;->d:Ljava/lang/Object;

    iget-object v3, p1, Lm7/w;->d:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    return v2

    :cond_38
    iget-object p0, p0, Lm7/w;->e:Ljava/lang/Throwable;

    iget-object p1, p1, Lm7/w;->e:Ljava/lang/Throwable;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    return v2

    :cond_43
    return v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lm7/w;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lm7/w;->b:Lm7/j;

    if-nez v2, :cond_13

    move v2, v1

    goto :goto_17

    :cond_13
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_17
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    if-nez v2, :cond_20

    move v2, v1

    goto :goto_24

    :cond_20
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_24
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lm7/w;->d:Ljava/lang/Object;

    if-nez v2, :cond_2d

    move v2, v1

    goto :goto_31

    :cond_2d
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_31
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lm7/w;->e:Ljava/lang/Throwable;

    if-nez p0, :cond_39

    goto :goto_3d

    :cond_39
    invoke-virtual {p0}, Ljava/lang/Throwable;->hashCode()I

    move-result v1

    :goto_3d
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "CompletedContinuation(result="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lm7/w;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/w;->b:Lm7/j;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", onCancellation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/w;->c:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", idempotentResume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lm7/w;->d:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cancelCause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm7/w;->e:Ljava/lang/Throwable;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
