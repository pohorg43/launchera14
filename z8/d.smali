.class public final Lz8/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Z


# direct methods
.method public constructor <init>(IIJLjava/util/concurrent/CopyOnWriteArrayList;ZI)V
    .registers 8

    and-int/lit8 p5, p7, 0x4

    if-eqz p5, :cond_8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :cond_8
    and-int/lit8 p5, p7, 0x8

    if-eqz p5, :cond_12

    new-instance p5, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p5}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    goto :goto_13

    :cond_12
    const/4 p5, 0x0

    :goto_13
    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_18

    const/4 p6, 0x0

    :cond_18
    const-string p7, "subStepArr"

    invoke-static {p5, p7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lz8/d;->a:I

    iput p2, p0, Lz8/d;->b:I

    iput-wide p3, p0, Lz8/d;->c:J

    iput-object p5, p0, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-boolean p6, p0, Lz8/d;->e:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lz8/d;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lz8/d;

    iget v1, p0, Lz8/d;->a:I

    iget v3, p1, Lz8/d;->a:I

    if-eq v1, v3, :cond_13

    return v2

    :cond_13
    iget v1, p0, Lz8/d;->b:I

    iget v3, p1, Lz8/d;->b:I

    if-eq v1, v3, :cond_1a

    return v2

    :cond_1a
    iget-wide v3, p0, Lz8/d;->c:J

    iget-wide v5, p1, Lz8/d;->c:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_23

    return v2

    :cond_23
    iget-object v1, p0, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p1, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2e

    return v2

    :cond_2e
    iget-boolean p0, p0, Lz8/d;->e:Z

    iget-boolean p1, p1, Lz8/d;->e:Z

    if-eq p0, p1, :cond_35

    return v2

    :cond_35
    return v0
.end method

.method public hashCode()I
    .registers 5

    iget v0, p0, Lz8/d;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lz8/d;->b:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Landroidx/window/embedding/c;->a(III)I

    move-result v0

    iget-wide v1, p0, Lz8/d;->c:J

    const/16 v3, 0x1f

    invoke-static {v1, v2, v0, v3}, Lcom/android/systemui/animation/i;->a(JII)I

    move-result v0

    iget-object v1, p0, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-boolean p0, p0, Lz8/d;->e:Z

    if-eqz p0, :cond_26

    const/4 p0, 0x1

    :cond_26
    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget v0, p0, Lz8/d;->a:I

    iget v1, p0, Lz8/d;->b:I

    iget-wide v2, p0, Lz8/d;->c:J

    iget-object v4, p0, Lz8/d;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-boolean p0, p0, Lz8/d;->e:Z

    const-string v5, "CardTrackStep(processCode="

    const-string v6, ", stepCode="

    const-string v7, ", timestamp="

    invoke-static {v5, v0, v6, v1, v7}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", subStepArr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
