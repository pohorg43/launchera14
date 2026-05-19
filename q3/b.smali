.class public final Lq3/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lp3/a;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lq3/b<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public a:Lp3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lq3/b;

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-ne p1, p0, :cond_c

    goto/16 :goto_88

    :cond_c
    iget-object v1, p0, Lq3/b;->a:Lp3/a;

    if-eqz v1, :cond_13

    iget v2, v1, Lp3/a;->e:I

    goto :goto_14

    :cond_13
    move v2, v0

    :goto_14
    iget-object v3, p1, Lq3/b;->a:Lp3/a;

    if-eqz v3, :cond_1b

    iget v4, v3, Lp3/a;->e:I

    goto :goto_1c

    :cond_1b
    move v4, v0

    :goto_1c
    if-eq v2, v4, :cond_22

    sub-int v0, v2, v4

    goto/16 :goto_88

    :cond_22
    if-eqz v1, :cond_27

    iget v1, v1, Lp3/a;->f:I

    goto :goto_28

    :cond_27
    move v1, v0

    :goto_28
    if-eqz v3, :cond_2d

    iget v2, v3, Lp3/a;->f:I

    goto :goto_2e

    :cond_2d
    move v2, v0

    :goto_2e
    if-eq v1, v2, :cond_33

    sub-int v0, v1, v2

    goto :goto_88

    :cond_33
    iget v1, p0, Lq3/b;->b:I

    iget v2, p1, Lq3/b;->b:I

    if-eq v1, v2, :cond_48

    if-eqz v1, :cond_40

    invoke-static {v1}, Lk/b;->n(I)I

    move-result p0

    goto :goto_41

    :cond_40
    move p0, v0

    :goto_41
    if-eqz v2, :cond_86

    invoke-static {v2}, Lk/b;->n(I)I

    move-result v0

    goto :goto_86

    :cond_48
    iget v1, p0, Lq3/b;->c:I

    iget v2, p1, Lq3/b;->c:I

    if-eq v1, v2, :cond_5d

    if-eqz v1, :cond_55

    invoke-static {v1}, Lk/b;->n(I)I

    move-result p0

    goto :goto_56

    :cond_55
    move p0, v0

    :goto_56
    if-eqz v2, :cond_86

    invoke-static {v2}, Lk/b;->n(I)I

    move-result v0

    goto :goto_86

    :cond_5d
    iget v1, p0, Lq3/b;->d:I

    iget v2, p1, Lq3/b;->d:I

    if-eq v1, v2, :cond_72

    if-eqz v1, :cond_6a

    invoke-static {v1}, Lk/b;->o(I)I

    move-result p0

    goto :goto_6b

    :cond_6a
    move p0, v0

    :goto_6b
    if-eqz v2, :cond_86

    invoke-static {v2}, Lk/b;->o(I)I

    move-result v0

    goto :goto_86

    :cond_72
    iget p0, p0, Lq3/b;->e:I

    iget p1, p1, Lq3/b;->e:I

    if-eq p0, p1, :cond_88

    if-eqz p0, :cond_7f

    invoke-static {p0}, Lk/b;->o(I)I

    move-result p0

    goto :goto_80

    :cond_7f
    move p0, v0

    :goto_80
    if-eqz p1, :cond_86

    invoke-static {p1}, Lk/b;->o(I)I

    move-result v0

    :cond_86
    :goto_86
    sub-int v0, p0, v0

    :cond_88
    :goto_88
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x1

    if-ne p1, p0, :cond_8

    return v1

    :cond_8
    instance-of v2, p1, Lq3/b;

    if-nez v2, :cond_d

    return v0

    :cond_d
    check-cast p1, Lq3/b;

    iget-object v2, p1, Lq3/b;->a:Lp3/a;

    iget-object v3, p0, Lq3/b;->a:Lp3/a;

    if-ne v2, v3, :cond_2e

    iget v2, p1, Lq3/b;->b:I

    iget v3, p0, Lq3/b;->b:I

    if-ne v2, v3, :cond_2e

    iget v2, p1, Lq3/b;->c:I

    iget v3, p0, Lq3/b;->c:I

    if-ne v2, v3, :cond_2e

    iget v2, p1, Lq3/b;->d:I

    iget v3, p0, Lq3/b;->d:I

    if-ne v2, v3, :cond_2e

    iget p1, p1, Lq3/b;->e:I

    iget p0, p0, Lq3/b;->e:I

    if-ne p1, p0, :cond_2e

    move v0, v1

    :cond_2e
    return v0
.end method

.method public hashCode()I
    .registers 9

    iget-object v0, p0, Lq3/b;->a:Lp3/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget v2, v0, Lp3/a;->e:I

    goto :goto_9

    :cond_8
    move v2, v1

    :goto_9
    int-to-long v2, v2

    const/16 v4, 0x32b

    int-to-long v4, v4

    mul-long/2addr v2, v4

    if-eqz v0, :cond_13

    iget v0, v0, Lp3/a;->f:I

    goto :goto_14

    :cond_13
    move v0, v1

    :goto_14
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget v0, p0, Lq3/b;->b:I

    if-eqz v0, :cond_20

    invoke-static {v0}, Lk/b;->n(I)I

    move-result v0

    goto :goto_21

    :cond_20
    move v0, v1

    :goto_21
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget v0, p0, Lq3/b;->c:I

    if-eqz v0, :cond_2d

    invoke-static {v0}, Lk/b;->n(I)I

    move-result v0

    goto :goto_2e

    :cond_2d
    move v0, v1

    :goto_2e
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget v0, p0, Lq3/b;->d:I

    if-eqz v0, :cond_3a

    invoke-static {v0}, Lk/b;->o(I)I

    move-result v0

    goto :goto_3b

    :cond_3a
    move v0, v1

    :goto_3b
    int-to-long v6, v0

    add-long/2addr v2, v6

    mul-long/2addr v2, v4

    iget p0, p0, Lq3/b;->e:I

    if-eqz p0, :cond_46

    invoke-static {p0}, Lk/b;->o(I)I

    move-result v1

    :cond_46
    int-to-long v0, v1

    add-long/2addr v2, v0

    const/16 p0, 0x20

    shr-long v0, v2, p0

    xor-long/2addr v0, v2

    long-to-int p0, v0

    return p0
.end method
